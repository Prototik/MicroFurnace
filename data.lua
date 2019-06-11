require "prototypes.categories.recipe-category"
require "prototypes.item.item-groups"
require "prototypes.recipe.furnace-recipe"
require "prototypes.technology.technology"


if mods["boblogistics"] then
  require "prototypes.entity.bobs"
  require "prototypes.item.bobs"
  require "prototypes.recipe.bobs"
  require "prototypes.technology.bobs"
elseif mods["FactorioExtended-Plus-Transport"] then
  require "prototypes.entity.fep"
  require "prototypes.item.fep"
  require "prototypes.recipe.fep"
  require "prototypes.technology.fep"
else
  require "prototypes.entity.vanilla"
  require "prototypes.item.vanilla"
  require "prototypes.recipe.vanilla"
  require "prototypes.technology.vanilla"
end

if mods["deadlock-beltboxes-loaders"] then
  require "prototypes.recipe.dbl"
  require "prototypes.technology.dbl"
end
