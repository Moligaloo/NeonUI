local function grid(t)
	local controls = t.controls
	local column = t.column
	local cell_width, cell_height, hgap, vgap, start_x, start_y
	if t.cell_width and t.cell_height then
		cell_width, cell_height = t.cell_width, t.cell_height
	else
		cell_width, cell_height = controls[1]:preferredSize()
	end
	if t.gap then
		hgap, vgap = t.gap, t.gap
	else
		hgap, vgap = t.hgap, t.vgap
	end
	local start_x = t.start_x or 0
	local start_y = t.start_y or 0

	local max_row = 0
	local max_column = 0

	for i, control in ipairs(controls) do
		i = i - 1
		local row = math.floor(i / column)
		local column = i % column
		control.x = start_x + (hgap + cell_width) * column
		control.y = start_y + (vgap + cell_height) * row

		max_row = math.max(row+1, max_row)
		max_column = math.max(column+1, max_column)
	end

	return {
		controls = controls,
		x = start_x, 
		y = start_y,
		width = max_column * cell_width + (max_column - 1) * hgap,
		height = max_row * cell_height + (max_row - 1) * vgap
	}
end

local function vbox(t)
	return grid {
		controls = t.controls,
		gap = t.gap,
		column = 1,
	}
end

local function hbox(t)
	return grid {
		controls = t.controls,
		gap = t.gap,
		column = 10000
	}
end

return {
	grid = grid,
	vbox = vbox,
	hbox = hbox
}