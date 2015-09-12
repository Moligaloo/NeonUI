local _ = require 'underscore'

function _.remove_one(t, v)
	for i=1, #t do
		if t[i] == v then
			table.remove(t, i)
			break
		end
	end
end

function _.perform(t, name, ...)
	for i, v in ipairs(t) do
		v[name](v, ...)
	end
end

function _.reverse_detect(t, func, ...)
	for i=#t, 1, -1 do
		if func(t[i], ...) then
			return t[i]
		end
	end
end

return _