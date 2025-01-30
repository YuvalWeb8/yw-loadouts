fx_version 'cerulean'
game 'gta5'

version '1.0.0'
author 'YuvalWeb'
discord '.yuvalweb_'
description 'FiveM Loadout menu'

shared_scripts {
    'config.lua' 
}


client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

files {
    'html/index.html',       
    'Images/Loadouts/*',      
}

ui_page 'html/index.html'    


lua54 'yes'

