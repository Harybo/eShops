ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

RMenu.Add('shoparme', 'main', RageUI.CreateMenu("Armurie", "Vente d'objet"))
RMenu.Add('shoparme', 'arme', RageUI.CreateSubMenu(RMenu:Get('shoparme', 'main'), "Arme à Feu", "Menu d'arme à feu")) 

local MenuUse = nil
local Table = {
    {name = "~r~Arme à Feu", Descr = "Liste d'arme à Feu !", TitleSubMenu = {Title = "Arme à Feu", Descr = "Menu d'arme à feu"}, InMenu = {
        {name = "Pétoire", Descr = "Petite arme, mais très efficace !", Param = {RightLabel = "~g~35.000$"}, action = 'arme:petoire'},
        {name = "Pistolet", Descr = "Très bonne arme, beaucoup plus puissant qu'un Petoire !", Param = {RightLabel = "~g~45.000$"}, action = 'arme:pistolet'}}
    },
    {name = "~y~Arme Blanche", Descr = "Liste d'arme blanche !", TitleSubMenu = {Title = "Menu Arme Blanche", Descr = "Menu d'arme blanche"}, InMenu = {
        {name = "Point Americain", Descr = "De quoi arracher la bouche à un adversaire !", Param = {RightLabel = "~g~7.500$"}, action = 'arme:pointa'},
        {name = "Couteau", Descr = "Bien tranchant, et très dangereux !", Param = {RightLabel = "~g~8.000$"}, action = 'arme:couteau'},
        {name = "Queue De Billiard", Descr = "Un coup de queue de billiard, moi je te dis t'ai k.o !", Param = {RightLabel = "~g~8.500$"}, action = 'arme:qdb'},
        {name = "Machete", Descr = "Très bon pour decouter du saucisson !", Param = {RightLabel = "~g~10.000$"}, action = 'arme:machete'}}
    },
    {name = "~g~Accessoire", Descr = "Liste d'arme blanche !", TitleSubMenu = {Title = "Menu accessoire", Descr = "Menu d'accessoire"}, InMenu = {
        {name = "Chargeur", Descr = "De quoi recharger ton arme !", Param = {RightLabel = "~g~2.000$"}, action = 'arme:chargeur'},
        {name = "Lampe", Descr = "Tu va pouvoir t'eclerer comme ca !", Param = {RightLabel = "~g~2.500$"}, action = 'arme:lampe'},
        {name = "Skin De Luxe", Descr = "tien, de quoi faire la beauté de ton gun !", Param = {RightLabel = "~g~5.000$"}, action = 'arme:skin'},
        {name = "silencieux", Descr = "De quoi cacher le bruit d'un tire !", Param = {RightLabel = "~g~8.000$"}, action = 'arme:silencieux'}}
    }
}

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('shoparme', 'main'), true, true, true, function()
            for k, v in pairs(Table) do
                RageUI.Button(v.name, v.Descr, {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                        RMenu:Get('shoparme', 'arme'):SetTitle(v.TitleSubMenu.Title)
                        RMenu:Get('shoparme', 'arme'):SetSubtitle(v.TitleSubMenu.Descr)
                        MenuUse = v.InMenu
                    end
                end, RMenu:Get('shoparme', 'arme'))
            end  
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('shoparme', 'arme'), true, true, true, function()
            if MenuUse ~= nil then
                for b, n in pairs(MenuUse) do
                    RageUI.Button(n.name, n.Descr, n.Param, true, function(Hovered, Active, Selected)
                        if (Selected) then
                            TriggerServerEvent(n.action)
                        end
                    end)
                end  
            end 
        end, function()
        end)

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
        Citizen.Wait(5)

        for k in pairs(position) do

            if Vdist(GetEntityCoords(GetPlayerPed(-1), false), position[k].x, position[k].y, position[k].z) <= 1.0 then

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
