
require("disable-space-age.nauvis")
require("data-updates.corrundum")
require("data-updates.muluna")
require("data-updates.castra")
require("data-updates.moshine")
require("data-updates.maraxsis")

local function throw_into_limbo(name, prereqs)
    local tech = data.raw["technology"][name]
    tech.hidden = false
    tech.enabled = false
    tech.prerequisites = prereqs
    tech.visible_when_disabled = true
end

throw_into_limbo("advanced-asteroid-processing", {"crusher"})
throw_into_limbo("quality-module-3", {"quality-module-2"})
throw_into_limbo("efficiency-module-3", {"efficiency-module-2"})
throw_into_limbo("productivity-module-3", {"productivity-module-2"})
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