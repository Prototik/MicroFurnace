local colors = require "colors"

local vanilla_tiers = {
  tier_1 = {
    index        = 1,
    color        = colors.tier_1,
    multiplier   = 1,
    module_slots = 2,
    bunch        = false,
    target       = "micro-furnace",
  },
  tier_2 = {
    index        = 2,
    color        = colors.tier_2,
    multiplier   = 2,
    module_slots = 3,
    bunch        = false,
    target       = "micro-fast-furnace",
  },
  tier_3 = {
    index        = 3,
    color        = colors.tier_3,
    multiplier   = 3,
    module_slots = 4,
    bunch        = false,
    target       = "micro-express-furnace",
  },
  tier_4 = {
    index        = 4,
    color        = colors.tier_4,
    multiplier   = 4,
    module_slots = 4,
    bunch        = true,
    target       = "micro-turbo-furnace",
  },
  tier_5 = {
    index        = 5,
    color        = colors.tier_5,
    multiplier   = 5,
    module_slots = 5,
    bunch        = true,
    target       = "micro-ultimate-furnace",
  },
}

local boblogistics_tiers = {
  tier_1 = {
    index        = 1,
    color        = colors.tier_1,
    multiplier   = 2,
    module_slots = 2,
    bunch        = false,
    target       = vanilla_tiers.tier_1.target
  },
  tier_2 = {
    index        = 2,
    color        = colors.tier_2,
    multiplier   = 3,
    module_slots = 3,
    bunch        = false,
    target       = vanilla_tiers.tier_2.target,
  },
  tier_3 = {
    index        = 3,
    color        = colors.tier_3,
    multiplier   = 4,
    module_slots = 4,
    bunch        = false,
    target       = vanilla_tiers.tier_3.target,
  },
  tier_4 = {
    index        = 4,
    color        = colors.tier_4,
    multiplier   = 5,
    module_slots = 4,
    bunch        = true,
    target       = vanilla_tiers.tier_4.target,
  },
  tier_5 = {
    index        = 5,
    color        = colors.tier_5,
    multiplier   = 6,
    module_slots = 5,
    bunch        = true,
    target       = vanilla_tiers.tier_5.target,
  },
}

local bobplates_tiers = {
  tier_1 = {
    index        = 1,
    color        = colors.tier_1,
    multiplier   = 2,
    module_slots = 2,
    bunch        = false,
    target       = vanilla_tiers.tier_1.target,
    categories   = {"chemical-furnace", "mixing-furnace"},
    fluid        = true,
  },
  tier_2 = {
    index        = 2,
    color        = colors.tier_2,
    multiplier   = 3,
    module_slots = 3,
    bunch        = false,
    target       = vanilla_tiers.tier_2.target,
    categories   = {"chemical-furnace", "mixing-furnace"},
    fluid        = true,
  },
  tier_3 = {
    index        = 3,
    color        = colors.tier_3,
    multiplier   = 4,
    module_slots = 4,
    bunch        = false,
    target       = vanilla_tiers.tier_3.target,
    categories   = {"chemical-furnace", "mixing-furnace"},
    fluid        = true,
  },
  tier_4 = {
    index        = 4,
    color        = colors.tier_4,
    multiplier   = 5,
    module_slots = 4,
    bunch        = true,
    target       = vanilla_tiers.tier_4.target,
    categories   = {"chemical-furnace", "mixing-furnace"},
    fluid        = true,
  },
  tier_5 = {
    index        = 5,
    color        = colors.tier_5,
    multiplier   = 6,
    module_slots = 5,
    bunch        = true,
    target       = vanilla_tiers.tier_5.target,
    categories   = {"chemical-furnace", "mixing-furnace"},
    fluid        = true,
  },
}

return {
  vanilla = vanilla_tiers,
  boblogistics = boblogistics_tiers,
  bobplates = bobplates_tiers,
  fep = vanilla_tiers,
  krastorio = vanilla_tiers,
}
