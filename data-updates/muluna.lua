
data.raw["plant"]["muluna-placed-tree"] = nil
data.raw["item"]["muluna-sapling"].place_result = nil

for _, it in pairs {
    -- Muluna
    "muluna-fertilized-greenhouses",
    "muluna-fertilized-greenhouses-vulcanus",
    "space-chest-muluna",
} do
    data.raw["technology"][it].hidden = true
end

data.raw["recipe"]["muluna-tree-growth-greenhouse-vulcanus"].hidden = true
data.raw["recipe"]["muluna-tree-growth-greenhouse-water-saving-vulcanus"].hidden = true

-- Adjust unlock for interstellar science
local packs_to_remove = {
    ["agricultural-science-pack"] = true,
    ["metallurgic-science-pack"] = true,
    ["electromagnetic-science-pack"] = true,
}
local science_packs = data.raw["mod-data"]["muluna-interstellar-science-pack-conditions"].data.science_packs --[[@as table]]
for i = #science_packs, 1, -1 do
    if packs_to_remove[science_packs[i]] then
        table.remove(science_packs, i)
    end
end


local lib = require("lib")
lib.replace_science_packs("muluna-satellite-radar", {
    ["metallurgic-science-pack"] = "battlefield-science-pack",
    ["electromagnetic-science-pack"] = "electrochemical-science-pack",
})

-- Needs platinum and uranium
lib.replace_science_pack("crusher-2", "metallurgic-science-pack", "electrochemical-science-pack")
lib.add_science_pack_cost("crusher-2", "battlefield-science-pack")