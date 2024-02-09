local splash = {}

local const = require("src/const")

local screenW, screenH
local davelogo = {}
local openCurtain, closeCurtain, curtainSpeed

local function init()

end


local function load()

    screenW = const.SCREEN.WIDTH
    screenH = const.SCREEN.HEIGHT

    davelogo.img = love.graphics.newImage("resources/img/daveLogo.png")
    davelogo.width = davelogo.img:getWidth()
    davelogo.height = davelogo.img:getHeight()
    davelogo.x = (screenW - davelogo.width) * 0.5
    davelogo.y = (screenH - davelogo.height) * 0.5

    openCurtain = screenW * 0.4
    closeCurtain = - (screenW * 0.9)
    curtainSpeed = 600

end


local function unload()

    screenW, screenH = nil, nil
    davelogo = nil
    openCurtain = nil
    closeCurtain = nil

end


local function keypressed(key)

    if key == "space" then
        ChangeAppState(const.APPSTATES.MAIN_MENU)
    end

end


local function update(dt)

    openCurtain = math.min(openCurtain + dt * curtainSpeed, screenW)
    closeCurtain = math.min(closeCurtain + dt * curtainSpeed, screenW)

    if closeCurtain >= screenW then
        ChangeAppState(const.APPSTATES.MAIN_MENU)
    end
end


local function draw()

    love.graphics.setScissor(closeCurtain, 0, openCurtain, screenH)
    love.graphics.draw(davelogo.img, davelogo.x, davelogo.y)
    love.graphics.setScissor()

end

splash = {
    init = init,
    load = load,
    unload = unload,
    keypressed = keypressed,
    update = update,
    draw = draw
}

return splash
