
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

local lib = require("lib")
lib.replace_science_pack("lightning-collector", "electromagnetic-science-pack", "electrochemical-science-pack")
-- TODO: change recipe


lib.replace_science_pack("rocket-part-productivity-vulcanus", "metallurgic-science-pack", "electrochemical-science-pack")
lib.replace_science_pack("rocket-part-productivity-vulcanus-2", "metallurgic-science-pack", "electrochemical-science-pack")