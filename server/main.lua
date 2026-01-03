-- Placeholder for last location retrieval
RegisterNetEvent('rpa-spawn:server:spawnLast', function()
    local src = source
    local player = exports['rpa-lib']:GetFramework().Functions.GetPlayer(src)
    
    if player then
        local coords = player.PlayerData.position
        TriggerClientEvent('rpa-lib:client:Teleport', src, coords) 
        -- Note: rpa-lib teleport bridge might need implementation or just use SetEntityCoords client side override
        -- For now, let's just assume we trigger client to set coords
    end
end)
