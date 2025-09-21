
local lib = require("lib")
lib.replace_science_pack("big-solar-energy", "electromagnetic-science-pack", "electrochemical-science-pack")
lib.replace_science_pack("electric-energy-big-accumulators", "electromagnetic-science-pack", "electrochemical-science-pack")

data.raw["technology"]["moshine-tech-magnet"].prerequisites = {"electrochemical-science-pack"}

data.raw["technology"]["rocket-part-productivity-fulgora"].prerequisites = {"rocket-part-productivity-4", "moshine-tech-ai-tier-2"}
data.raw["technology"]["rocket-part-productivity-fulgora"].unit = {
    count = 13,
    ingredients = {
        {"datacell-raw-data", 1},
        {"model-stable", 1},
    },
    time = 90000
}

data.raw["technology"]["rocket-part-productivity-fulgora-2"].prerequisites = {"rocket-part-productivity-fulgora", "moshine-tech-processing-grid"}
data.raw["technology"]["rocket-part-productivity-fulgora-2"].unit = {
    count = 10,
    ingredients = {
        {"datacell-raw-data", 1},
        {"datacell-solved-equation", 1},
    },
    time = 360000
}

table.insert(data.raw["technology"]["moshine-tech-processing-grid"].prerequisites, "interstellar-science-pack")

lib.replace_science_pack("moshine-tech-hard-drive", "electromagnetic-science-pack", "electrochemical-science-pack")
