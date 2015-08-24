local toPixels = love.window.toPixels
local fromPixels = love.window.fromPixels

local fonts = {}

local function newFont(font_file, font_size)
	return love.graphics.newFont(font_file, toPixels(font_size))
end

local function getFont(font_desc)
	local font = fonts[font_desc]
	if font == nil then
		local comma = font_desc:find ':'
		local font_file = font_desc:sub(1, comma-1)
		local font_size = tonumber(font_desc:sub(comma+1))
		font = newFont("neon-ui/fonts/" .. font_file, font_size)
		fonts[font_desc] = font
	end

	return font
end

local function getFontObject(font)
	return type(font) == 'string' and getFont(font) or font
end

local function getFontHeight(font)
	font = getFontObject(font)
	return fromPixels(font:getHeight())
end

local function getTextSize(text, font, width)
	font = getFontObject(font)
	local height
	if width then
		local _, lines = font:getWrap(text, toPixels(width))
		height = lines * fromPixels(font:getLineHeight())
	else
		width = fromPixels(font:getWidth(text))
		height = getFontHeight(font)
	end
	return width, height
end

local function setFont(font)
	love.graphics.setFont(getFontObject(font))
end

local function roundrect(mode, x, y, width, height, xround, yround)
	yround = yround or xround

	local points = {}
	local precision = 10
	local tI, hP = table.insert, .5*math.pi
	if xround > width*.5 then xround = width*.5 end
	if yround > height*.5 then yround = height*.5 end
	local X1, Y1, X2, Y2 = x + xround, y + yround, x + width - xround, y + height - yround
	local sin, cos = math.sin, math.cos
	for i = 0, precision do
		local a = (i/precision-1)*hP
		tI(points, X2 + xround*cos(a))
		tI(points, Y1 + yround*sin(a))
	end
	for i = 0, precision do
		local a = (i/precision)*hP
		tI(points, X2 + xround*cos(a))
		tI(points, Y2 + yround*sin(a))
	end
	for i = 0, precision do
		local a = (i/precision+1)*hP
		tI(points, X1 + xround*cos(a))
		tI(points, Y2 + yround*sin(a))
	end
	for i = 0, precision do
		local a = (i/precision+2)*hP
		tI(points, X1 + xround*cos(a))
		tI(points, Y1 + yround*sin(a))
	end
	love.graphics.polygon(mode, unpack(points))
end

local function rectangle(mode, x, y, width, height, borderRadius)
	x, y, width, height = toPixels(x), toPixels(y), toPixels(width), toPixels(height)
	if borderRadius and borderRadius > 0 then
		borderRadius = toPixels(borderRadius)
		roundrect(mode, x, y, width, height, borderRadius, borderRadius)
	else
		love.graphics.rectangle(mode, x, y, width, height)
	end
end

local function printf(text, x, y, width, alignment)
	x = toPixels(x)
	y = toPixels(y)
	width = toPixels(width)
	love.graphics.printf(text, x, y, width, alignment)
end

return {
	overrideHandlers = function(handlers, event_names)
		event_names = event_names or {'update', 'draw', 'mousepressed', 'mousereleased', 'mousemoved'}
		for _, event_name in ipairs(event_names) do
			if event_name == 'update' or event_name == 'draw' then
				love[event_name] = handlers[event_name]
			elseif event_name == 'mousepressed' or event_name == 'mousereleased' then
				love[event_name] = function(x, y, button)
					handlers[event_name](fromPixels(x), fromPixels(y), button)
				end
			elseif event_name == 'mousemoved' then
				love.mousemoved = function(x, y, dx, dy)
					handlers.mousemoved(fromPixels(x), fromPixels(y), fromPixels(dx), fromPixels(dy))
				end
			end
		end
	end,

	getFont = getFont,
	setFont = setFont,
	getFontHeight = getFontHeight,
	getTextSize = getTextSize,
	setLineWidth = function(width)
		love.graphics.setLineWidth(toPixels(width))
	end,
	setColor = love.graphics.setColor,
	rectangle = rectangle,
	printf = printf,

	-- window utility
	getWindowWidth = love.window.getWidth,
	getWindowHeight = love.window.getHeight
}