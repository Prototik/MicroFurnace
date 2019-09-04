local function micro_furnace_entity(data)
  local tier = data.tier

  local categories = {"micro-furnace-smelting", "micro-furnace-bunch-smelting"}

  if mods["bobplates"] then
    table.insert(categories, "chemical-furnace")
    table.insert(categories, "mixing-furnace")
  end

  if not tier.bunch_only then
    table.insert(categories, "smelting")
  end

  if tier.categories then
    for _, category in pairs(tier.categories) do
      table.insert(categories, category)
    end
  end

  return {
    type = "assembling-machine",
    name = tier.target,
    icons = {{icon = "__base__/graphics/icons/electric-furnace.png", tint = tier.color}},
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 5, result = tier.target},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
      {type = "fire",     percent = 80},
      {type = "acid",     percent = 80},
      {type = "physical", percent = 60},
    },
    collision_box = {{-0.25, -0.25}, {0.25, 0.25}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input-output", position = {0, -1} }}
      },
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input-output", position = {0, 1} }}
      },
      off_when_no_fluid_recipe = true
    },
    module_specification = {module_slots = tier.module_slots, module_info_icon_shift = {0, 0.8}},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = categories,
    fast_replaceable_group = "furnace",
    ingredient_count = 4,
    crafting_speed = tier.multiplier * 48,
    energy_usage = tier.multiplier * 4320 .. "kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
      sound = {filename = "__base__/sound/electric-furnace.ogg", volume = 0.7},
      apparent_volume = 1.5
    },
    animation = {
      layers =
        {
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            shift = {0.421875/3, 0},
            scale = 1/3,
            tint = tier.color
          },
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            draw_as_shadow = true,
            shift = {0.421875/3, 0}
          }
        }
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625/3, 0.890625/3},
          scale = 1/3
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 0.5}, color = {r = 1.0, g = 1.0, b = 1.0}}
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875/3, -0.640625/3},
          scale = 1/3,
        }
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625/3, -1.234375/3},
          scale = 1/3,
        }
      }
    }
  }
end

return {
  micro_furnace = micro_furnace_entity
}
