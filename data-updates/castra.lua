local lib = require("lib")

data.raw["technology"]["lithium-battery"].prerequisites = {"battlefield-science-pack"}
data.raw["technology"]["holmium-catalyzing"].hidden = true
data.raw["recipe"]["holmium-catalyzing"].hidden = true

lib.replace_science_pack("rocket-part-productivity-gleba", "agricultural-science-pack", "battlefield-science-pack")
lib.replace_science_pack("rocket-part-productivity-gleba-2", "agricultural-science-pack", "battlefield-science-pack")
lib.replace_science_pack("battery-mk3-equipment", "electromagnetic-science-pack", "electrochemical-science-pack")
lib.replace_science_pack("energy-shield-mk2-equipment", "electromagnetic-science-pack", "electrochemical-science-pack")
lib.replace_science_pack("jammer-radar", "electromagnetic-science-pack", "electrochemical-science-pack")
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