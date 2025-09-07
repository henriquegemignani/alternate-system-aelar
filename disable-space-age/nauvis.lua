-- Disable Nauvis. Runs on data-updates as it's when APS does it's things

data.raw["fish"]["fish"].hidden = true
data.raw["capsule"]["raw-fish"].hidden = true
data.raw["lab"]["biolab"].hidden = true
data.raw["cliff"]["cliff"].hidden = true

data.raw["item"]["tree-seed"].place_result = nil
data.raw["item"]["tree-seed"].plant_result = nil

-- Remove all trees
data.raw["plant"]["tree-plant"] = nil
for _, it in pairs {
    "tree-01",
    "tree-02",
    "tree-02-red",
    "tree-03",
    "tree-04",
    "tree-05",
    "tree-06",
    "tree-06-brown",
    "tree-07",
    "tree-08",
    "tree-08-brown",
    "tree-08-red",
    "tree-09",
    "tree-09-brown",
    "tree-09-red",
    "dry-tree",
    "dead-tree-desert",
    "dead-grey-trunk",
    "dead-dry-hairy-tree",
    "dry-hairy-tree",
} do
    data.raw["tree"][it] = nil
end

-- recipes
for _, it in pairs {
    "nutrients-from-biter-egg",
    "nutrients-from-fish",
    "fish-breeding",
} do
    data.raw["recipe"][it].hidden = true
end

-- Both item and recipe
for _, it in pairs {
    "biolab",
    "biter-egg",
} do
    data.raw["item"][it].hidden = true
    data.raw["recipe"][it].hidden = true
end

-- Tiles
for _, it in pairs {
    "water",
    "deepwater",
    "water-green",
    "deepwater-green",
    "water-shallow",
    "water-mud",
    "dry-dirt",
    "dirt-1",
    "sand-1",
} do
    data.raw["tile"][it].hidden = true
end

-- Hide Tech
for _, it in pairs {
    "planet-discovery-nauvis",
    "oil-processing",
    "advanced-oil-processing",
    "captivity",
    "biter-egg-handling",
    "biolab",
    "tree-seeding",
    "fish-breeding",
} do
    data.raw["technology"][it].hidden = true
end

-- Enemies
for _, it in pairs {
    "small-biter",
    "medium-biter",
    "big-biter",
    "behemoth-biter",
    "small-spitter",
    "medium-spitter",
    "big-spitter",
    "behemoth-spitter",
} do
    data.raw["unit"][it].hidden = true
end

data.raw["turret"]["small-worm-turret"].hidden = true
data.raw["turret"]["medium-worm-turret"].hidden = true
data.raw["turret"]["big-worm-turret"].hidden = true
data.raw["turret"]["behemoth-worm-turret"].hidden = true

data.raw["unit-spawner"]["biter-spawner"] = nil
data.raw["unit-spawner"]["spitter-spawner"] = nil

data.raw["assembling-machine"]["captive-biter-spawner"].dying_trigger_effect = nil
data.raw["ammo"]["capture-robot-rocket"].ammo_type.target_filter = nil

data.raw["kill-achievement"]["pest-control"] = nil

-- Remove settings in the menu
data.raw["resource"]["crude-oil"].hidden = true
data.raw["planet"]["nauvis"].map_gen_settings.autoplace_controls = {}

data.raw["map-gen-presets"]["default"]["island"] = nil
data.raw["map-gen-presets"]["default"]["lakes"] = nil

for _, it in pairs {
    "iron-ore",
    "coal",
    "crude-oil",
    "water",
    "trees",
    "nauvis_cliff",
} do
    data.raw["autoplace-control"][it] = nil
    data.raw["map-gen-presets"]["default"]["rich-resources"].basic_settings.autoplace_controls[it] = nil
    data.raw["map-gen-presets"]["default"]["rail-world"].basic_settings.autoplace_controls[it] = nil
    data.raw["map-gen-presets"]["default"]["ribbon-world"].basic_settings.autoplace_controls[it] = nil
end

-- Remove the planet!
data.raw["planet"]["nauvis"].hidden = true
