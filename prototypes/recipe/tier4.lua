data:extend{
  {
    type = "recipe",
    category = "advanced-crafting",
    name = "micro-turbo-furnace",
    normal = {
      enabled = false,
      ingredients = {
        {"micro-express-furnace", 2},
        {"stack-inserter", 20},
        {"steel-plate", 400},
        {"processing-unit", 20},
        {"iron-gear-wheel", 20},
        {"iron-stick", 20},
      },
      energy_required = 30,
      result = "micro-turbo-furnace",
    },
    expensive = {
      enabled = false,
      ingredients = {
        {"micro-express-furnace", 4},
        {"stack-inserter", 40},
        {"steel-plate", 1600},
        {"processing-unit", 200},
        {"iron-gear-wheel", 200},
        {"iron-stick", 200},
      },
      energy_required = 120,
      result = "micro-turbo-furnace",
    },
  },
}
