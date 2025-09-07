require("disable-space-age.lib")
require("disable-space-age.gleba")
require("disable-space-age.aquilo")

-- local science_to_remove = {
--     ["agricultural-science-pack"] = true,
-- }

-- for _, lab_name in pairs {
--     "lab", "biolab"
-- } do
--     local lab = data.raw["lab"][lab_name]
--     for i = #lab.inputs, 1, -1 do
--         if science_to_remove[lab.inputs[i]] then
--             table.remove(lab.inputs, i)
--         end
--     end
-- end

-- Re-enable space age stuff other planets use
data.raw["capsule"]["jelly"].hidden = false  -- Maraxsis
data.raw["item"]["biochamber"].hidden = false  -- Maraxsis, TODO recipe
data.raw["recipe"]["biolubricant"].hidden = false  -- Maraxsis


data.raw["technology"]["dry-ice"].hidden = true
data.raw["technology"]["lithium-battery"].prerequisites = {"battlefield-science-pack"}

-- TODO: move elsewhere
-- plastic-bar-productivity
-- rocket-fuel-productivity
-- asteroid-productivity
-- refined-flammables-7
-- stronger-explosives-7
-- epic-quality

-- data.raw["technology"]["heating-tower"].hidden = false -- TODO