-- Disable Gleba

print("hiding fluids")
for _, it in pairs {
    "fluorine",
    "lithium-brine",
    "ammoniacal-solution",
    "fluoroketone-hot",
    "fluoroketone-cold",
} do
    data.raw["fluid"][it].hidden = true
end


print("hiding recipes")
for _, it in pairs {
    "ammoniacal-solution-separation",
    "solid-fuel-from-ammonia",
    "ammonia-rocket-fuel",
    "fluoroketone",
    "fluoroketone-cooling",
} do
    data.raw["recipe"][it].hidden = true
end

-- Both item and recipe
for _, it in pairs {
    "ice-platform",
    "lithium",
    "lithium-plate",
    "cryogenic-plant",
    "fusion-reactor",
    "fusion-reactor-equipment",
    "fusion-generator",
    "fusion-power-cell",
} do
    data.raw["item"][it].hidden = true
    data.raw["recipe"][it].hidden = true
end

-- Tiles
for _, it in pairs {
    "ammoniacal-ocean",
    "ammoniacal-ocean-2",
    "brash-ice",
    "ice-rough",
    "dust-crests",
    "dust-flat",
    "dust-lumpy",
    "dust-patchy",
    "snow-crests",
    "snow-flat",
    "snow-lumpy",
    "snow-patchy",
    "ice-smooth",
} do
    data.raw["tile"][it].hidden = true
end

-- Hide Tech
for _, it in pairs {
    -- Tech Tree
    "planet-discovery-aquilo",
    "lithium-processing",
    "cryogenic-plant",

    -- Rewards
    "legendary-quality",
    "foundation",
    "captive-biter-spawner",
    "fusion-reactor",
    "fusion-reactor-equipment",
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
data.raw["planet"]["aquilo"].hidden = true