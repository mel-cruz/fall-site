-- Scene1 --

local Scene = {}

function Scene:load()
	self.titleImg = lg.newImage('Assets/Title.png')
    self.bgImg = lg.newImage('Assets/turkey_bg.png')

	self.tX = Sx/2
	self.tY = Sy/2
end

function Scene:update(dt)
end

function Scene:draw()
	lg.draw(self.bgImg)
	lg.draw(self.titleImg,
		self.tX, self.tY + math.sin(Time) * 8,
		0,
		1, 1,
		self.titleImg:getWidth()/2, self.titleImg:getHeight()/2
		)
	lg.printf("Touch to Start", 0, self.tY + self.titleImg:getHeight()/2 + 20 + math.sin(Time) * 8, Sx, "center")end

function Scene:touchpressed(id, x, y, dx, dy, p)
	changeScene('scene2')
end

function Scene:keypressed(key, scancode, isrepeat)
	if key=="escape" then
		love.event.quit()
	end
end

return Scene