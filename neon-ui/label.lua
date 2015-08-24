local Control = require 'neon-ui.control'
local engine = require 'neon-ui.engine'
local Label = Control:subclass 'Label'

function Label:initialize(t)
	Control.initialize(self, t)
	self:setDefaults{
		text = '',
		alignment = 'left'
	}
end

function Label:draw()
	self:setFontAndColor()
	engine.printf(self.text, self.x, self.y, self.width, self.alignment)
end

function Label:preferredSize()
	return engine.getTextSize(self.text, self.font)
end

return Label
