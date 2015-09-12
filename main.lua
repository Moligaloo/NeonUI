package.path = package.path .. ";./lib/?.lua"

local neon = require 'neon-ui'
local _ = require 'underscore'

local title = neon.Label{
	y = 20,
	font = 'Lato-Regular.ttf:30',
	width = neon.engine.getWindowWidth(),
	text = 'No button clicked',
	alignment = 'center'
}

local switch = neon.Switch()
switch:moveToWindowCenter()

local layout = neon.layout.grid {
	controls = _.map(
		neon.Control.availableColors(), 
		function(color_name)
			return neon.Button {
				color = color_name,
				text = color_name:gsub('^.', string.upper),
				on_click = function(btn)
					title.text = btn.text .. " button was clicked"
				end
			}
		end),
	column = 5,
	gap = 10,
	start_y = 80
}

_.each(
	layout.controls, 
	function(control)
		control:move((neon.engine.getWindowWidth()-layout.width)/2, 0)
	end
)

neon.overrideHandlers()

