local Control = require 'neon-ui.control'
local engine = require 'neon-ui.engine'

local Button = Control:subclass 'Button'

function Button:initialize(t)
	Control.initialize(self, t)
	
	self:setDefaults{
		text = ''
	}
end

function Button:draw()
	self:drawBackground()
	self:setFontAndColor()
	local textHeight = engine.getFontHeight(self.font)
	engine.printf(self.text, self.x, self.y + (self.height-textHeight)/2, self.width, 'center')
end

return Button