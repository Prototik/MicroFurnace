local tiers = require "lib.tiers"
local entities = require "lib.entities"

data:extend{
  entities.micro_furnace{
    tier = tiers.fep.tier_1,
  },
  entities.micro_furnace{
    tier = tiers.fep.tier_2,
  },
  entities.micro_furnace{
    tier = tiers.fep.tier_3,
  },
  entities.micro_furnace{
    tier = tiers.fep.tier_4,
  },
  entities.micro_furnace{
    tier = tiers.fep.tier_5,
  },
}
