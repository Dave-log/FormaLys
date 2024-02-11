local lessonFactory = {}

local const = require "src/const"


local function newBlankTextLesson(...)

end


local function newCaption(px, py, fieldX, fieldY, fieldAnswer)


end


local function newCaptionsLesson(...)

    -- image
    -- nbFields
    -- captions = {}
    -- caption = {pointPosition, fieldPosition, fieldAnswer, fieldInput}
    -- validable
    -- result
    -- trophy

end


local function newMcqLesson(...)

end


local function newCalculationsLesson(...)

end


local function newLesson(pType, ...)

    if pType == const.LESSONTYPES.BLANK_TEXT then
        newBlankTextLesson(...)
    elseif pType == const.LESSONTYPES.CAPTIONS then
        newCaptionsLesson(...)
    elseif pType == const.LESSONTYPES.MCQ then
        newMcqLesson(...)
    elseif pType == const.LESSONTYPES.CALCULATIONS then
        newCalculationsLesson(...)
    end
end


return lessonFactory