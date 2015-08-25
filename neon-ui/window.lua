local Control = require 'neon-ui.control'
local engine = require 'neon-ui.engine'

local Window = Control:subclass 'Window'

function Window:initialize(t)
	Control.initialize(self, t)
	self:setDefaults{
		title = '',
		modal = true,
		titleBarHeight = self:getStyle('titleBarHeight')
	}

	if t.x == nil and t.y == nil then
		self:moveToWindowCenter()
	end
end

function Window:draw()
	self:drawBackground()

	self:setFontAndColor()
	local titleHeight = engine.getFontHeight(self.font)
	engine.printf(self.title, self.x, self.y + (self.titleBarHeight - titleHeight)/2, self.width)
end

return Window
