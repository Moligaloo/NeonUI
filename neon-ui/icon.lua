local Label = require 'neon-ui.label'
local theme_manager = require 'neon-ui.theme-manager'
local _ = require 'underscore'

local Icon = Label:subclass 'Icon'

function Icon:initialize(t)
	Label.initialize(self, t)
end

function Icon:setName(name)
	self.text = theme_manager.getStyle('Icons', name)
end

function Icon.availableIcons()
	return _.keys(theme_manager.getTable('Icons'))
end

return Icon