if arg[2] == "debug" then
    require("lldebugger").start()
end

-- main code:
function love.draw()
    love.graphics.print("Hello World!", 100, 100)
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