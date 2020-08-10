ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('arme:petoire')
AddEventHandler('arme:petoire', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 35000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_SNSPISTOL', 35)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)





RegisterNetEvent('arme:pistolet')
AddEventHandler('arme:pistolet', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_PISTOL', 35)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('arme:couteau')
AddEventHandler('arme:couteau', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 8000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_KNIFE', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)





RegisterNetEvent('arme:qdb')
AddEventHandler('arme:qdb', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 8500
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_POOLCUE', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('arme:pointa')
AddEventHandler('arme:pointa', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 7500  
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_KNUCKLE', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)  



RegisterNetEvent('arme:machete')
AddEventHandler('arme:machete', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10000  
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_MACHETE', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

    RegisterNetEvent('arme:lampe')
    AddEventHandler('arme:lampe', function()
    
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(source)
        local price = 2500
        local xMoney = xPlayer.getMoney()
    
        if xMoney >= price then
    
            xPlayer.removeMoney(price)
            xPlayer.addInventoryItem('flashlight', 1)
            TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        else
             TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
        end
    end)    



    RegisterNetEvent('arme:skin')
    AddEventHandler('arme:skin', function()
    
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(source)
        local price = 5000
        local xMoney = xPlayer.getMoney()
    
        if xMoney >= price then
    
            xPlayer.removeMoney(price)
            xPlayer.addInventoryItem('yusuf', 1)
            TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        else
             TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")   
        end
    end)  



    RegisterNetEvent('arme:silencieux')
    AddEventHandler('arme:silencieux', function()
    
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(source)
        local price = 8000
        local xMoney = xPlayer.getMoney()
    
        if xMoney >= price then
    
            xPlayer.removeMoney(price)
            xPlayer.addInventoryItem('silencieux', 1)
            TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
        else
             TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
        end
    end)  