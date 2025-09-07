
local science_packs = data.raw["mod-data"]["muluna-interstellar-science-pack-conditions"].data.science_packs --[[@as table]]
for i = #science_packs, 1, -1 do
    if science_packs[i] == "agricultural-science-pack" then
        table.remove(science_packs, i)
    end
end