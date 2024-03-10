local blankText = {}

local const = require("src/const")
local gui = require("src/gui")


local title


local function new(pTitle)

    title = pTitle

end


local function update(dt)


end


local function draw()

    love.graphics.printf(title, 0, const.SCREEN.HEIGHT * 0.1, const.SCREEN.WIDTH)

end


blankText = {
    new = new,
    update = update,
    draw = draw
}

return blankText