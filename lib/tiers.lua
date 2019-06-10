local colors = require "colors"

local vanilla_tiers = {
  tier_1 = {
    color        = colors.tier_1,
    multiplier   = 1,
    module_slots = 2,
    bunch        = false,
  },
  tier_2 = {
    color        = colors.tier_2,
    multiplier   = 2,
    module_slots = 3,
    bunch        = false,
  },
  tier_3 = {
    color        = colors.tier_3,
    multiplier   = 3,
    module_slots = 4,
    bunch        = false,
  },
}

local bob_tiers = {
  tier_1 = {
    color        = colors.tier_1,
    multiplier   = 2,
    module_slots = 2,
    bunch        = false,
  },
  tier_2 = {
    color        = colors.tier_2,
    multiplier   = 3,
    module_slots = 3,
    bunch        = false,
  },
  tier_3 = {
    color        = colors.tier_3,
    multiplier   = 4,
    module_slots = 4,
    bunch        = false,
  },
  tier_4 = {
    color        = colors.tier_4,
    multiplier   = 5,
    module_slots = 4,
    bunch        = true,
  },
  tier_5 = {
    color        = colors.tier_5,
    multiplier   = 6,
    module_slots = 5,
    bunch        = true,
  },
}

return {
  vanilla = vanilla_tiers,
  bob = bob_tiers,
}
