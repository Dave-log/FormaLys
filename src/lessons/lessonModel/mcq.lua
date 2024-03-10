local mcq = {}

local const = require("src/const")
local gui = require("src/gui")


local title, instructions, nbQuestions, questions


local function new(pTitle, pInstructions, pQuestions)

    title = pTitle
    instructions = pInstructions
    nbQuestions = #pQuestions
    questions = pQuestions

end


local function update(dt)


end


local function draw()

    love.graphics.printf(title, 0, const.SCREEN.HEIGHT * 0.1, const.SCREEN.WIDTH)

end


mcq = {
    new = new,
    update = update,
    draw = draw
}

return mcq