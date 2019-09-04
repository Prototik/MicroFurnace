data:extend{
  {
    type = "technology",
    name = "micro-furnace",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects = {{type = "unlock-recipe", recipe = "micro-furnace"}},
    prerequisites = {"advanced-material-processing-2"},
    unit = {
      count = 200,
      time = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
    },
    order = "c-d-a",
  },
  {
    type = "technology",
    name = "micro-fast-furnace",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects = {{type = "unlock-recipe", recipe = "micro-fast-furnace"}},
    prerequisites = {"micro-furnace"},
    unit = {
      count = 400,
      time = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
    },
    order = "c-d-b",
  },
  {
    type = "technology",
    name = "micro-express-furnace",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects = {{type = "unlock-recipe", recipe = "micro-express-furnace"}},
    prerequisites = {"micro-fast-furnace"},
    unit = {
      count = 800,
      time = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
    },
    order = "c-d-c",
  },
}
