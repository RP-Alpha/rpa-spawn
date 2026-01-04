-- Get player helper
local function GetPlayer(src)
    local Framework = exports['rpa-lib']:GetFramework()
    if Framework then
        return Framework.Functions.GetPlayer(src)
    end
    return nil
end

-- Spawn at last location
RegisterNetEvent('rpa-spawn:server:spawnLast', function()
    local src = source
    local player = GetPlayer(src)
    
    if player then
        local coords = player.PlayerData.position
        if coords then
            -- Trigger client teleport via rpa-lib
            TriggerClientEvent('rpa-lib:client:Teleport', src, coords)
            exports['rpa-lib']:Notify(src, "Spawned at last location", "success")
        else
            exports['rpa-lib']:Notify(src, "No last location found", "error")
        end
    end
end)

-- Trigger spawn selector on player loaded
RegisterNetEvent('QBCore:Server:OnPlayerLoaded', function()
    local src = source
    -- Small delay to let client fully load
    SetTimeout(2000, function()
        TriggerClientEvent('rpa-spawn:client:open', src)
    end)
end)
