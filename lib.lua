local lib = {}

---comment
---@param tech_name string
---@param old_pack string
---@param new_pack string
function lib.replace_science_pack(tech_name, old_pack, new_pack)
    lib.replace_science_packs(tech_name, {
        [old_pack] = new_pack,
    })
end


---comment
---@param tech_name string
---@param mapping table
function lib.replace_science_packs(tech_name, mapping)
    local tech = assert(data.raw["technology"][tech_name])

    lib.replace_prerequisites(tech_name, mapping)

    for _, pack in pairs(tech.unit.ingredients) do
        local new = mapping[pack[1]]
        if new then
            pack[1] = new
        end
    end
end


---comment
---@param tech_name string
---@param mapping table
function lib.replace_prerequisites(tech_name, mapping)
    local tech = assert(data.raw["technology"][tech_name])

    for i = #tech.prerequisites, 1, -1 do
        local new = mapping[tech.prerequisites[i]]
        if new then
            tech.prerequisites[i] = new
        end
    end
end


return lib