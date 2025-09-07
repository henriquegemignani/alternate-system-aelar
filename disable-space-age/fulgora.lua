-- Disable Gleba

-- entities
data.raw["assembling-machine"]["electromagnetic-plant"].hidden = true
data.raw["lightning-attractor"]["lightning-rod"].hidden = true

-- fluids
data.raw["fluid"]["holmium-solution"].hidden = true
data.raw["fluid"]["electrolyte"].hidden = true

-- recipes
for _, it in pairs {
    "electrolyte",
    "scrap-recycling",
    "holmium-solution",
    "mech-armor",
} do
    data.raw["recipe"][it].hidden = true
end

data.raw["armor"]["mech-armor"].hidden = true

-- Both item and recipe
for _, it in pairs {
    "holmium-plate",
    "recycler",
    "electromagnetic-plant",
    "superconductor",
    "supercapacitor",
    "lightning-rod",
    "personal-roboport-mk2-equipment",
} do
    data.raw["item"][it].hidden = true
    data.raw["recipe"][it].hidden = true
end

-- Tiles
for _, it in pairs {
    "oil-ocean-deep",
    "oil-ocean-shallow",
    "fulgoran-dust",
    "fulgoran-dunes",
    "fulgoran-sand",
    "fulgoran-rock",
    "fulgoran-paving",
    "fulgoran-walls",
    "fulgoran-conduit",
    "fulgoran-machinery",
} do
    data.raw["tile"][it].hidden = true
end

-- Props
data.raw["simple-entity"]["big-fulgora-rock"].hidden = true
data.raw["simple-entity"]["fulgurite-small"].hidden = true
data.raw["simple-entity"]["fulgurite"].hidden = true
data.raw["simple-entity"]["fulgoran-ruin-small"].hidden = true
data.raw["simple-entity"]["fulgoran-ruin-medium"].hidden = true
data.raw["simple-entity"]["fulgoran-ruin-big"].hidden = true
data.raw["simple-entity"]["fulgoran-ruin-huge"].hidden = true
data.raw["simple-entity"]["fulgoran-ruin-colossal"].hidden = true
data.raw["simple-entity"]["fulgoran-ruin-stonehenge"].hidden = true
data.raw["simple-entity"]["fulgoran-ruin-vault"].hidden = true
data.raw["lightning-attractor"]["fulgoran-ruin-attractor"].hidden = true

-- Hide Tech
for _, it in pairs {
    -- Tech Tree
    "planet-discovery-fulgora",
    "recycling",
    "holmium-processing",
    "electromagnetic-plant",
    "electromagnetic-science-pack",

    -- Rewards
    "mech-armor",
    "personal-roboport-mk2-equipment",
    "processing-unit-productivity",
    "rail-support-foundations",
    "scrap-recycling-productivity",
    "tesla-weapons",
    "electric-weapons-damage-3",
    "electric-weapons-damage-4",
    "worker-robots-speed-7",
} do
    data.raw["technology"][it].hidden = true
end

-- Modded tech as well
for _, it in pairs {
} do
    data.raw["technology"][it].hidden = true
end

-- -- Remove enemy settings in the menu
-- data.raw["noise-expression"]["gleba_enemy_base_radius"] = nil
-- data.raw["noise-expression"]["gleba_enemy_base_frequency"] = nil
-- data.raw["autoplace-control"]["gleba_enemy_base"] = nil
-- data.raw["planet"]["gleba"].map_gen_settings.autoplace_controls.gleba_enemy_base = nil

-- -- Remove the planet!
data.raw["planet"]["fulgora"].hidden = true