local Label = require 'neon-ui.label'
local theme_manager = require 'neon-ui.theme-manager'
local _ = require 'underscore'

local Icon = Label:subclass 'Icon'

function Icon:initialize(t)
	Label.initialize(self, t)
end

function Icon.availableIcons()
	return _.keys(theme_manager.getTable('Icons'))
end

Icon:property(
	'name', 
	'_name', 
	function(self, new_name)
		self._name = new_name
		self.text = theme_manager.getStyle('Icons', new_name)
	end
)

return Icon