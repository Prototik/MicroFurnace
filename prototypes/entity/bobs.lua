local tiers = require "lib.tiers"
local entities = require "lib.entities"

data:extend{
  entities.micro_furnace{
    name = "micro-furnace",
    tier = tiers.bob.tier_1,
  },
  entities.micro_furnace{
    name = "micro-fast-furnace",
    tier = tiers.bob.tier_2,
  },
  entities.micro_furnace{
    name = "micro-express-furnace",
    tier = tiers.bob.tier_3,
  },
  entities.micro_furnace{
    name = "micro-turbo-furnace",
    tier = tiers.bob.tier_4,
  },
  entities.micro_furnace{
    name = "micro-ultimate-furnace",
    tier = tiers.bob.tier_5,
  },
}
