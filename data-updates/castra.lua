local lib = require("lib")

data.raw["technology"]["lithium-battery"].prerequisites = {"battlefield-science-pack"}
data.raw["technology"]["holmium-catalyzing"].hidden = true
data.raw["recipe"]["holmium-catalyzing"].hidden = true

-- local standard_replacement = {
--     ["metallurgic-science-pack"] = false,
--     ["electromagnetic-science-pack"] = "electrochemical-science-pack",
--     ["agricultural-science-pack"] = "interstellar-science-pack",
--     ["cryogenic-science-pack"] = "hydraulic-science-pack",
-- }

lib.replace_science_pack("rocket-part-productivity-gleba", "agricultural-science-pack", "battlefield-science-pack")
lib.replace_science_pack("rocket-part-productivity-gleba-2", "agricultural-science-pack", "battlefield-science-pack")

lib.replace_science_packs("battery-mk3-equipment", lib.standard_science_replacement)
lib.replace_science_packs("energy-shield-mk2-equipment", lib.standard_science_replacement)
lib.replace_science_packs("energy-shield-mk3-equipment", lib.standard_science_replacement)
lib.replace_science_packs("jammer-radar", lib.standard_science_replacement)
lib.replace_science_packs("jammed-data-collector", lib.standard_science_replacement)

lib.replace_science_pack("advanced-nickel-processing", "metallurgic-science-pack", "electrochemical-science-pack")

table.insert(data.raw["technology"]["artillery"].prerequisites, "interstellar-science-pack")
for _, it in pairs {
    "artillery",
    "artillery-shell-damage-1",
    "artillery-shell-range-1",
    "artillery-shell-speed-1",
} do
    lib.replace_science_pack(it, "metallurgic-science-pack", "battlefield-science-pack")
    lib.add_science_pack_cost(it, "interstellar-science-pack")
end

data.raw["technology"]["uranium-mining"].prerequisites = {"planet-discovery-castra"}

-- Railgun
data.raw["technology"]["railgun"].prerequisites = {"battlefield-science-pack"}
data.raw["technology"]["railgun"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"space-science-pack", 1},
    {"battlefield-science-pack", 1},
}
data.raw["recipe"]["railgun-turret"].ingredients = {
    {type = "item", name = "platinum-plate", amount = 30},
    {type = "item", name = "nickel-plate", amount = 50},
    {type = "item", name = "silicon-cell", amount = 25},
    {type = "item", name = "magnet", amount = 50},
    {type = "fluid", name = "hydrogen-sulfide", amount = 200},
}
lib.remove_science_pack_cost("railgun-damage-1", "metallurgic-science-pack")
lib.replace_science_packs("railgun-shooting-speed-1", lib.standard_science_replacement)

-- Battery: Aluminium-air?
data.raw["technology"]["lithium-battery"].prerequisites = {"battlefield-science-pack", "interstellar-science-pack"}
lib.replace_science_pack("lithium-battery", "cryogenic-science-pack", "interstellar-science-pack")
-- data.raw["recipe"]["lithium-battery"].ingredients = {
--     {type = "item", name = "aluminum-plate", amount = 1},
-- }