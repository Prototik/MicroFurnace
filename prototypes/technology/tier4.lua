data:extend{
  {
    type = "technology",
    name = "micro-turbo-furnace",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects = {{type = "unlock-recipe", recipe = "micro-turbo-furnace"}},
    prerequisites = {"micro-express-furnace"},
    unit = {
      count = 1600,
      time = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
    },
    order = "c-d-d",
  },
}
