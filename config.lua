Config = {}

-- Sets the language. Use "ESX.GetConfig().Config.Locale" for ESX local configuration,
-- or set it directly (e.g., "en" for English)
Config.Locale = GetConvar("esx:locale", "en")

-- Command to open the menu
Config.CommandEditor = "editor"

-- Add your notification system or modify the ESX notification function
Config.Notification = function(message, type)
    ESX.ShowNotification(message, type)
end

-- Notify Types
Config.Notify = {
    info = 'info',
    success = 'success'
}

-- Enable or disable key mapping
Config.UseKeyBind = false
-- Key to associate at the function 
Config.KeyBind = "j"

-- Supported languages. If your language isn't available, you can add it here
Config.Lang = {
    ['en'] = {
        recStart = "Recording started!",
        savClip = "You have saved the clip!",
        delClip = "You have deleted the clip!",
        
        title = "RockStar Editor",
        startTitle = "Start Recording",
        startDesc = "Record a clip with Rockstar Editor!",
        saveTitle = "Save Recording",
        saveDesc = "Save the clip you just recorded!",
        delTitle = "Delete Recording",
        delDesc = "If you don't like the scene you can delete it!", 
        openTitle = "Open Rockstar Editor", 
        openDesc = "WARNING: You will be disconnected from the server!", 
        infoKey = "Open the Rockstar Editor",
    },
    ['it'] = {
        recStart = "Registrazione iniziata!",
        savClip = "Hai salvato la clip!",
        delClip = "hai eliminato la clip!",
        
        title = "RockStar Editor",
        startTitle = "Avvia registrazione",
        startDesc = "Registra una clip con rockstar editor!",
        saveTitle = "Salva la registrazione",
        saveDesc = "Salva la clip che stai registrando!",
        delTitle = "Elimina la registrazione",
        delDesc = "Se la clip non è di tuò gradimento puoi eliminarla!", 
        openTitle = "Apri Rockstar Editor", 
        openDesc = "Attenzione: Verrai disconnesso dal server!", 
        infoKey = "Apri il Rockstar Editor",
    }

}
