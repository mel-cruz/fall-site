if arg[2] == "debug" then
    require("lldebugger").start()
end

-- main code:

function love.load()
    lg = love.graphics
    Time = 0
    Sx = lg.getWidth()
    Sy = lg.getHeight()
    
    love.graphics.setDefaultFilter('nearest')
    changeScene("scene1")
    Turkey = love.graphics.newImage("Assets/turkey.png")
end

function love.update(dt)
    Time = Time + dt
    if Scene.update then Scene:update(dt) end
end

function love.draw()
    if Scene.draw then Scene:draw() end
    -- love.graphics.draw(Turkey, 200, 300, 0, 2, 2) -- test 
end

function love.keypressed(key, scancode, isrepeat)
    if Scene.keypressed then Scene:keypressed(key, scancode, isrepeat) end
end

function changeScene(nextScene)
    Scene = require("Scenes/"..nextScene)
    if Scene.load then Scene:load() end
    -- return Scene
end

-- -- bottom, debug:
-- local love_errorhandler = love.errorhandler

-- function love.errorhandler(msg)
--     if lldebugger then
--         error(msg, 2)
--     else
--         return love_errorhandler(msg)
--     end
-- end