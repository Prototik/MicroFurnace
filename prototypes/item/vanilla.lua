local tiers = require "lib.tiers"
local items = require "lib.items"

data:extend{
  items.micro_furnace{
    tier = tiers.vanilla.tier_1,
    order = "c[micro-furnace]-a",
  },
  items.micro_furnace{
    tier = tiers.vanilla.tier_2,
    order = "c[micro-furnace]-b",
  },
  items.micro_furnace{
    tier = tiers.vanilla.tier_3,
    order = "c[micro-furnace]-c",
  },
}
