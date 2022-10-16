local component = require("component")
local colors = require("colors")
local rs = component.redstone
rs.setBundledOutput(sides.left, colors.white, rs.getBundledInput(sides.left, colors.lime))
