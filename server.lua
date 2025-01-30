RegisterServerEvent('yuvalweb:clearInv')
AddEventHandler('yuvalweb:clearInv', function()
    local playerId = source
    exports.ox_inventory:ClearInventory(playerId, nil)
end)


RegisterNetEvent("yuvalweb:loadout:addItem", function(items)
    local src = source 
    for _, item in ipairs(items) do
        if item.name and item.count then
            local success = exports.ox_inventory:AddItem(src, item.name, item.count)
            if not success then
                print(string.format("Failed to add item '%s' x%d to player %d.", item.name, item.count, src))
            end
        end
    end
end)
