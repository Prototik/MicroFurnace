local tiers = require "lib.tiers"
local items = require "lib.items"

data:extend{
  items.micro_furnace{
    name = "micro-furnace",
    tier = tiers.bob.tier_1,
    order = "c[micro-furnace]-a",
  },
  items.micro_furnace{
    name = "micro-fast-furnace",
    tier = tiers.bob.tier_2,
    order = "c[micro-furnace]-b",
  },
  items.micro_furnace{
    name = "micro-express-furnace",
    tier = tiers.bob.tier_3,
    order = "c[micro-furnace]-c",
  },
  items.micro_furnace{
    name = "micro-turbo-furnace",
    tier = tiers.bob.tier_4,
    order = "c[micro-furnace]-d",
  },
  items.micro_furnace{
    name = "micro-ultimate-furnace",
    tier = tiers.bob.tier_5,
    order = "c[micro-furnace]-e",
  },
}
