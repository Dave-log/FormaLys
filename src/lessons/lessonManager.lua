local lessonManager = {}

lessonManager.lessonList = {}


local function new(pType)

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