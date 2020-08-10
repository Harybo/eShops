ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

RMenu.Add('shoparme', 'main', RageUI.CreateMenu("Armurie", "Vente d'objet"))
RMenu.Add('shoparme', 'arme', RageUI.CreateSubMenu(RMenu:Get('shoparme', 'main'), "Arme à Feu", "Menu d'arme à feu")) 
RMenu.Add('shoparme', 'armeb', RageUI.CreateSubMenu(RMenu:Get('shoparme', 'main'), "Menu Arme Blanche", "Menu d'arme blanche"))
RMenu.Add('shoparme', 'acces', RageUI.CreateSubMenu(RMenu:Get('shoparme', 'main'), "Menu accessoire", "Menu d'accessoire"))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('shoparme', 'main'), true, true, true, function()

            RageUI.Button("~r~Arme à Feu", "Liste d'arme à Feu !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shoparme', 'arme'))

            RageUI.Button("~y~Arme Blanche", "Liste d'arme blanche !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shoparme', 'armeb'))

            RageUI.Button("~g~Accessoire", "Liste d'arme blanche !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shoparme', 'acces'))

        end, function()
        end)

         RageUI.IsVisible(RMenu:Get('shoparme', 'arme'), true, true, true, function()

            RageUI.Button("Pétoire", "Petite arme, mais très efficace !", {RightLabel = "~g~35.000$"}, true, function(Hovered, Active, Selected)
                 if (Selected) then
                     TriggerServerEvent('arme:petoire')
                 end
             end)

            RageUI.Button("Pistolet", "Très bonne arme, beaucoup plus puissant qu'un Petoire !", {RightLabel = "~g~45.000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('arme:pistolet')
                end
            end)
            
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('shoparme', 'armeb'), true, true, true, function()


           RageUI.Button("Point Americain", "De quoi arracher la bouche à un adversaire !", {RightLabel = "~g~7.500$"}, true, function(Hovered, Active, Selected)
            if (Selected) then
                    TriggerServerEvent('arme:pointa')
                end
            end)


            RageUI.Button("Couteau", "Bien tranchant, et très dangereux !", {RightLabel = "~g~8.000$"}, true, function(Hovered, Active, Selected)
                 if (Selected) then
                    TriggerServerEvent('arme:couteau')
                 end
            end)

            RageUI.Button("Queue De Billiard", "Un coup de queue de billiard, moi je te dis t'ai k.o !", {RightLabel = "~g~8.500$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   TriggerServerEvent('arme:qdb')
                end
           end)

            RageUI.Button("Machete", "Très bon pour decouter du saucisson !", {RightLabel = "~g~10.000$"}, true, function(Hovered, Active, Selected)
             if (Selected) then
                    TriggerServerEvent('arme:machete')
                end
            end)    
            
            


                       
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('shoparme', 'acces'), true, true, true, function()

            RageUI.Button("Chargeur", "De quoi recharger ton arme !", {RightLabel = "~g~2.000$"}, true, function(Hovered, Active, Selected)
                 if (Selected) then
                    TriggerServerEvent('arme:chargeur')
                end
            end)    

            RageUI.Button("Lampe", "Tu va pouvoir t'eclerer comme ca !", {RightLabel = "~g~2.500$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   TriggerServerEvent('arme:lampe')
               end
            end) 


            RageUI.Button("Skin De Luxe", "tien, de quoi faire la beauté de ton gun !", {RightLabel = "~g~5.000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   TriggerServerEvent('arme:skin')
               end
            end)  


            RageUI.Button("silencieux", "De quoi cacher le bruit d'un tire !", {RightLabel = "~g~8.000$"}, true, function(Hovered, Active, Selected)
                 if (Selected) then
                    TriggerServerEvent('arme:silencieux')
                end
             end)             



    end, function()
    end, 1)

    Citizen.Wait(0)
end
end)


    local position = {   
        {x = 22.1 , y = -1107.06, z = 29.8, },   
        {x = -662.342 , y = -934.928, z = 21.829, },   
        {x = 252.603 , y = -50.168, z = 69.941, },
        {x = 810.097 , y = -2157.675, z = 29.619, },

    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour acceder a l'~b~Ammunation",
                        time_display = 1
                    })
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('shoparme', 'main'), not RageUI.Visible(RMenu:Get('shoparme', 'main')))
                    end
                end
            end
        end
    end)