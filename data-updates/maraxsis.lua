
data.raw["recipe"]["maraxsis-holmium-recrystalization"].hidden = true

local lib = require("lib")
lib.replace_science_pack("rocket-part-productivity-aquilo", "cryogenic-science-pack", "hydraulic-science-pack")
lib.replace_prerequisites("planet-discovery-maraxsis", {
    ["rocket-turret"] = "railgun",
    ["electromagnetic-science-pack"] = "electrochemical-science-pack", -- TODO
})

lib.replace_science_pack("maraxsis-effect-transmission-2", "electromagnetic-science-pack", "electrochemical-science-pack")
lib.remove_prerequisites("maraxsis-nuclear-submarine", "cryogenic-science-pack")