local tiers = require "lib.tiers"
local entities = require "lib.entities"

data:extend{
  entities.micro_furnace{
    name = "micro-furnace",
    tier = tiers.vanilla.tier_1,
  },
  entities.micro_furnace{
    name = "micro-fast-furnace",
    tier = tiers.vanilla.tier_2,
  },
  entities.micro_furnace{
    name = "micro-express-furnace",
    tier = tiers.vanilla.tier_3,
  },
}
