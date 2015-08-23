local Label = require 'neon-ui.label'
local theme_manager = require 'neon-ui.theme-manager'
local _ = require 'underscore'

local Icon = Label:subclass 'Icon'

function Icon:initialize(t)
	Label.initialize(self, t)
end

function Icon:__newindex(key, value)
	rawset(self, key, value)
	if key == 'name' then
		self.text = theme_manager.getStyle('Icons', value)
	end
end

function Icon.availableIcons()
	return _.keys(theme_manager.getTable('Icons'))
end

return Icon