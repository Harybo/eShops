ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

RMenu.Add('shop', 'main', RageUI.CreateMenu("Magasin", "Vente d'objet par Apu"))
RMenu.Add('shop', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('shop', 'main'), "Pain", "Menu de vente"))
RMenu.Add('shop', 'autre', RageUI.CreateSubMenu(RMenu:Get('shop', 'main'), "Autre", "Menu de test"))
RMenu.Add('shop', 'eau', RageUI.CreateSubMenu(RMenu:Get('shop', 'main'), "Cocaine", "Menu de vente"))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('shop', 'main'), true, true, true, function()

            RageUI.Button("~y~Accède au Magasin", "Choisi ta Nourriture !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shop', 'nourriture'))

        end, function()
        end)

         RageUI.IsVisible(RMenu:Get('shop', 'nourriture'), true, true, true, function()

            RageUI.Button("Croquettes", "", {RightLabel = "~g~25$"}, true, function(Hovered, Active, Selected)
                 if (Selected) then
                     TriggerServerEvent('shop:BuyBurger')
                 end
             end)

             RageUI.Button("Jus de Fruit", "", {RightLabel = "~g~50$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('shop:BuyJus')
                end
            end)
        

            RageUI.Button("Miche de Pain", "Ce pain est fait maison !", {RightLabel = "~g~50$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('shop:BuyPain')
                end
            end)
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('shop', 'autre'), true, true, true, function()

            RageUI.Button("GPS", "Un petit gps des familles !", {RightLabel = "~g~100$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('shop:gps')
                end
            end)
 
            RageUI.Button("Téléphone", "Un bon bigo tout ca !", {RightLabel = "~g~250$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('shop:tel')
                end
            end)

            RageUI.Button("Kit De Reparation", "Des bon outils pour ton vehicule !", {RightLabel = "~g~2000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('shop:BuyKit')
                end
            end)





        end, function()
        end)

            RageUI.IsVisible(RMenu:Get('shop', 'eau'), true, true, true, function()

                RageUI.Button("Eau", "C'est de la bonne eau sa !", {RightLabel = "~g~8$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('shop:BuyEau')
                    end
                end)



                RageUI.Button("Coca-Cola", "Du bon Coca !", {RightLabel = "~g~20$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                           TriggerServerEvent('shop:BuyCoca')
                     end
                 end)



                RageUI.Button("Jus de Pomme", "Un bon Jus de Pomme, de quoi tu rafraichir !", {RightLabel = "~g~32$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                           TriggerServerEvent('shop:Buyjuspomme')
                     end
                 end)



                       
            end, function()
            end, 1)
    
            Citizen.Wait(0)
        end
    end)

    local position = {         
        {x = 373.87, y = 326.42, z =  103.56, },  
        {x = 1169.37, y = -297.28, z =  69.09, },  
        {x = 1163.44, y = -323.037, z =  69.20, },  
        {x = 1135.64, y = -982.177, z =  46.41, },  
        {x = -1222.90, y = -907.18, z =  12.326, },
        {x = -47.770, y = -1757.13, z =  29.421, },
        {x = -1487.434, y = -378.900, z =  40.163, },
        {x = 25.687, y = -1347.081, z = 29.497, },
        {x = -707.32, y = -914.55, z = 19.22, }
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour acceder au ~b~Shop",
                        time_display = 1
                    })
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('shop', 'main'), not RageUI.Visible(RMenu:Get('shop', 'main')))
                    end
                end
            end
        end
    end)