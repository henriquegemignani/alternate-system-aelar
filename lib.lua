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

    local known = {}
    for _, pack in pairs(tech.unit.ingredients) do
        known[pack[1]] = true
    end

    for i = #tech.unit.ingredients, 1, -1 do
        local pack = tech.unit.ingredients[i]
        local new = mapping[pack[1]]

        if known[new] then
            new = false
        end

        if new then
            pack[1] = new
        elseif new == false then
            table.remove(tech.unit.ingredients, i)
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

---comment
---@param tech_name string
---@param name string
function lib.remove_prerequisites(tech_name, name)
    local tech = assert(data.raw["technology"][tech_name])
    lib.remove_from_list(tech.prerequisites, name)
end

---Adds the given pack as a cost to the technology
---@param tech_name string
---@param pack_name string
---@param amount integer?
function lib.add_science_pack_cost(tech_name, pack_name, amount)
    local tech = assert(data.raw["technology"][tech_name])
    tech.unit.ingredients = tech.unit.ingredients or {}
    table.insert(tech.unit.ingredients, { pack_name, amount or 1 })
end

---Makes the given technology no longer requires the given science pack
---@param tech_name string
---@param pack_name string
function lib.remove_science_pack_cost(tech_name, pack_name)
    local tech = assert(data.raw["technology"][tech_name])

    local list = tech.unit.ingredients or {}
    for i = #list, 1, -1 do
        if list[i][1] == pack_name then
            table.remove(list, i)
            return
        end
    end
end

---comment
---@param list table
---@param value any
function lib.remove_from_list(list, value)
    for i = #list, 1, -1 do
        if list[i] == value then
            table.remove(list, i)
            return
        end
    end
end

lib.standard_science_replacement = {
    ["metallurgic-science-pack"] = "battlefield-science-pack",
    ["electromagnetic-science-pack"] = "electrochemical-science-pack",
    ["agricultural-science-pack"] = "interstellar-science-pack",
    ["cryogenic-science-pack"] = "hydraulic-science-pack",
}

return lib
