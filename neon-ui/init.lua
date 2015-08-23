local engine = require 'neon-ui.engine'
local Control = require 'neon-ui.control'

local neon = {
	Control = Control,

	engine = engine,
	overrideHandlers = function(event_names)
		engine.overrideHandlers(Control.handlers, event_names)
	end,
}

local class_names = {
	'Button',
	'Label',
	'Icon'
}

for _, class_name in ipairs(class_names) do
	neon[class_name] = require('neon-ui.' .. class_name:lower())
end

return neon
