local tiers = require "lib.tiers"
local items = require "lib.items"

data:extend{
  items.micro_furnace{
    tier = tiers.krastorio.tier_1,
    order = "c[micro-furnace]-a",
  },
  items.micro_furnace{
    tier = tiers.krastorio.tier_2,
    order = "c[micro-furnace]-b",
  },
  items.micro_furnace{
    tier = tiers.krastorio.tier_3,
    order = "c[micro-furnace]-c",
  },
  items.micro_furnace{
    tier = tiers.krastorio.tier_4,
    order = "c[micro-furnace]-d",
  },
}
