-- simple class system, support inheritance and properties

local function index_from_class(class, object, key)
	local method = class.methods[key]
	if method then
		return method
	end

	local property = class.properties[key]
	if property and property.reader then
		return property.reader(object, key)
	end
end

local create_class
local function subclass(self, class_name) 
	local class = create_class(nil, class_name)
	class.superclass = self
	return class
end

local function property(self, name, reader, writer)
	local property = {}
	if type(reader) == 'string' then
		property.reader = function(self) return self[reader] end
	elseif type(reader) == 'function' then
		property.reader = reader
	end

	if type(writer) == 'string' then
		property.writer = function(self, value) rawset(self, writer, value) end
	elseif type(writer) == 'function' then
		property.writer = writer
	end

	self.properties[name] = property
end

local instance_mt = {
	__index = function(self, key)
		local class = self.class
		while class do
			local value = index_from_class(class, self, key)
			if value then
				return value
			else
				class = class.superclass
			end
		end
	end,
	__newindex = function(self, key, value)
		local property = self.class.properties[key]
		local writer = property and property.writer
		if writer then writer(self, value) else rawset(self, key, value) end
	end,
	__tostring = function(self)
		return object.tostring and object.tostring(object) or ("instance of %s"):format(object.class.name)
	end
}

local class_mt = {
	__newindex = function(self, key, value)
		self.methods[key] = value
	end,
	__index = function(self, key)
		return self.static[key] or self.methods[key]
	end,
	__call = function(class, ...) 
		local instance = { class = class }
		setmetatable(instance, instance_mt)

		if instance.initialize then
			instance:initialize(...)
		end

		return instance
	end
}

-- create new class
function create_class(_, class_name)
	return setmetatable({ 
		superclass = false,
		name = class_name, 
		methods = {}, 
		static = {}, 
		properties = {},
		subclass = subclass,
		property = property
	}, class_mt)
end

return setmetatable({},{ __call = create_class})
