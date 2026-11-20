require 'Scenes/Turkey'
require 'Scenes/Button'

local Scene = {}

function Scene:load()
	self.bgImg = lg.newImage('Assets/turkey_bg.png')
	self.fgImg = lg.newImage('Assets/turkey_fg.png')

	self.fgImg:setWrap('repeat')

	self.fgQuad = lg.newQuad(
		0, 0,
		self.fgImg:getWidth()*2,
		self.fgImg:getHeight(),
		self.fgImg:getWidth(),
		self.fgImg:getHeight()
		)
	self.fgX = 0
	self.speed = 30

	self.turkey = Turkey:new()
end

function Scene:update(dt)
	if self.turkey.alive then
		self.fgX = self.fgX - self.speed * dt
	end

	if self.fgX < -self.fgImg:getWidth() then
		self.fgX = 0
	end

	self.turkey:update(dt)
end

function Scene:draw()
	lg.draw(self.bgImg)
	lg.draw(self.fgImg, self.fgQuad, self.fgX)

	self.turkey:draw()
end

function Scene:keypressed(key, scancode, isrepeat)
	if key=="escape" then
		changeScene('Scene1')
	end
end

function Scene:touchpressed(id, x, y, dx, dy, p)
	self.turkey:jump()
end

return Scene