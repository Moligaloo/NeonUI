local class = require 'middleclass'
local theme_manager = require 'neon-ui.theme-manager'
local engine = require 'neon-ui.engine'
local _ = require 'underscore'

local Control = class 'Control'

local controls = {}
local focusedControl = nil
local tweenSet = {}

function Control:initialize(t)
	self:set(t)
	self:setDefaults{
		x = 0,
		y = 0,
		width = self:getStyle('width'),
		height = self:getStyle('height'),
		visible = true,
		enabled = true,
		font = engine.getFont(self:getStyle('font'))
	}

	self.subviews = {}

	self:setStyleForState()

	table.insert(controls, self)
end

function Control:getStyle(field, state)
	return theme_manager.getStyle(self.class.name, field, state)
end

function Control:preferredSize()
	local width = self:getStyle('width')
	local height = self:getStyle('height')
	if width and height then
		return width, height
	else
		return 0, 0
	end
end

function Control:move(dx, dy)
	self.x, self.y = self.x + dx, self.y + dy

	for _, subview in ipairs(self.subviews) do
		subview:move(dx, dy)
	end
end

function Control:moveTo(x, y)
	self:move(x - self.x, y - self.y)
end

function Control:moveToWindowCenter()
	self:moveTo(
		(engine.getWindowWidth() - self.width)/2,
		(engine.getWindowHeight() - self.height)/2
	)
end

function Control:sizeToFit()
	self.width, self.height = self:preferredSize()
end

function Control:setDefaults(t)
	for k,v in pairs(t) do
		if self[k] == nil then
			self[k] = v
		end
	end
end

function Control:set(t)
	if t then
		_.extend(self, t)
	end
end

function Control:colorComponents(color)
	local color_type = type(color)
	if color_type == 'string' then
		return self:colorComponentsFromString(color)
	elseif color_type == 'function' then
		return self:colorComponents(color(self))
	elseif color_type == 'table' then
		return unpack(color)
	else
		error('Color must be one of type: string, function or table')
	end
end

function Control:colorComponentsFromString(color)
	if color:match '^#' then
		local red = tonumber(color:sub(2, 3), 16)
		local green = tonumber(color:sub(4, 5), 16)
		local blue = tonumber(color:sub(6, 7), 16)
		local alpha = #color > 7 and tonumber(color:sub(8, 9), 16) or 0xFF
		return red, green, blue, alpha
	elseif color:match '^%.' then
		local property = color:sub(2)
		local value = self[property]
		if value == nil then
			error("No property named " .. property)
		end
		return self:colorComponents(self[color:sub(2)])
	else
		color = theme_manager.getStyle('Colors', color)
		if color == nil then
			error("No color named " .. color)
		end
		return self:colorComponents(color)
	end
end

function Control:setStyleForState(state)
	for _, field in ipairs {'backgroundColor', 'borderColor', 'borderWidth', 'borderRadius', 'fontColor'} do
		self[field] = self:getStyle(field, state)
	end
end

function Control:setFontAndColor(font, fontColor)
	font = font or self.font
	fontColor = fontColor or self.fontColor
	engine.setFont(font)
	engine.setColor(self:colorComponents(fontColor))
end

function Control:draw()
	if self.backgroundColor then
		engine.setColor(self:colorComponents(self.backgroundColor))
		engine.rectangle('fill', self.x, self.y, self.width, self.height, self.borderRadius)
	end

	if self.borderColor and self.borderWidth > 0 then
		engine.setColor(self:colorComponents(self.borderColor))
		engine.setLineWidth(self.borderWidth)
		engine.rectangle('line', self.x, self.y, self.width, self.height, self.borderRadius)
	end
end

function Control:contains(x, y)
	return x >= self.x and y >= self.y and x < (self.x + self.width) and y < (self.y + self.height)
end

function Control:update(dt)
end

function Control:onMouseDown(x, y, button)
	if button == 'l' then
		if self.on_click then
			self:on_click()
		end
	elseif button == 'r' then
		if self.context_menu then
			self.context_menu:showFrom(self)
		end
	end
end

function Control:onMouseUp(x, y, button)
end

function Control:onMouseMoved(x, y, dx, dy)
	local new_state = self:contains(x, y) and 'hover' or nil
	if self.state ~= new_state then
		self.state = new_state
		self:setStyleForState(self.state)
	end
end

function Control:isFocused()
	return focusedControl == self
end

function Control:setFocused()
	focusedControl = self
end

function Control:remove()
	for i=1, #controls do
		if controls[i] == self then
			table.remove(controls, i)
			break
		end
	end
end

function Control:bringToFront()
	self:remove()
	table.insert(controls, self)
end

function Control:sendToBack()
	self:remove()
	table.insert(controls, 1, self)
end

-- static methods

function Control.availableColors()
	return {
		'red',
		'orange',
		'yellow',
		'olive',
		'green',
		'teal',
		'blue',
		'violet',
		'purple',
		'pink',
		'brown'
	}
end

function Control.rootControls()
	return controls
end

function Control.applyToAll(method_name, ...)
	for _, control in ipairs(controls) do
		control[method_name](control, ...)
	end
end

function Control.controlUnderMouse(x, y)
	for i=#controls, 1, -1 do
		local control = controls[i]
		if control.enabled and control:contains(x, y) then
			return control
		end
	end
end

Control.handlers = {
	update = function(dt)
		Control.applyToAll('update', dt)
	end,

	draw = function()
		for _, control in ipairs(controls) do
			if control.visible then
				control:draw()
			end
		end
	end,

	mousepressed = function(x, y, button)
		local control = Control.controlUnderMouse(x, y)
		if control then
			control:setFocused()
			control:onMouseDown(x, y, button)
		else
			focusedControl = nil
		end
	end,

	mousereleased = function(x, y, button)
		if focusedControl then
			focusedControl:onMouseUp()
		end
	end,

	mousemoved = function(x, y, dx, dy)
		for _, control in ipairs(controls) do
			control:onMouseMoved(x, y, dx, dy)
		end
	end
}	


return Control
