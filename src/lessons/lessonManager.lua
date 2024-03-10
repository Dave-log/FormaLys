local lessonManager = {}

local const = require "src/const"
local lessonFactory = require "src/lessons/lessonFactory"

lessonManager.lessonList = {
        [const.LESSONTYPES.BLANK_TEXT] = {},
        [const.LESSONTYPES.CALCULATIONS] = {},
        [const.LESSONTYPES.CAPTIONS] = {},
        [const.LESSONTYPES.MCQ] = {}
}


local function new(pType)

        table.insert(lessonManager.lessonList[pType], lessonFactory.newLesson(pType))

end


local function load(pType)

end


local function unload()

end


local function textedited(text, start, length)

end


local function textinput(t)

end


local function keypressed(key)

end


local function update(dt)

end


local function draw()

end

--[[
TYPES : - texte à trous
        - ajout de légende
        - QCM
        - Calculs

DATAS : - images
        - textes
        - correction

DESIGN : - GUI


MANAGER : - load
          - unload
          - textedited
          - textinput
          - keypressed
          - update
          - draw
]]

lessonManager = {
        new = new,
        load = load,
        unload = unload,
        textedited = textedited,
        textinput = textinput,
        keypressed = keypressed,
        update = update,
        draw = draw
}

return lessonManager