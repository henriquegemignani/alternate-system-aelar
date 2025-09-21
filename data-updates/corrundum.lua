
local lib = require("lib")

-- Re-enable the used Vulcanus tile
data.raw["tile"]["volcanic-ash-soil"].hidden = false

data.raw["technology"]["planet-discovery-corrundum"].prerequisites = {"asteroid-collector"}
lib.remove_science_pack_cost("planet-discovery-corrundum", "metallurgic-science-pack")

data.raw["item"]["lightning-rod"].hidden = false
data.raw["recipe"]["lightning-rod"].hidden = false
data.raw["lightning-attractor"]["lightning-rod"].hidden = false

data.raw["recipe"]["calcium-sulfate-bioflux"].hidden = true
data.raw["recipe"]["calcium-sulfate-egg"].hidden = true
data.raw["recipe"]["calcium-sulfate-fish"].hidden = true
data.raw["technology"]["calcium-sulfate-nutrients"].hidden = true
data.raw["technology"]["calcium-sulfate-recovery"].hidden = true

data.raw["technology"]["dry-ice"].hidden = true

-- TODO: take recycler back

lib.replace_science_pack("lightning-collector", "electromagnetic-science-pack", "electrochemical-science-pack")
-- TODO: change recipe

lib.replace_science_pack("rocket-part-productivity-vulcanus", "metallurgic-science-pack", "electrochemical-science-pack")
lib.replace_science_pack("rocket-part-productivity-vulcanus-2", "metallurgic-science-pack", "electrochemical-science-pack")

lib.replace_science_pack("platinum-thruster", "metallurgic-science-pack", "battlefield-science-pack")

-- Fix too much being essential
for _, it in pairs {
    "chalcopyrite-processing",
    "platinum-processing",
    "catalytic-chemical-plant",
    "sulfur-redox1",
    "sulfur-redox2",
    "sulfate-processing-1",
    "sulfate-processing-2",
    "recrystalization",
    "calcium-sulfate",
    "stone-production",
    "asphalt-and-concrete",
    "pressure-lab",
    "sulfonated-plastic",
} do
    data.raw["technology"][it].essential = false
end