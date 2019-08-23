local tiers = require "lib.tiers"
local items = require "lib.items"

data:extend{
  items.micro_furnace{
    tier = tiers.bobplates.tier_1,
    order = "d[micro-furnace]-a",
  },
  items.micro_furnace{
    tier = tiers.bobplates.tier_2,
    order = "d[micro-furnace]-b",
  },
  items.micro_furnace{
    tier = tiers.bobplates.tier_3,
    order = "d[micro-furnace]-c",
  },
}

if mods["boblogistics"] then
data:extend{
  items.micro_furnace{
    tier = tiers.bobplates.tier_4,
    order = "d[micro-furnace]-d",
  },
  items.micro_furnace{
    tier = tiers.bobplates.tier_5,
    order = "d[micro-furnace]-e",
  },
}
end
