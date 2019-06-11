local function micro_furnace_item(data)
  local order = data.order
  local tier  = data.tier

  return {
    type = "item",
    name = tier.target,
    icons = {{icon = "__base__/graphics/icons/electric-furnace.png", tint = tier.color}},
    icon_size = 32,
    order = order,
    subgroup = "smelting-machine",
    place_result = tier.target,
    stack_size = 10
  }
end

return {
  micro_furnace = micro_furnace_item
}
