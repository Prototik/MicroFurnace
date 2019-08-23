local tiers = require "lib.tiers"
local entities = require "lib.entities"

data:extend{
  entities.micro_furnace{
    tier = tiers.boblogistics.tier_1,
  },
  entities.micro_furnace{
    tier = tiers.boblogistics.tier_2,
  },
  entities.micro_furnace{
    tier = tiers.boblogistics.tier_3,
  },
  entities.micro_furnace{
    tier = tiers.boblogistics.tier_4,
  },
  entities.micro_furnace{
    tier = tiers.boblogistics.tier_5,
  },
}
