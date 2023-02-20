fx_version 'cerulean'
game 'gta5'

description 'obu-boxjob'
version '1.0.0'
author 'Kısaca Mert#4111'

server_script {
	'server.lua',
}

client_scripts { 
    'client.lua',
}
shared_scripts { 'config.lua' }

lua54 'yes'

escrow_ignore {
    "config.lua"
}