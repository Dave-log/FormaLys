local lessonMenu = {}

local const = require("src/const")
local gui = require("src/gui").new()

local screenW, screenH
local fontLessons, basicOptions
local lessonsLayout = {}


local function init()

end


local function load()

    screenW = const.SCREEN.WIDTH
    screenH = const.SCREEN.HEIGHT

    fontLessons = love.graphics.newFont(16)

    lessonsLayout.y = screenH * 0.2
    lessonsLayout.cellW = screenW * 0.25
    lessonsLayout.cellH = screenH * 0.04
    lessonsLayout.pady = screenH * 0.02
    lessonsLayout.padx = (screenW - lessonsLayout.cellW * 3) * 0.25 -- 1/4 because with 3 subjects, we have 4 gaps between layouts
    lessonsLayout.x = {}
    for n = 1, 3 do
        lessonsLayout.x[n] = lessonsLayout.padx * n + lessonsLayout.cellW * (n-1)
    end

end


local function unload()

    screenW, screenH = nil, nil
    fontLessons = nil
    gui:enterFrame()

end


local function textedited(text, start, length)

    gui:textedited(text, start, length)

end


local function textinput(t)

    gui:textinput(t)

end


local function keypressed(key)

    gui:keypressed(key)

    if key == "escape" then
        ChangeAppState(const.APPSTATES.MAIN_MENU)
    end

end

local text = {"bla", "blabla", "blablabla", "blablablabla"}

local function updateGui()

    gui.layout:reset(lessonsLayout.x[1], lessonsLayout.y, lessonsLayout.padx, lessonsLayout.pady)
    gui:Label(const.SUBJECTS.LANGUAGE, {font = fontLessons, align = "center"}, gui.layout:row(lessonsLayout.cellW, lessonsLayout.cellH))
    if gui:Button("Human Body - Head", {font = fontLessons, align = "center"}, gui.layout:row()).hit then
        print("LEZGO")
    end
    gui:Button("Human Body - Body", {font = fontLessons, align = "center"}, gui.layout:row())

    gui.layout:reset(lessonsLayout.x[2], lessonsLayout.y, lessonsLayout.padx, lessonsLayout.pady)
    gui:Label(const.SUBJECTS.MATHS, {font = fontLessons, align = "center"}, gui.layout:row(lessonsLayout.cellW, lessonsLayout.cellH))
    gui:Button("Calculation", {font = fontLessons, align = "center"}, gui.layout:row())

    gui.layout:reset(lessonsLayout.x[3], lessonsLayout.y, lessonsLayout.padx, lessonsLayout.pady)
    gui:Label(const.SUBJECTS.OFFICE_AUTO, {font = fontLessons, align = "center"}, gui.layout:row(lessonsLayout.cellW, lessonsLayout.cellH))
    gui:Button("Which software ?", {font = fontLessons, align = "center"}, gui.layout:row())
    for i = 1 , 4 do
        gui:Button(text[i], {font = fontLessons, align = "center"}, gui.layout:row())
    end

end


local function update(dt)

    updateGui()

end


local function draw()

    love.graphics.printf("Select a lesson below", fontLessons, 0, screenH * 0.08, const.SCREEN.WIDTH, "center")

    gui:draw()

end

lessonMenu = {
    init = init,
    load = load,
    unload = unload,
    textedited = textedited,
    textinput = textinput,
    keypressed = keypressed,
    update = update,
    draw = draw
}

return lessonMenu

