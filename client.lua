RegisterNetEvent('yw-loadouts:openMenu', function()
    SetNuiFocus(true, true)

    SendNUIMessage({
        action = "showLoadouts"  
    })

    local loadoutList = {}
    local keys = {}

    for key in pairs(Config.Loadouts) do
        table.insert(keys, key)
    end

    table.sort(keys)

    for _, key in ipairs(keys) do
        local value = Config.Loadouts[key]
        table.insert(loadoutList, {
            name = key,
            image = value.image,
            LoadoutName = value.LoadoutName,
            items = value.items
        })
    end

    SendNUIMessage({
        action = "updateLoadouts",
        loadouts = loadoutList
    })
end)

function GetLoadout(loadoutName)
    if Config.Loadouts[loadoutName] then
        return Config.Loadouts[loadoutName]
    else
        return nil
    end
end

function PrintLoadoutItems(loadoutName)
    local loadout = GetLoadout(loadoutName)
    if loadout then
        TriggerServerEvent("yuvalweb:clearInv")

        for _, item in ipairs(loadout.items) do
            TriggerServerEvent("yuvalweb:loadout:addItem", {
                { name = item.name, count = item.count }
            })
        end
    end
end

RegisterNUICallback("loadoutSelected", function(data, cb)
    closeUI()
    local selectedLoadout = data.name
    PrintLoadoutItems(selectedLoadout)
end)

RegisterNUICallback("closeUI", function(data, cb)
    closeUI()
end)

function closeUI()
    SendNUIMessage({
        action = "hideLoadouts"
    })
    SetNuiFocus(false, false)
end

