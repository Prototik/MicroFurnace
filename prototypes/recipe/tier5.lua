data:extend{
  {
    type = "recipe",
    category = "advanced-crafting",
    name = "micro-ultimate-furnace",
    normal = {
      enabled = false,
      ingredients = {
        {"micro-turbo-furnace", 2},
        {"stack-inserter", 25},
        {"steel-plate", 800},
        {"processing-unit", 20},
        {"iron-gear-wheel", 20},
        {"iron-stick", 20},
      },
      energy_required = 30,
      result = "micro-ultimate-furnace",
    },
    expensive = {
      enabled = false,
      ingredients = {
        {"micro-turbo-furnace", 4},
        {"stack-inserter", 50},
        {"steel-plate", 3200},
        {"processing-unit", 200},
        {"iron-gear-wheel", 200},
        {"iron-stick", 200},
      },
      energy_required = 120,
      result = "micro-ultimate-furnace",
    },
  },
}
