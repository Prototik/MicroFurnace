data:extend{
  {
    type = "technology",
    name = "micro-deadlock-stack-furnace-steel-processing",
    icon_size = 128,
    icon = "__base__/graphics/technology/steel-processing.png",
    effects = {{type = "unlock-recipe", recipe = "micro-deadlock-stack-steel-plate"}},
    prerequisites = {"micro-furnace-steel-processing", "deadlock-stacking-3"},
    unit = {
      count = 1500,
      time = 30,
      ingredients = {
        {"automation-science-pack", 3},
        {"logistic-science-pack", 3},
        {"chemical-science-pack", 2},
        {"production-science-pack", 1},
      }
    },
    order = "c-e-a",
  },
}
