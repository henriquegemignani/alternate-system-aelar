-- Disable Vulcanus

-- entities
data.raw["cliff"]["cliff-vulcanus"].hidden = true
data.raw["tree"]["ashland-lichen-tree"].hidden = true
data.raw["tree"]["ashland-lichen-tree-flaming"].hidden = true
data.raw["mining-drill"]["big-mining-drill"].hidden = true

-- recipes
for _, it in pairs {
    "acid-neutralisation",
    "metallurgic-science-pack",
} do
    data.raw["recipe"][it].hidden = true
end

-- Both item and recipe
for _, it in pairs {
    "tungsten-carbide",
    "big-mining-drill",
    "tungsten-plate",
} do
    data.raw["item"][it].hidden = true
    data.raw["recipe"][it].hidden = true
end

-- Tiles
for _, it in pairs {
    "lava-hot",
    "lava",
    "volcanic-cracks",
    "volcanic-cracks-hot",
    "volcanic-cracks-warm",
    "volcanic-smooth-stone",
    "volcanic-smooth-stone-warm",
    "volcanic-folds",
    "volcanic-folds-warm",
    "volcanic-folds-flat",
    "volcanic-jagged-ground",
    "volcanic-soil-dark",
    "volcanic-soil-light",
    "volcanic-pumice-stones",
    "volcanic-ash-flats",
    "volcanic-ash-light",
    "volcanic-ash-dark",
    "volcanic-ash-soil",
    "volcanic-ash-cracks",
} do
    data.raw["tile"][it].hidden = true
end

-- Enemy
data.raw["segmented-unit"]["small-demolisher"].hidden = true
data.raw["segmented-unit"]["medium-demolisher"].hidden = true
data.raw["segmented-unit"]["big-demolisher"].hidden = true

-- Props
data.raw["simple-entity"]["big-volcanic-rock"].hidden = true
data.raw["simple-entity"]["huge-volcanic-rock"].hidden = true
data.raw["simple-entity"]["vulcanus-chimney"].hidden = true
data.raw["simple-entity"]["vulcanus-chimney-cold"].hidden = true
data.raw["simple-entity"]["vulcanus-chimney-faded"].hidden = true
data.raw["simple-entity"]["vulcanus-chimney-short"].hidden = true
data.raw["simple-entity"]["vulcanus-chimney-truncated"].hidden = true
data.raw["simple-entity"]["small-demolisher-corpse"].hidden = true
data.raw["simple-entity"]["medium-demolisher-corpse"].hidden = true
data.raw["simple-entity"]["big-demolisher-corpse"].hidden = true

-- Hide Tech
for _, it in pairs {
    -- Tech Tree
    "planet-discovery-vulcanus",
    "calcite-processing",
    "tungsten-carbide",
    "foundry",
    "big-mining-drill",
    "tungsten-steel",
    "metallurgic-science-pack",

    -- Rewards
    "low-density-structure-productivity",
    "turbo-transport-belt",
} do
    data.raw["technology"][it].hidden = true
end

-- Resources
data.raw["resource"]["sulfuric-acid-geyser"].hidden = true

-- Remove enemy settings in the menu
-- data.raw["noise-expression"]["gleba_enemy_base_radius"] = nil
-- data.raw["noise-expression"]["gleba_enemy_base_frequency"] = nil
-- data.raw["autoplace-control"]["gleba_enemy_base"] = nil
-- data.raw["planet"]["gleba"].map_gen_settings.autoplace_controls.gleba_enemy_base = nil

-- -- Remove the planet!
-- data.raw["planet"]["vulcanus"].hidden = true