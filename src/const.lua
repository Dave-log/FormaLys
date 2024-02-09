local const = {}

const.SCREEN = {
    WIDTH = love.graphics.getWidth(),
    HEIGHT = love.graphics.getHeight()
}

const.APPSTATES = {
    SPLASH = "splash",
    MAIN_MENU = "mainMenu",
    LESSON_MENU = "lessonMenu",
    EDITOR = "editor"
}

return const
