
local lib = require("lib")

data.raw["technology"]["planet-discovery-maraxsis"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"space-science-pack", 1},
    {"electrochemical-science-pack", 1},
    {"battlefield-science-pack", 1},
    {"interstellar-science-pack", 1},
}

data.raw["recipe"]["maraxsis-holmium-recrystalization"].hidden = true

data.raw["capsule"]["jelly"].hidden = false  -- Maraxsis
data.raw["item"]["biochamber"].hidden = false  -- Maraxsis, TODO recipe
data.raw["recipe"]["biolubricant"].hidden = false  -- Maraxsis

lib.replace_science_pack("rocket-part-productivity-aquilo", "cryogenic-science-pack", "hydraulic-science-pack")
lib.replace_prerequisites("planet-discovery-maraxsis", {
    ["rocket-turret"] = "railgun",
    ["electromagnetic-science-pack"] = "electrochemical-science-pack", -- TODO
})

lib.replace_science_pack("maraxsis-effect-transmission-2", "electromagnetic-science-pack", "electrochemical-science-pack")  -- TODO: moshine

-- glass
lib.remove_prerequisites("maraxsis-glass-productivity", "metallurgic-science-pack")
lib.remove_science_pack_cost("maraxsis-glass-productivity", "metallurgic-science-pack")

lib.replace_science_pack("maraxsis-stone-centrifuging", "metallurgic-science-pack", "electrochemical-science-pack")

lib.replace_science_packs("maraxsis-sonar", lib.standard_science_replacement)

-- TODO: Maybe these should be post-promethium? Since they were Maraxsis+Aquilo
local endgame_replacement = table.deepcopy(lib.standard_science_replacement)
endgame_replacement["cryogenic-science-pack"] = "promethium-science-pack"
lib.replace_science_packs("maraxsis-nuclear-submarine", endgame_replacement)
lib.replace_science_packs("maraxsis-depth-charges", endgame_replacement)
lib.replace_science_packs("maraxsis-abyssal-diving-gear", endgame_replacement)
