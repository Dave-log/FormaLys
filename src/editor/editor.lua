local editor = {}

local const = require("src/const")


local function init()

end


local function load()

end


local function unload()

end


local function keypressed(key)

    if key == "escape" then
        ChangeAppState(const.APPSTATES.MAIN_MENU)
    end

end


local function update(dt)

end


local function draw()

    love.graphics.printf("EDITOR", 0, 300, const.SCREEN.WIDTH, "center")

end

editor = {
    init = init,
    load = load,
    unload = unload,
    keypressed = keypressed,
    update = update,
    draw = draw
}

return editor
