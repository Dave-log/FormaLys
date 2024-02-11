local const = {}

const.SCREEN = {
    WIDTH = love.graphics.getWidth(),
    HEIGHT = love.graphics.getHeight()
}

const.APPSTATES = {
    SPLASH = "splash",
    MAIN_MENU = "mainMenu",
    LESSON_MENU = "lessonMenu",
    LESSONS = "lessonManager",
    EDITOR = "editor"
}

const.LESSONTYPES = {
    BLANK_TEXT = "blank_text",
    CAPTIONS = "captions",
    MCQ = "mcq",
    CALCULATIONS = "calculations"
}

const.LANG = {
    EN = "English",
    FR = "Français"
}

const.SUBJECTS = {
    LANGUAGE = "Language",
    MATHS = "Mathematics",
    OFFICE_AUTO = "Office Automation"
}

return const
