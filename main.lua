love.graphics.setDefaultFilter("nearest", "nearest")

local appState = require "src/appState"

local const = require "src/const"


function love.load()

    ChangeAppState(const.APPSTATES.SPLASH)

end


function love.textedited(text, start, length)

    if appState.currentState.textedited then
        appState.currentState.textedited(text, start, length)
    end

end


function love.textinput(t)

    if appState.currentState.textinput then
        appState.currentState.textinput(t)
    end

end


function love.keypressed(key)

    if appState.currentState.keypressed then
        appState.currentState.keypressed(key)
    end

end


function love.update(dt)

    if appState.currentState.update then
        appState.currentState.update(dt)
    end

end


function love.draw()

    if appState.currentState.draw then
        appState.currentState.draw()
    end

end
