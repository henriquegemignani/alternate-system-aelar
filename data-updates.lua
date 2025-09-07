
require("disable-space-age.nauvis")
require("data-updates.corrundum")
require("data-updates.muluna")
require("data-updates.castra")
require("data-updates.moshine")
require("data-updates.maraxsis")

for _, ingredient in pairs(data.raw["recipe"]["platinum-thruster"].ingredients or {}) do
    if ingredient.name == "platinum-plate" then
        ingredient.name = "aluminum-plate"
    end
end

for _, recipe in pairs(data.raw["recipe"]) do
    for _, ingredient in pairs(recipe.ingredients or {}) do
        if ingredient.name == "tungsten-plate" then
            ingredient.name = "platinum-plate"
        end
    end
end

local function throw_into_limbo(name, prereqs)
    local tech = data.raw["technology"][name]
    tech.hidden = false
    tech.enabled = false
    tech.prerequisites = prereqs
    tech.visible_when_disabled = true
end

throw_into_limbo("asteroid-reprocessing", {"crusher"})
throw_into_limbo("advanced-asteroid-processing", {"crusher"})
throw_into_limbo("quality-module-3", {"quality-module-2"})
throw_into_limbo("efficiency-module-3", {"efficiency-module-2"})
throw_into_limbo("productivity-module-3", {"productivity-module-2"})
throw_into_limbo("speed-module-3", {"speed-module-2"})
throw_into_limbo("quantum-processor", {})
throw_into_limbo("cryolab", {"quantum-processor", "productivity-module-3"})
throw_into_limbo("muluna-vacuum-heating-tower", {
    "moshine-start-boiler",
    "interstellar-science-pack",
    "efficiency-module-3",
})
throw_into_limbo("promethium-science-pack", {})
throw_into_limbo("carbon-fiber-wall", {"battlefield-science-pack"})
throw_into_limbo("muluna-cycling-steam-turbine", {"quality-module-3"})
throw_into_limbo("maraxsis-liquid-atmosphere", {})
throw_into_limbo("maraxsis-research-vessel", {"maraxsis-project-seadragon"})
throw_into_limbo("cliff-explosives", {"explosives", "military-science-pack"})
throw_into_limbo("muluna-advanced-stone-processing", {})


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

-- TODO: move elsewhere
-- plastic-bar-productivity
-- rocket-fuel-productivity
-- asteroid-productivity
-- refined-flammables-7
-- stronger-explosives-7
-- epic-quality

-- data.raw["technology"]["heating-tower"].hidden = false -- TODO