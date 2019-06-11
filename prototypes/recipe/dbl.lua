data:extend{
  {
    type = "recipe",
    name = "micro-deadlock-stack-steel-plate",
    category = "micro-furnace-smelting",
    normal = {
      enabled = false,
      energy_required = 3.2,
      ingredients = {{"deadlock-stack-iron-ore", 1}},
      result = "steel-plate",
    },
    expensive = {
      enabled = false,
      energy_required = 6.4,
      ingredients = {{"deadlock-stack-iron-ore", 2}},
      result = "steel-plate",
    },
  },
}
