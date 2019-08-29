require "util"

local productivity_affected_recipes = {
  "micro-steel-plate"
}

local function bunch_item(item, multiplier)
  if item.amount then
    item.amount = item.amount * multiplier
  elseif item[2] then
    item[2] = item[2] * multiplier
  elseif item.name then
    item.amount = multiplier
  else
    item[2] = multiplier
  end
end

-- Create bunch recipes, update technology tree to unlock additional recipes
local function bunch_recipe(recipe, multiplier)
    recipe.energy_required = recipe.energy_required * multiplier

    for _, ingredient in pairs(recipe.ingredients) do
      bunch_item(ingredient, multiplier)
    end

    if recipe.results then
      for _, result in pairs(recipe.results) do
        bunch_item(result, multiplier)
      end
    elseif recipe.result_count then
      recipe.result_count = recipe.result_count * multiplier
    else
      recipe.result_count = multiplier
    end
end

local bunch_multiplier = 2

local bunch_recipe_mapping = {}

for _, recipe in pairs(data.raw["recipe"]) do
  if recipe.category == "smelting" then
    local bunch = table.deepcopy(recipe)
    bunch.category = "micro-furnace-bunch-smelting"
    bunch.name = "micro-furnace-bunch-" .. bunch.name

    if bunch.normal and bunch.expensive then
      bunch_recipe(bunch.normal, bunch_multiplier)
      bunch_recipe(bunch.expensive, bunch_multiplier)
    else
      bunch_recipe(bunch, bunch_multiplier)
    end

    data.raw["recipe"][bunch.name] = bunch
    bunch_recipe_mapping[recipe.name] = bunch.name

    for _, module in pairs(data.raw["module"]) do
      if module.limitation and module.limitation[recipe.name] ~= nil then
        table.insert(module.limitation, bunch.name)
      end
    end
  end
end

for _, technology in pairs(data.raw["technology"]) do
  if technology.effects then
    for _, effect in pairs(technology.effects) do
      if effect.type == "unlock-recipe" and bunch_recipe_mapping[effect.recipe] ~= nil then
        table.insert(technology.effects, {
          type = "unlock-recipe",
          recipe = bunch_recipe_mapping[effect.recipe],
        })
      end
    end
  end
end

for _, module in pairs(data.raw["module"]) do
  if module.name:find("productivity") and module.limitation then
    for _, recipe in ipairs(productivity_affected_recipes) do
      table.insert(module.limitation, recipe)
    end
  end
end
