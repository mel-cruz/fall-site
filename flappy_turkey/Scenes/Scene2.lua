-- scene 2
local Scene = {}

function Scene:load()
    self.titleImg = lg.newImage('Assets/title.png')
    self.turkeySprite = lg.newImage('Assets/turkey.png')
    self.tX = Sx/2
    self.tY = Sy/2
end

function Scene:update(dt)

end

function Scene:draw()
    lg.draw(self.turkeySprite,self.tX,self.tY,
    0,
    1, 1, 
    self.turkeySprite:getWidth()/2, self.turkeySprite:getHeight()/2
    )

end

function Scene:touchpressed(id, x, y, dx, dy, p)
    -- changeScene('scene2')
end

function Scene:keypressed(key, scancode,isrepeat)
    if key == "escape" then
        love.event.quit()
    elseif key=="space" then
        changeScene("Scene1")
    end
end

return Scene