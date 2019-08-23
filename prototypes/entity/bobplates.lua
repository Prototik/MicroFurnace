local tiers = require "lib.tiers"
local entities = require "lib.entities"

data:extend{
  entities.micro_furnace{
    tier = tiers.bobplates.tier_1,
  },
  entities.micro_furnace{
    tier = tiers.bobplates.tier_2,
  },
  entities.micro_furnace{
    tier = tiers.bobplates.tier_3,
  },
}

if mods["boblogistics"] then
data:extend{
  entities.micro_furnace{
    tier = tiers.bobplates.tier_4,
  },
  entities.micro_furnace{
    tier = tiers.bobplates.tier_5,
  },
}
end
