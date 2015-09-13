-- simple class system, support inheritance and properties

local function index_from_class(class, object, key)
	local method = class.methods[key]
	if method then
		return method
	end

	local property = class.properties[key]
	local reader = property and property.reader
	if reader then
		return reader(object, key)
	end
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
		local instance = setmetatable({class = class}, instance_mt)
		if instance.initialize then
			instance:initialize(...)
		end
		return instance
	end,
	__tostring = function(self) return ("class of %s"):format(self.name) end
}

local function create_class(class_name, superclass)
	return setmetatable({ 
		superclass = superclass or false,
		name = class_name, 
		methods = {}, 
		static = {}, 
		properties = {},
		subclass = function(self, class_name) 
			return create_class(class_name, self)
		end,
		property = function(self, name, reader, writer)
			local property = {}
			if reader then
				property.reader = (type(reader) == 'function') and reader or function(self) return self[reader] end
			end
			if writer then
				property.writer = (type(writer) == 'function') and writer or function(self, value) rawset(self, writer, value) end 
			end
			self.properties[name] = property
		end
	}, class_mt)
end

return create_class