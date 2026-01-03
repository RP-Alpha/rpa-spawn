local cam = nil

local function CreateSkyCam()
    DoScreenFadeIn(500)
    SetTimecycleModifier('hud_def_blur')
    SetTimecycleModifierStrength(1.0)
    FreezeEntityPosition(PlayerPedId(), true)
    
    cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", false)
    SetCamCoord(cam, -493.5, -462.6, 500.0) -- Center of city approx
    SetCamRot(cam, -90.0, 0.0, 0.0, 2)
    SetCamActive(cam, true)
    RenderScriptCams(true, false, 0, true, true)
end

local function DestroySkyCam()
    SetTimecycleModifier('default')
    SetCamActive(cam, false)
    DestroyCam(cam, true)
    RenderScriptCams(false, false, 0, true, true)
    FreezeEntityPosition(PlayerPedId(), false)
end

RegisterNetEvent('rpa-spawn:client:open', function()
    CreateSkyCam()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'open',
        spawns = Config.Spawns
    })
end)

RegisterNUICallback('selectSpawn', function(data, cb)
    local loc = data.location
    local ped = PlayerPedId()
    
    DoScreenFadeOut(500)
    Wait(500)
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'close' })
    DestroySkyCam()

    if loc == 'last' then
        -- Framework should have handled last loc logic or we request it
        -- For now, trigger server to tp us to last known
        TriggerServerEvent('rpa-spawn:server:spawnLast')
    else
        local spawn = Config.Spawns[loc]
        if spawn then
            SetEntityCoords(ped, spawn.coords.x, spawn.coords.y, spawn.coords.z)
            SetEntityHeading(ped, spawn.coords.w)
            
            -- Trigger Appearance if new/needed
            TriggerEvent('rpa-appearance:client:checkSkin')
        end
    end
    
    Wait(500)
    DoScreenFadeIn(1000)
    cb('ok')
end)

-- Debug Command
RegisterCommand('testspawn', function()
    TriggerEvent('rpa-spawn:client:open')
end)
