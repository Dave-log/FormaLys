local menu = {}

local const = require("src/const")
local gui = require("src/gui").new()

local screenW, screenH
local buttonsLayout = {}
local formalysLogo = {}


local function init()

end


local function load()

    screenW, screenH = const.SCREEN.WIDTH, const.SCREEN.HEIGHT

    buttonsLayout = {
        x = 0,
        y = screenH * 0.7,
        padx = screenW * 0.05,
        pady = screenH * 0.02,
        w = screenW * 0.2,
        h = screenH * 0.1,
        numButtons = 2,
        font = love.graphics.newFont(16)
    }

    buttonsLayout.x = (screenW - (buttonsLayout.w * buttonsLayout.numButtons + buttonsLayout.padx * (buttonsLayout.numButtons - 1))) * 0.5

    formalysLogo = {
        img = love.graphics.newImage("resources/img/formalys_purpleYellowBanner.png"),
        x = 0,
        y = screenH * 0.1
    }


end


local function unload()

    screenW, screenH = nil, nil
    buttonsLayout = {}
    formalysLogo = nil
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

end


local function updateGui()

    -- Buttons Layout
    gui.layout:reset(buttonsLayout.x, buttonsLayout.y, buttonsLayout.padx, buttonsLayout.pady)
    local buttonStartLesson = gui:Button("Start a lesson", {font = buttonsLayout.font}, gui.layout:row(buttonsLayout.w, buttonsLayout.h))
    local buttonCreateLesson = gui:Button("Create a lesson", {font = buttonsLayout.font}, gui.layout:col())

    -- Buttons Logic
    if buttonStartLesson.hit then
        ChangeAppState(const.APPSTATES.LESSON_MENU)
    elseif buttonCreateLesson.hit then
        ChangeAppState(const.APPSTATES.EDITOR)
    end

end


local function update(dt)

    updateGui()

end


local function draw()

    love.graphics.draw(formalysLogo.img, formalysLogo.x, formalysLogo.y)

    gui:draw()

end


menu = {
    init = init,
    load = load,
    unload = unload,
    textedited = textedited,
    textinput = textinput,
    keypressed = keypressed,
    update = update,
    draw = draw
}


return menu
