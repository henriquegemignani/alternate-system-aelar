
local lib = require("lib")

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

lib.replace_science_pack("rocket-part-productivity-gleba", "agricultural-science-pack", "battlefield-science-pack")
lib.replace_science_pack("rocket-part-productivity-gleba-2", "agricultural-science-pack", "battlefield-science-pack")
lib.replace_science_pack("rocket-part-productivity-vulcanus", "metallurgic-science-pack", "electrochemical-science-pack")
lib.replace_science_pack("rocket-part-productivity-vulcanus-2", "metallurgic-science-pack", "electrochemical-science-pack")
-- TODO: moshine, after we add something to research from it
lib.replace_science_pack("rocket-part-productivity-aquilo", "cryogenic-science-pack", "hydraulic-science-pack")