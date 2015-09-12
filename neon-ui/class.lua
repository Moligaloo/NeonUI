-- simple class system, support inheritance and properties

local class_keyword = {}
local class_keyword_mt = {}
setmetatable(class_keyword, class_keyword_mt)

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
	local class = create_class(class_name)
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

local function default_tostring(object)
	return ("instance of %s"):format(object.class.name)
end

-- create new class
function create_class(class_name)
	local class = { 
		superclass = false,
		name = class_name, 
		methods = {}, 
		static = {}, 
		properties = {},
		subclass = subclass,
		property = property
	}
	local class_mt = {}

	class_mt.__newindex = function(self, key, value)
		self.methods[key] = value
	end

	class_mt.__index = function(self, key)
		return self.static[key] or self.methods[key]
	end

	function class_mt.__call(_, ...)
		local instance = { class = class }
		local instance_mt = {}
		instance_mt.__index = function(self, key)
			local class = self.class
			while class do
				local value = index_from_class(class, self, key)
				if value then
					return value
				else
					class = class.superclass
				end
			end
		end

		instance_mt.__newindex = function(self, key, value)
			local property = self.class.properties[key]
			if property and property.writer then
				property.writer(self, value)
			else
				rawset(self, key, value)
			end
		end

		instance_mt.__tostring = default_tostring

		setmetatable(instance, instance_mt)

		if instance.initialize then
			instance:initialize(...)
		end

		return instance
	end

	return setmetatable(class, class_mt)
end

class_keyword_mt.__call = function(_, class_name)
	return create_class(class_name)
end

return class_keyword
