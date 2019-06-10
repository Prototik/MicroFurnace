local function starts_with(str, start)
   return str:sub(1, #start) == start
end

for i, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  
  for _, technology in pairs(force.technologies) do
    for _, effect in pairs(technology.effects) do
      if effect.type == "unlock-recipe" and starts_with(effect.recipe, "micro-furnace-bunch-") then
        force.recipes[effect.recipe].enabled = technology.researched
      end
    end
  end
end
