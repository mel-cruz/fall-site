-- scene 1
local Scene = {}

function Scene:load()
    self.titleImg = lg.newImage('Assets/title.png')
    self.tX = Sx/2
    self.tY = Sy/2
end

function Scene:update(dt)

end

function Scene:draw()
    lg.draw(self.titleImg,self.tX,self.tY + math.sin(Time) * 8,
    0,
    1, 1, 
    self.titleImg:getWidth()/2, self.titleImg:getHeight()/2
    )

    -- love.graphics.circle("fill",80,80,80)
end

function Scene:touchpressed(id, x, y, dx, dy, p)
    -- changeScene('scene2')
end

function Scene:keypressed(key, scancode,isrepeat)
    if key == "escape" then
        love.event.quit()
    elseif key=="space" then
        changeScene("Scene2")
    end
end

return Scene