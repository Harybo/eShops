fx_version 'adamant'

game 'gta5'

------------ RAGEUI ------------


client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",

    "src/components/*.lua",

    "src/menu/elements/*.lua",

    "src/menu/items/*.lua",

    "src/menu/panels/*.lua",

    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",

}


client_scripts {
    'electronique/tel_client.lua',
    'armes/arme_client.lua',
    'armes/ammunation_client.lua',
	'epicerie/ltd_client.lua'
}


server_scripts {
    'armes/arme_server.lua',
    'electronique/tel_server.lua',
    'armes/ammunation_server.lua',
	'epicerie/ltd_server.lua'
}



dependencies {
	'es_extended'
}
