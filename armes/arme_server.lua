ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('arme:BuySns')
AddEventHandler('arme:BuySns', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('snspistol', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('arme:BuyPistol')
AddEventHandler('arme:BuyPistol', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 25000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('pistol', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuyPistol50')
AddEventHandler('arme:BuyPistol50', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 30000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('pistol50', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuyPistolcombat')
AddEventHandler('arme:BuyPistolcombat', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 30000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('combatpistol', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuyRevolver')
AddEventHandler('arme:BuyRevolver', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 30000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('revolver', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuyTec9')
AddEventHandler('arme:BuyTec9', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 50000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('machinepistol', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuyScorpion')
AddEventHandler('arme:BuyScorpion', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 50000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('minismg', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuyMicro-SMG')
AddEventHandler('arme:BuyMicro-SMG', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 65000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('microsmg', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuySawnoffshotgun')
AddEventHandler('arme:BuySawnoffshotgun', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 90000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('sawnoffshotgun', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuyCompact')
AddEventHandler('arme:BuyCompact', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('compactrifle', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuyAK')
AddEventHandler('arme:BuyAK', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 250000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('assaultrifle', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuyGus')
AddEventHandler('arme:BuyGus', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 250000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('gusenberg', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuyBul')
AddEventHandler('arme:BuyBul', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 300000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bullpuprifle', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:BuyCar')
AddEventHandler('arme:BuyCar', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 500000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('carbinerifle', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)