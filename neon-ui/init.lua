local engine = require 'neon-ui.engine'
local Control = require 'neon-ui.control'

return {
	Control = Control,
	Button = require 'neon-ui.button',

	overrideHandlers = function(event_names)
		engine.overrideHandlers(Control.handlers, event_names)
	end,
}