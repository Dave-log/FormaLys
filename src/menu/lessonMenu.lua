local lessonMenu = {}

local const = require("src/const")
local gui = require("src/gui").new()

local screenW, screenH
local fontLessons

local languageLesson

local function init()

end


local function load()

    screenW = const.SCREEN.WIDTH
    screenH = const.SCREEN.HEIGHT

    fontLessons = love.graphics.newFont(16)

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


local function updateGui()

    gui.layout:reset()

end


local function update(dt)

    updateGui()

end


local function draw()

    love.graphics.printf("Select a lesson below", fontLessons, 0, screenH * 0.05, const.SCREEN.WIDTH, "center")

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

