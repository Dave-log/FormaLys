local const = require("src/const")

local APPSTATES = {
    [const.APPSTATES.SPLASH] = require "src/splash/splash",
    [const.APPSTATES.MAIN_MENU] = require "src/menu/mainMenu",
    [const.APPSTATES.LESSON_MENU] = require "src/menu/lessonMenu",
    [const.APPSTATES.EDITOR] = require "src/editor/editor"
}

function ChangeAppState(pAppState)

    _oldAppState = _currentAppState
    _currentAppState = APPSTATES[pAppState]

    if _currentAppState.init then
        _currentAppState.init();
    end

    if _currentAppState.load then
        _currentAppState.load();
    end

    if _oldAppState and _currentAppState.unload then
        _oldAppState.unload();
    end

end
