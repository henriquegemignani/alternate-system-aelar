
data.raw["recipe"]["maraxsis-holmium-recrystalization"].hidden = true

local lib = require("lib")
lib.replace_science_pack("rocket-part-productivity-aquilo", "cryogenic-science-pack", "hydraulic-science-pack")
lib.replace_prerequisites("planet-discovery-maraxsis", {
    ["rocket-turret"] = "railgun",
    ["electromagnetic-science-pack"] = "electrochemical-science-pack", -- TODO
})