ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('tel:tel')
AddEventHandler('tel:tel', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 250
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('phone', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('tel:gps')
AddEventHandler('tel:gps', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('gps', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('tel:sim')
AddEventHandler('tel:sim', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('sim', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)