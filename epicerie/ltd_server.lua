ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-------------------------------------- Dans Nourriture -----------------------------------



RegisterNetEvent('shop:BuyBurger')
AddEventHandler('shop:BuyBurger', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 25
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('croquettes', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)




RegisterNetEvent('shop:BuyPain')
AddEventHandler('shop:BuyPain', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 50
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bread', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('shop:BuyJus')
AddEventHandler('shop:BuyJus', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 50
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('jusfruit', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ d'objet effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)






-------------------------------------- Dans boisson -------------------------------------- 


RegisterNetEvent('shop:BuyEau')
AddEventHandler('shop:BuyEau', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)





RegisterNetEvent('shop:BuyCoca')
AddEventHandler('shop:BuyCoca', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('Coca', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('shop:Buyjuspomme')
AddEventHandler('shop:Buyjuspomme', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 32
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('jusdepomme', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)