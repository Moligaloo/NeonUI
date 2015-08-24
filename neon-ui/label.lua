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
	engine.setFont(self.font)
	engine.setColor(self:colorComponents(self.fontColor))

	engine.printf(self.text, self.x, self.y, self.width, self.alignment)
end

function Label:preferredSize()
	return engine.getTextSize(self.text, self.font)
end

return Label
