local lessonFactory = {}

local const = require "src/const"
local lessonModel = {
    mcq = require "src/lessons/lessonModel/mcq",
    caption = require "src/lessons/lessonModel/caption",
    blankText = require "src/lessons/lessonModel/blankText",
    calculations = require "src/lessons/lessonModel/calculations"
}


local function newBlankTextLesson(...)

    lessonModel.blankText.new()

end


local function newCaptionLesson(...)

    return lessonModel.caption.new()

end


local function newMcqLesson(...)

    local args = {...}
    local title, instructions, questions = args[1], args[2], args[3]

    return lessonModel.mcq.new(title, instructions, questions)

end


local function newCalculationsLesson(...)

    lessonModel.calculations.new()

end


local function newLesson(pType, ...)

    if pType == const.LESSONTYPES.BLANK_TEXT then
        return newBlankTextLesson(...)
    elseif pType == const.LESSONTYPES.CAPTIONS then
        return newCaptionLesson(...)
    elseif pType == const.LESSONTYPES.MCQ then
        return newMcqLesson(...)
    elseif pType == const.LESSONTYPES.CALCULATIONS then
        return newCalculationsLesson(...)
    end

end


lessonFactory.newLesson = newLesson

return lessonFactory