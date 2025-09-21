require("disable-space-age.nauvis")
require("data-updates.corrundum")
require("data-updates.muluna")
require("data-updates.castra")
require("data-updates.moshine")
require("data-updates.maraxsis")

-- Make stuff that uses Tungsten Plate use Platinum Plate, as there's a lot of things we want to keep (Maraxsis, mostly)
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

-- TODO: we dunno where to put, but we want to put them somewhere
local function throw_into_limbo(name, prereqs)
    local tech = data.raw["technology"][name]
    tech.hidden = false
    tech.enabled = false
    tech.prerequisites = prereqs
    tech.visible_when_disabled = true
    if tech.unit then
        tech.unit.ingredients = {}
    end
end

throw_into_limbo("asteroid-reprocessing", { "crusher" })
throw_into_limbo("advanced-asteroid-processing", { "crusher" })


throw_into_limbo("quality-module-3", { "quality-module-2" })
throw_into_limbo("efficiency-module-3", { "efficiency-module-2" })
throw_into_limbo("productivity-module-3", { "productivity-module-2" })
throw_into_limbo("speed-module-3", { "speed-module-2" })

throw_into_limbo("quantum-processor", {})
throw_into_limbo("cryolab", { "quantum-processor", "productivity-module-3" })
throw_into_limbo("muluna-vacuum-heating-tower", {
    "moshine-start-boiler",
    "interstellar-science-pack",
    "efficiency-module-3",
})
throw_into_limbo("promethium-science-pack", {})
throw_into_limbo("carbon-fiber-wall", { "battlefield-science-pack" })
throw_into_limbo("muluna-cycling-steam-turbine", { "quality-module-3" })
throw_into_limbo("maraxsis-liquid-atmosphere", {})
throw_into_limbo("maraxsis-research-vessel", { "maraxsis-project-seadragon" })
throw_into_limbo("cliff-explosives", { "explosives", "military-science-pack" })
throw_into_limbo("muluna-advanced-stone-processing", {})

-- Make the resource settings GUI prettier
for name, order in pairs {
    -- Moshine
    ["multi_ore"] = "a-a-a",
    ["steam_geyser"] = "a-a-c",
    ["fulgoran_data_source"] = "a-a-d",

    -- Muluna is unchanged

    -- Corrundum
    ["calcite"] = "a-g00",
    ["platinum_ore"] = "a-g01",
    ["sulfur_ore"] = "a-g02",
    ["chalcopyrite_ore"] = "a-g03",

    -- Castra    
    ["copper-ore"] = "a-h00",
    ["stone"] = "a-h01",
    ["uranium-ore"] = "a-h02",
    ["millerite"] = "a-h03",
    ["gunpowder"] = "a-h04",
    ["hydrogen-sulfide-vent"] = "a-h05",

} do
    data.raw["autoplace-control"][name].order = order
end

-- Quantum Processors

-- TODO: use hydroplant to make
data.raw["recipe"]["quantum-processor"].ingredients = {
    {type = "item", name = "processing-unit", amount = 1}, -- base circuit
    -- moshine (ai model)
    {type = "item", name = "silicon-cell", amount = 2},  -- muluna/moshine
    -- corrundum
    -- castra
    -- maraxsis (glass?)
    {type = "fluid", name = "water", amount = 100},
}
data.raw["recipe"]["quantum-processor"].results = {
    {type = "item", name = "quantum-processor", amount = 1},
    {type = "fluid", name = "steam", amount = 100, temperature = 165},
}

-- Endgame Research
data.raw["technology"]["research-productivity"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"space-science-pack", 1},
    {"electrochemical-science-pack", 1},
    {"battlefield-science-pack", 1},
    {"interstellar-science-pack", 1},
    {"hydraulic-science-pack", 1},
    {"promethium-science-pack", 1},
}
data.raw["technology"]["research-speed-infinite"].unit.ingredients = data.raw["technology"]["research-productivity"].unit.ingredients

-- Re-enable space age stuff other planets use

-- TODO: move elsewhere
-- plastic-bar-productivity
-- rocket-fuel-productivity
-- asteroid-productivity
-- refined-flammables-7
-- stronger-explosives-7
-- epic-quality

-- data.raw["technology"]["heating-tower"].hidden = false -- TODO
