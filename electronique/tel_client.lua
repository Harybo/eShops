ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

RMenu.Add('tel', 'main', RageUI.CreateMenu("Magasin", "Vente d'objet"))
RMenu.Add('tel', 'autre', RageUI.CreateSubMenu(RMenu:Get('tel', 'main'), "Autre", "Menu Achat"))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('tel', 'main'), true, true, true, function()

            RageUI.Button("~g~Accès au Magasin", "Choisi tes outils !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('tel', 'autre'))
        end, function()
        end)

         RageUI.IsVisible(RMenu:Get('tel', 'nourriture'), true, true, true, function()

            RageUI.Button("Humberger", "Un bon humberger a la Tk78 !", {RightLabel = "~g~45$"}, true, function(Hovered, Active, Selected)
                 if (Selected) then
                     TriggerServerEvent('tel:BuyBurger')
                 end
             end)
        

            RageUI.Button("Pain", "Ce pain est fait maison !", {RightLabel = "~g~12$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('tel:BuyPain')
                end
            end)
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('tel', 'autre'), true, true, true, function()

            RageUI.Button("GPS", "Un petit gps des familles !", {RightLabel = "~g~100$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('tel:gps')
                end
            end)
 
            RageUI.Button("Téléphone", "Un bon bigo tout ca !", {RightLabel = "~g~250$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('tel:tel')
                end
            end)
            RageUI.Button("Carte Sim", "Un nouvelle Carte Sim !", {RightLabel = "~g~100$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('tel:sim')
                end
            end)

        end, function()
        end)


            RageUI.IsVisible(RMenu:Get('tel', 'eau'), true, true, true, function()

                RageUI.Button("Eau", "C'est de la bonne eau sa !", {RightLabel = "~g~8$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('tel:BuyEau')
                    end
                end)



                RageUI.Button("Coca-Cola", "Du bon Coca !", {RightLabel = "~g~20$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                           TriggerServerEvent('tel:BuyCoca')
                     end
                 end)



                RageUI.Button("Jus de Pomme", "Un bon Jus de Pomme, de quoi tu rafraichir !", {RightLabel = "~g~32$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                           TriggerServerEvent('tel:Buyjuspomme')
                     end
                 end)



                       
            end, function()
            end, 1)
    
            Citizen.Wait(0)
        end
    end)
      
    local position = {      
        {x = -657.020 , y = -857.487, z = 24.490, }
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour acceder au ~b~Magasin Informatique",
                        time_display = 1
                    })
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('tel', 'main'), not RageUI.Visible(RMenu:Get('tel', 'main')))
                    end
                end
            end
        end
    end)