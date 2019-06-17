local tiers = require "lib.tiers"
local entities = require "lib.entities"

data:extend{
  entities.micro_furnace{
    tier = tiers.krastorio.tier_1,
  },
  entities.micro_furnace{
    tier = tiers.krastorio.tier_2,
  },
  entities.micro_furnace{
    tier = tiers.krastorio.tier_3,
  },
  entities.micro_furnace{
    tier = tiers.krastorio.tier_4,
  },
}
