
require("disable-space-age.vulcanus")
require("disable-space-age.fulgora")
require("disable-space-age.gleba")
require("disable-space-age.aquilo")

local utils = require("__any-planet-start__.utils")

-- TODO: steam stone furnaces
-- utils.add_recipes("advanced-material-processing", {"muluna-steam-steel-furnace"})
-- utils.remove_recipes("muluna-steam-crusher", {"muluna-steam-steel-furnace"})

-- CHANGES:
-- Magnets to not use assemblers
-- Pumpjack is unlocked by Castra, for hydrogen sulfide


local science_to_remove = {
    ["metallurgic-science-pack"] = true,
    ["electromagnetic-science-pack"] = true,
    ["agricultural-science-pack"] = true,
    ["cryogenic-science-pack"] = true,
}

for _, lab_name in pairs {
    "lab", "biolab"
} do
    local lab = data.raw["lab"][lab_name]
    for i = #lab.inputs, 1, -1 do
        if science_to_remove[lab.inputs[i]] then
            table.remove(lab.inputs, i)
        end
    end
    table.insert(lab.inputs, "hydraulic-science-pack")
end