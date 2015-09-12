local Control = require 'neon-ui.control'
local Icon = require 'neon-ui.icon'
local Switch = Control:subclass 'Switch'

function Switch:initialize(t)
	Control.initialize(self, t)
	self:setDefaults{
		on = false
	}

	self.icon = Icon()
	self.icon:setName('toggle-off')
	self:addSubview(self.icon)
	self.icon:sizeToFit()
	self:resize(self.icon:size())
	self.on_click = function(switch)
		switch:toggle()
	end
end

function Switch:toggle()
	self.on = not self.on
	self.icon:setName(self.on and 'toggle-on' or 'toggle-off')

	if self.value_changed then
		self:value_changed()
	end
end

return Switch
