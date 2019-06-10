data:extend{
  {
    type = "recipe",
    name = "micro-steel-plate",
    category = "micro-furnace-smelting",
    normal = {
      enabled = false,
      energy_required = 16,
      ingredients = {{"iron-ore", 5}},
      result = "steel-plate",
    },
    expensive = {
      enabled = false,
      energy_required = 32,
      ingredients = {{"iron-ore", 10}},
      result = "steel-plate",
    },
  },
}
