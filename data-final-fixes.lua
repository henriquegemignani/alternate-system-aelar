
-- TODO: do we need this?
for _, tech in pairs(data.raw["technology"]) do
    if tech.hidden then
        if tech.unit then
            tech.unit.ingredients = {}
        end
    end
end
