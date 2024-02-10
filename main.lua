love.graphics.setDefaultFilter("nearest", "nearest")

require "src/appState"

local const = require "src/const"


function love.load()

    ChangeAppState(const.APPSTATES.SPLASH)

end


function love.textedited(text, start, length)

    if _currentAppState.textedited then
        _currentAppState.textedited(text, start, length)
    end

end


function love.textinput(t)

    if _currentAppState.textinput then
        _currentAppState.textinput(t)
    end

end


function love.keypressed(key)

    if _currentAppState.keypressed then
        _currentAppState.keypressed(key)
    end

end


function love.update(dt)

    if _currentAppState.update then
        _currentAppState.update(dt)
    end

end


function love.draw()

    if _currentAppState.draw then
        _currentAppState.draw()
    end

end
