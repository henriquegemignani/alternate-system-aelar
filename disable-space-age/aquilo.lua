-- Disable Gleba

-- entities
data.raw["fusion-reactor"]["fusion-reactor"].hidden = true
data.raw["fusion-generator"]["fusion-generator"].hidden = true
data.raw["assembling-machine"]["cryogenic-plant"].hidden = true

-- fluids
for _, it in pairs {
    "fluorine",
    "lithium-brine",
    "ammoniacal-solution",
    "fluoroketone-hot",
    "fluoroketone-cold",
    "fusion-plasma",
} do
    data.raw["fluid"][it].hidden = true
end

-- recipes
for _, it in pairs {
    "ammoniacal-solution-separation",
    "solid-fuel-from-ammonia",
    "ammonia-rocket-fuel",
    "fluoroketone",
    "fluoroketone-cooling",
    "cryogenic-science-pack",
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
    "ice-platform",
} do
    data.raw["tile"][it].hidden = true
end

-- Hide Tech
for _, it in pairs {
    -- Tech Tree
    "planet-discovery-aquilo",
    "lithium-processing",
    "cryogenic-plant",
    "cryogenic-science-pack",

    -- Rewards
    "legendary-quality",
    "foundation",
    "captive-biter-spawner",
    "fusion-reactor",
    "fusion-reactor-equipment",
} do
    data.raw["technology"][it].hidden = true
end

-- Props
data.raw["simple-entity"]["lithium-iceberg-big"].hidden = true
data.raw["simple-entity"]["lithium-iceberg-huge"].hidden = true

-- Remove the planet!
data.raw["resource"]["lithium-brine"].hidden = true
data.raw["resource"]["fluorine-vent"].hidden = true
data.raw["planet"]["aquilo"].hidden = true