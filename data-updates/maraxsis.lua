
data.raw["recipe"]["maraxsis-holmium-recrystalization"].hidden = true

data.raw["capsule"]["jelly"].hidden = false  -- Maraxsis
data.raw["item"]["biochamber"].hidden = false  -- Maraxsis, TODO recipe
data.raw["recipe"]["biolubricant"].hidden = false  -- Maraxsis

local lib = require("lib")
lib.replace_science_pack("rocket-part-productivity-aquilo", "cryogenic-science-pack", "hydraulic-science-pack")
lib.replace_prerequisites("planet-discovery-maraxsis", {
    ["rocket-turret"] = "railgun",
    ["electromagnetic-science-pack"] = "electrochemical-science-pack", -- TODO
})

lib.replace_science_pack("maraxsis-effect-transmission-2", "electromagnetic-science-pack", "electrochemical-science-pack")  -- TODO: moshine
lib.remove_prerequisites("maraxsis-nuclear-submarine", "cryogenic-science-pack")

-- glass
lib.remove_prerequisites("maraxsis-glass-productivity", "metallurgic-science-pack")
lib.remove_science_pack_cost("maraxsis-glass-productivity", "metallurgic-science-pack")

lib.replace_science_pack("maraxsis-stone-centrifuging", "metallurgic-science-pack", "electrochemical-science-pack")