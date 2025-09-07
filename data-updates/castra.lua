local lib = require("lib")

data.raw["technology"]["lithium-battery"].prerequisites = {"battlefield-science-pack"}
data.raw["technology"]["holmium-catalyzing"].hidden = true
data.raw["recipe"]["holmium-catalyzing"].hidden = true

lib.replace_science_pack("rocket-part-productivity-gleba", "agricultural-science-pack", "battlefield-science-pack")
lib.replace_science_pack("rocket-part-productivity-gleba-2", "agricultural-science-pack", "battlefield-science-pack")
lib.replace_science_pack("battery-mk3-equipment", "electromagnetic-science-pack", "electrochemical-science-pack")
lib.replace_science_pack("energy-shield-mk2-equipment", "electromagnetic-science-pack", "electrochemical-science-pack")
lib.replace_science_pack("jammer-radar", "electromagnetic-science-pack", "electrochemical-science-pack")