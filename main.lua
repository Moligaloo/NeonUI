package.path = package.path .. ";./lib/?.lua"

local neon = require 'neon-ui'

for i, color_name in ipairs(neon.Control.availableColors()) do
	local row = math.floor((i-1) / 5)
	local column = (i-1) % 5

	neon.Button{
		color = color_name,
		text = color_name:gsub('^.', string.upper),
		x = 100 + column * 110,
		y = 100 + row * (10 + 30),
		width = 100,
	} 
end

neon.overrideHandlers()

