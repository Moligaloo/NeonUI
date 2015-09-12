local Control = require 'neon-ui.control'
local Icon = require 'neon-ui.icon'
local Switch = Control:subclass 'Switch'

function Switch:initialize(t)
	Control.initialize(self, t)
	self:setDefaults{
		on = false
	}

	self.icon = Icon {name = 'toggle-off'}
	self:addSubview(self.icon)
	self.icon:sizeToFit()
	self:resize(self.icon:size())
	self.on_click = function(switch)
		switch:toggle()
	end
end

Switch:property(
	'on',
	'_on',
	function(self, value)
		if self._on ~= value then
			self._on = value

			if self.icon then
				self.icon.name = value and 'toggle-on' or 'toggle-off'
			end

			if self.value_changed then
				self:value_changed()
			end
		end
	end
)

function Switch:toggle()
	self.on = not self.on
end

return Switch
