local tiers = require "lib.tiers"
local entities = require "lib.entities"

data:extend{
  entities.micro_furnace{
    tier = tiers.vanilla.tier_1,
  },
  entities.micro_furnace{
    tier = tiers.vanilla.tier_2,
  },
  entities.micro_furnace{
    tier = tiers.vanilla.tier_3,
  },
}
