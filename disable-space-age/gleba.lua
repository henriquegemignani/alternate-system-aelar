-- Disable Gleba

for _, it in pairs {
    "yumako",
    "yumako-mash",
    "jellynut",
    "jelly",
    "bioflux",
} do
    data.raw["capsule"][it].hidden = true
end

data.raw["ammo"]["capture-robot-rocket"].hidden = true
data.raw["item"]["jellynut-seed"].hidden = true
data.raw["item"]["yumako-seed"].hidden = true
data.raw["tool"]["agricultural-science-pack"].hidden = true

for _, it in pairs {
    "jellynut-processing",
    "yumako-processing",
    "iron-bacteria-cultivation",
    "copper-bacteria-cultivation",
    "bioflux",
    "rocket-fuel-from-jelly",
    "bioplastic",
    "biosulfur",
    "biolubricant",
    "capture-robot-rocket",
    "nutrients-from-bioflux",
    "nutrients-from-yumako-mash",
    "agricultural-science-pack",
    "efficiency-module-3",
} do
    data.raw["recipe"][it].hidden = true
end

-- Both item and recipe
for _, it in pairs {
    "iron-bacteria",
    "copper-bacteria",
    "artificial-yumako-soil",
    "artificial-jellynut-soil",
    "overgrowth-yumako-soil",
    "overgrowth-jellynut-soil",
    "pentapod-egg",
    "biochamber",
    "agricultural-tower",
    "heating-tower",
    "carbon-fiber",
} do
    data.raw["item"][it].hidden = true
    data.raw["recipe"][it].hidden = true
end
data.raw["module"]["efficiency-module-3"].hidden = true

-- Tiles
for _, it in pairs {
    "natural-jellynut-soil",
    "artificial-jellynut-soil",
    "overgrowth-jellynut-soil",
    "natural-yumako-soil",
    "artificial-yumako-soil",
    "overgrowth-yumako-soil",
    "lowland-brown-blubber",
    "lowland-cream-cauliflower",
    "lowland-cream-cauliflower-2",
    "lowland-dead-skin",
    "lowland-dead-skin-2",
    "lowland-cream-red",
    "lowland-olive-blubber",
    "lowland-olive-blubber-2",
    "lowland-olive-blubber-3",
    "lowland-pale-green",
    "lowland-red-infection",
    "lowland-red-vein",
    "lowland-red-vein-2",
    "lowland-red-vein-3",
    "lowland-red-vein-4",
    "lowland-red-vein-dead",
    "midland-turquoise-bark",
    "midland-turquoise-bark-2",
    "midland-cracked-lichen",
    "midland-cracked-lichen-dark",
    "midland-cracked-lichen-dull",
    "midland-yellow-crust",
    "midland-yellow-crust-2",
    "midland-yellow-crust-3",
    "midland-yellow-crust-4",
    "gleba-deep-lake",
    "wetland-blue-slime",
    "wetland-light-green-slime",
    "wetland-green-slime",
    "wetland-light-dead-skin",
    "wetland-dead-skin",
    "wetland-pink-tentacle",
    "wetland-red-tentacle",
    "wetland-yumako",
    "wetland-jellynut",
    "highland-dark-rock",
    "highland-dark-rock-2",
    "pit-rock",
    "highland-yellow-rock",
} do
    data.raw["tile"][it].hidden = true
end

data.raw["cliff"]["cliff-gleba"].hidden = true

-- Props
data.raw["simple-entity"]["copper-stromatolite"].hidden = true
data.raw["simple-entity"]["iron-stromatolite"].hidden = true
data.raw["simple-entity"]["big-stomper-shell"].hidden = true
data.raw["simple-entity"]["medium-stomper-shell"].hidden = true
data.raw["simple-entity"]["small-stomper-shell"].hidden = true

-- Plants
data.raw["plant"]["yumako-tree"].hidden = true
data.raw["plant"]["jellystem"].hidden = true
data.raw["tree"]["slipstack"].hidden = true
data.raw["tree"]["funneltrunk"].hidden = true
data.raw["tree"]["hairyclubnub"].hidden = true
data.raw["tree"]["teflilly"].hidden = true
data.raw["tree"]["lickmaw"].hidden = true
data.raw["tree"]["stingfrond"].hidden = true
data.raw["tree"]["boompuff"].hidden = true
data.raw["tree"]["sunnycomb"].hidden = true
data.raw["tree"]["cuttlepop"].hidden = true
data.raw["tree"]["water-cane"].hidden = true

for _, tree in pairs(data.raw["tree"]) do
    if tree.autoplace and tree.autoplace.control == "gleba_plants" then
        tree.autoplace = nil
    end
end

for _, tree in pairs(data.raw["plant"]) do
    if tree.autoplace and tree.autoplace.control == "gleba_plants" then
        tree.autoplace = nil
    end
end

-- Enemies
for _, it in pairs {
    "small-wriggler-pentapod",
    "small-wriggler-pentapod-premature",
    "medium-wriggler-pentapod",
    "medium-wriggler-pentapod-premature",
    "big-wriggler-pentapod",
    "big-wriggler-pentapod-premature",
} do
    data.raw["unit"][it].hidden = true
end

for _, it in pairs {
    "small-strafer-pentapod",
    "medium-strafer-pentapod",
    "big-strafer-pentapod",
    "small-stomper-pentapod",
    "medium-stomper-pentapod",
    "big-stomper-pentapod",
} do
    data.raw["spider-unit"][it].hidden = true
end
data.raw["unit-spawner"]["gleba-spawner"] = nil
data.raw["unit-spawner"]["gleba-spawner-small"] = nil

-- Hide Tech
for _, it in pairs {
    -- Tech Tree
    "planet-discovery-gleba",
    "heating-tower",
    "agriculture",
    "jellynut",
    "yumako",
    "artificial-soil",
    "biochamber",
    "bioflux",
    "bacteria-cultivation",
    "bioflux-processing",
    "agricultural-science-pack",

    -- Rewards
    "health",
    "plastic-bar-productivity",
    "rocket-fuel-productivity",
    "asteroid-productivity",
    "refined-flammables-7",
    "stronger-explosives-7",
    "epic-quality",
    "overgrowth-soil",
    "toolbelt-equipment",
    "stack-inserter",
    "transport-belt-capacity-1",
    "transport-belt-capacity-2",
    "carbon-fiber",
    "rocket-turret",
    "spidertron",
    "efficiency-module-3",
    "advanced-asteroid-processing",
} do
    data.raw["technology"][it].hidden = true
end

-- Remove enemy settings in the menu
data.raw["noise-expression"]["gleba_enemy_base_radius"] = nil
data.raw["noise-expression"]["gleba_enemy_base_frequency"] = nil
data.raw["autoplace-control"]["gleba_enemy_base"] = nil
data.raw["autoplace-control"]["gleba_stone"].hidden = true
data.raw["autoplace-control"]["gleba_water"].hidden = true
data.raw["autoplace-control"]["gleba_plants"].hidden = true
data.raw["autoplace-control"]["gleba_cliff"].hidden = true
data.raw["planet"]["gleba"].map_gen_settings.cliff_settings = nil
data.raw["planet"]["gleba"].map_gen_settings.autoplace_controls = {}

-- Remove the planet!
data.raw["planet"]["gleba"].hidden = true