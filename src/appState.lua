local appState = {}

local const = require("src/const")

local APPSTATES = {
    [const.APPSTATES.SPLASH] = require "src/splash/splash",
    [const.APPSTATES.MAIN_MENU] = require "src/menu/mainMenu",
    [const.APPSTATES.LESSON_MENU] = require "src/menu/lessonMenu",
    [const.APPSTATES.LESSONS] = require "src/lessons/lessonManager",
    [const.APPSTATES.EDITOR] = require "src/editor/editor"
}

appState.oldState = nil
appState.currentState = nil


function ChangeAppState(pAppState)

    appState.oldState = appState.currentState
    appState.currentState = APPSTATES[pAppState]

    if appState.currentState.init then
        appState.currentState.init()
    end

    if appState.currentState.load then
        appState.currentState.load()
    end

    if appState.oldState and appState.currentState.unload then
        appState.oldState.unload()
    end

end


return appState
