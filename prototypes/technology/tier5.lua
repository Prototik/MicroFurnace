data:extend{
  {
    type = "technology",
    name = "micro-ultimate-furnace",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects = {{type = "unlock-recipe", recipe = "micro-ultimate-furnace"}},
    prerequisites = {"micro-turbo-furnace"},
    unit = {
      count = 3200,
      time = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
    },
    order = "c-d-e",
  },
}
