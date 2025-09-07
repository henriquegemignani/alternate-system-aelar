local lib = {}

---comment
---@param tech_name string
---@param old_pack string
---@param new_pack string
function lib.replace_science_pack(tech_name, old_pack, new_pack)
    local tech = assert(data.raw["technology"][tech_name])

    for i = #tech.prerequisites, 1, -1 do
        if tech.prerequisites[i] == old_pack then
            tech.prerequisites[i] = new_pack
        end
    end

    for _, pack in pairs(tech.unit.ingredients) do
        if pack[1] == old_pack then
            pack[1] = new_pack
        end
    end
end


return lib