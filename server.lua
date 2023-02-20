local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('obu:boxserver', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local random = math.random(1, 10)
    local item1 = Config.Esya1
    local item2 = Config.Esya2
    local item3 = Config.Esya3
    if not Player then return end
    if random == 1 then
        Player.Functions.AddItem(item1, Config.Random)
        TriggerClientEvent('QBCore:Notify', source, "Sandığın içinden -" ..item1.. "- çıktı!", "success")
    elseif random == 2 then
        Player.Functions.AddItem(item2, Config.Random)
        TriggerClientEvent('QBCore:Notify', source, "Sandığın içinden -" ..item2.. "- çıktı!", "success")
    elseif random == 3 then
        Player.Functions.AddItem(item3, Config.Random)
        TriggerClientEvent('QBCore:Notify', source, "Sandığın içinden -" ..item3.. "- çıktı!", "success")
    elseif random > 4 then
        TriggerClientEvent('QBCore:Notify', source, "Sandık boş çıktı!", "error")
    end
end)

RegisterServerEvent('obu:bigboxserver', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local random = math.random(1, 10)
    local item1 = Config.Esya1
    local item2 = Config.Esya2
    local item3 = Config.Esya3
    if not Player then return end
    if random == 1 then
        Player.Functions.AddItem(item1, Config.RandomBigBox)
        TriggerClientEvent('QBCore:Notify', source, "Sandığın içinden -" ..item1.. "- ve bir miktar para çıktı!", "success")
        Player.Functions.AddMoney("cash", Config.Money)
    elseif random == 2 then
        Player.Functions.AddItem(item2, Config.RandomBigBox)
        TriggerClientEvent('QBCore:Notify', source, "Sandığın içinden -" ..item2.. "- ve bir miktar para çıktı!", "success")
        Player.Functions.AddMoney("cash", Config.Money)
    elseif random == 3 then
        Player.Functions.AddItem(item3, Config.RandomBigBox)
        Player.Functions.AddMoney("cash", Config.Money)
        TriggerClientEvent('QBCore:Notify', source, "Sandığın içinden -" ..item3.. "- ve bir miktar para çıktı!", "success")
    elseif random > 4 then
        TriggerClientEvent('QBCore:Notify', source, "Sandık boş çıktı!", "error")
    end
end)
