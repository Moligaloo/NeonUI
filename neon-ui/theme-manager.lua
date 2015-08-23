local theme = require 'neon-ui.theme'

local function getStyle(name, field, state)	
	local config = theme[name]
	if state then
		local subconfig = config[state]
		return subconfig[field] and subconfig[field] or getStyle(name, field)
	end

	if config[field] then
		return config[field]
	end

	if config.super then
		return getStyle(config.super, field, state)
	end
end

return {
	getStyle = getStyle
}