ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)


RMenu.Add('arme', 'main', RageUI.CreateMenu("Magasin", "Vente d'objet"))
RMenu.Add('arme', 'autre', RageUI.CreateSubMenu(RMenu:Get('arme', 'main'), "Autre", "Menu Achat"))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('arme', 'main'), true, true, true, function()

            RageUI.Button("~g~Accès au Magasin", "Choisi tes armes !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('arme', 'autre'))
        end, function()
        end)



         RageUI.IsVisible(RMenu:Get('arme', 'nourriture'), true, true, true, function()

            RageUI.Button("Humberger", "Un bon humberger a la Tk78 !", {RightLabel = "~g~45$"}, true, function(Hovered, Active, Selected)
                 if (Selected) then
                     TriggerServerEvent('arme:BuyBurger')
                 end
             end)
        

            RageUI.Button("Pain", "Ce pain est fait maison !", {RightLabel = "~g~12$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyPain')
                end
            end)
        end, function()
        end)





        RageUI.IsVisible(RMenu:Get('arme', 'autre'), true, true, true, function()

            RageUI.Button("Petoire", "Fais en bonne usage !", {RightLabel = "~g~20000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuySns')
                end
            end)
            RageUI.Button("Pistolet", "Fais en bonne usage !", {RightLabel = "~g~25000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyPistol')
                end
            end) 
            RageUI.Button("Pistolet Calibre 50", "Fais en bonne usage !", {RightLabel = "~g~30000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyPistol50')
                end
            end)
            RageUI.Button("Pistolet de Combat", "Fais en bonne usage !", {RightLabel = "~g~30000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyPistolcombat')
                end
            end)
            RageUI.Button("Revolver", "Fais en bonne usage !", {RightLabel = "~g~30000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyRevolver')
                end
            end)
            RageUI.Button("Tec-9", "Fais en bonne usage !", {RightLabel = "~g~50000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyTec9')
                end
            end)
            RageUI.Button("Skorpion", "Fais en bonne usage !", {RightLabel = "~g~50000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyScorpion')
                end
            end)
            RageUI.Button("Micro-SMG", "Fais en bonne usage !", {RightLabel = "~g~65000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyMicro-SMG')
                end
            end)
            RageUI.Button("Canon Scié", "Fais en bonne usage !", {RightLabel = "~g~90000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuySawnoffshotgun')
                end
            end)
            RageUI.Button("AK Compact", "Fais en bonne usage !", {RightLabel = "~g~150000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyCompact')
                end
            end) 
            RageUI.Button("AK-47", "Fais en bonne usage !", {RightLabel = "~g~250000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyAK')
                end
            end)
            RageUI.Button("Mitrailleuse Gusenberg", "Fais en bonne usage !", {RightLabel = "~g~250000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyGus')
                end
            end)
            RageUI.Button("Fusil Bullpup", "Fais en bonne usage !", {RightLabel = "~g~300000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyBul')
                end
            end)
            RageUI.Button("Carabine", "Fais en bonne usage !", {RightLabel = "~g~500000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:BuyCar')
                end
            end)


        end, function()
        end)


            RageUI.IsVisible(RMenu:Get('arme', 'eau'), true, true, true, function()

                RageUI.Button("Eau", "C'est de la bonne eau sa !", {RightLabel = "~g~8$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('arme:BuyEau')
                    end
                end)



                RageUI.Button("Coca-Cola", "Du bon Coca !", {RightLabel = "~g~20$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                           TriggerServerEvent('arme:BuyCoca')
                     end
                 end)



                RageUI.Button("Jus de Pomme", "Un bon Jus de Pomme, de quoi tu rafraichir !", {RightLabel = "~g~32$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                           TriggerServerEvent('arme:Buyjuspomme')
                     end
                 end)



                       
            end, function()
            end, 1)
    
            Citizen.Wait(0)
        end
    end)


    local position = {        
        {x = 734.510 , y = -2983.765, z = -39.000, },
        {x = -146.08 , y = -604.40, z = 167.00, }
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour acceder au ~b~arme",
                        time_display = 1
                    })
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('arme', 'main'), not RageUI.Visible(RMenu:Get('arme', 'main')))
                    end
                end
            end
        end
    end)