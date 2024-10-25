fx_version "cerulean"
game "gta5"
lua54 "yes"     
version "1.0.0"

author "ByteDevs - Enrico"
description "a simple rockstar editor script"

client_script "client.lua"

shared_scripts {
    "@ox_lib/init.lua",
    "config.lua"
}

dependency "ox_lib"
