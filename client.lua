local QBCore = exports['qb-core']:GetCoreObject()
local searched = false
local searched2 = false
local searched3 = false
local searched4 = false
local searched5 = false
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(Config.Blip)
    SetBlipSprite(blip, 306)
    SetBlipColour(blip, 2)
    SetBlipScale(blip, 0.6)
    SetBlipDisplay(blip, 4)
    SetBlipAsShortRange(blip, true)
    
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Kutuları kurcala")
    EndTextCommandSetBlipName(blip)
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddCircleZone("Box1", Config.Box1, 1.0, {
        name = "Box1",
        --radius = 1.8,
        debugPoly = false,
        --heading=250,
    }, {
        options = {
            {
                event = "obu:box",
                icon = "fas fa-box",
                label = "Kutuyu karıştır!",
            },

        },
        distance = 2
    })
    exports['qb-target']:AddCircleZone("Box2", Config.Box2, 1.0, {
        name = "Box2",
        --radius = 1.8,
        debugPoly = false,
        --heading=250,
    }, {
        options = {
            {
                event = "obu:box2",
                icon = "fas fa-box",
                label = "Kutuyu karıştır!",
            },

        },
        distance = 2
    })
    exports['qb-target']:AddCircleZone("Box3", Config.Box3, 1.0, {
        name = "Box3",
        --radius = 1.8,
        debugPoly = false,
        --heading=250,
    }, {
        options = {
            {
                event = "obu:box3",
                icon = "fas fa-box",
                label = "Kutuyu karıştır!",
            },

        },
        distance = 2
    })
    exports['qb-target']:AddCircleZone("Box4", Config.Box4, 1.0, {
        name = "Box4",
        --radius = 1.8,
        debugPoly = false,
        --heading=250,
    }, {
        options = {
            {
                event = "obu:box4",
                icon = "fas fa-box",
                label = "Kutuyu karıştır!",
            },

        },
        distance = 2
    })
    exports['qb-target']:AddCircleZone("Box5", Config.BigBox, 1.0, {
        name = "Box5",
        --radius = 1.8,
        debugPoly = false,
        --heading=250,
    }, {
        options = {
            {
                event = "obu:bigbox",
                icon = "fas fa-box",
                label = "Kutuyu karıştır!",
            },

        },
        distance = 2
    })

end)

RegisterNetEvent('obu:box', function()
    local hasItem = QBCore.Functions.HasItem('weapon_crowbar')
    local hasWeapon = GetCurrentPedWeapon(PlayerPedId(), false)
    if hasItem then
        if hasWeapon then
    if not searched then
        QBCore.Functions.Progressbar('ariyorsun', 'Kutuyu karıştırıyorsun...', Config.ProgressBar, false, false, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "mini@repair",
            anim = "fixing_a_player",
            flags = 30,
        }, {}, {}, function() -- Done
            ClearPedTasksImmediately(PlayerPedId())
            searched = true
            TriggerServerEvent('obu:boxserver')
            Wait(Config.Wait)
            searched = false
        end)
    else
        QBCore.Functions.Notify('Dinlenmelisin, bu kadar hızlı kutu karıştıramazsın!', "error")
    end
else
    QBCore.Functions.Notify('Levyeyi eline almadan nasıl kıracaksın ahmak!', "error")
end
else
    QBCore.Functions.Notify('Kutular çok sağlam, bir levyeye ihtiyacın var!', "error")
    end
end)
RegisterNetEvent('obu:box2', function()
    local hasItem = QBCore.Functions.HasItem('weapon_crowbar')
    local hasWeapon = GetCurrentPedWeapon(PlayerPedId(), false)
    if hasItem then
        if hasWeapon then
    if not searched2 then
        QBCore.Functions.Progressbar('ariyorsun', 'Kutuyu karıştırıyorsun...', Config.ProgressBar, false, false, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "mini@repair",
            anim = "fixing_a_player",
            flags = 30,
        }, {}, {}, function() -- Done
            ClearPedTasksImmediately(PlayerPedId())
            searched2 = true
            TriggerServerEvent('obu:boxserver')
            Wait(Config.Wait)
            searched2 = false
        end)
    else
        QBCore.Functions.Notify('Dinlenmelisin, bu kadar hızlı kutu karıştıramazsın!', "error")
    end
else
    QBCore.Functions.Notify('Levyeyi eline almadan nasıl kıracaksın ahmak!', "error")
end
else
    QBCore.Functions.Notify('Kutular çok sağlam, bir levyeye ihtiyacın var!', "error")
    end
end)
RegisterNetEvent('obu:box3', function()
    local hasItem = QBCore.Functions.HasItem('weapon_crowbar')
    local hasWeapon = GetCurrentPedWeapon(PlayerPedId(), false)
    if hasItem then
        if hasWeapon then
    if not searched3 then
        QBCore.Functions.Progressbar('ariyorsun', 'Kutuyu karıştırıyorsun...', Config.ProgressBar, false, false, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "mini@repair",
            anim = "fixing_a_player",
            flags = 30,
        }, {}, {}, function() -- Done
            ClearPedTasksImmediately(PlayerPedId())
            searched3 = true
            TriggerServerEvent('obu:boxserver')
            Wait(Config.Wait)
            searched3 = false
        end)
    else
        QBCore.Functions.Notify('Dinlenmelisin, bu kadar hızlı kutu karıştıramazsın!', "error")
    end
else
    QBCore.Functions.Notify('Levyeyi eline almadan nasıl kıracaksın ahmak!', "error")
end
else
    QBCore.Functions.Notify('Kutular çok sağlam, bir levyeye ihtiyacın var!', "error")
    end
end)
RegisterNetEvent('obu:box4', function()
    local hasItem = QBCore.Functions.HasItem('weapon_crowbar')
    local hasWeapon = GetCurrentPedWeapon(PlayerPedId(), false)
    if hasItem then
        if hasWeapon then
    if not searched4 then
        QBCore.Functions.Progressbar('ariyorsun', 'Kutuyu karıştırıyorsun...', Config.ProgressBar, false, false, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "mini@repair",
            anim = "fixing_a_player",
            flags = 30,
        }, {}, {}, function() -- Done
            ClearPedTasksImmediately(PlayerPedId())
            searched4 = true
            TriggerServerEvent('obu:boxserver')
            Wait(Config.Wait)
            searched4 = false
        end)
    else
        QBCore.Functions.Notify('Dinlenmelisin, bu kadar hızlı kutu karıştıramazsın!', "error")
    end
else
    QBCore.Functions.Notify('Levyeyi eline almadan nasıl kıracaksın ahmak!', "error")
end
else
    QBCore.Functions.Notify('Kutular çok sağlam, bir levyeye ihtiyacın var!', "error")
    end
end)

RegisterNetEvent('obu:bigbox', function()
    local hasItem = QBCore.Functions.HasItem('weapon_crowbar')
    local hasWeapon = GetCurrentPedWeapon(PlayerPedId(), false)
    if hasItem then
        if hasWeapon then
    if not searched5 then
        QBCore.Functions.Progressbar('ariyorsun', 'Büyük kutuyu karıştırıyorsun...', Config.ProgressBar2, false, false, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "mini@repair",
            anim = "fixing_a_player",
            flags = 30,
        }, {}, {}, function() -- Done
            local success = exports['qb-lock']:StartLockPickCircle(3,10)
            if success then
                ClearPedTasksImmediately(PlayerPedId())
                searched5 = true
                TriggerServerEvent('obu:bigboxserver')
                Wait(Config.BigBoxWait)
                searched5 = false
            else
                QBCore.Functions.Notify('Kutuyu açamadın!', "error")
            end
        end)
    else
        QBCore.Functions.Notify('Dinlenmelisin, bu kadar hızlı kutu karıştıramazsın!', "error")
    end
else
    QBCore.Functions.Notify('Levyeyi eline almadan nasıl kıracaksın ahmak!', "error")
end
else
    QBCore.Functions.Notify('Kutular çok sağlam, bir levyeye ihtiyacın var!', "error")
    end
end)
