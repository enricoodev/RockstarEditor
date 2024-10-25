ESX = exports["es_extended"]:getSharedObject()
local clipDisabled  = true

-----------------------------
--------- FUNCTIONS ---------
-----------------------------

local function avviareg() 
    clipDisabled = false
    StartRecording(1)
    Config.Notification(Config.Lang[Config.Locale].recStart, Config.Notify.info)
end

local function salvareg()
    clipDisabled = true
    StopRecordingAndSaveClip()

    Config.Notification(Config.Lang[Config.Locale].savClip, Config.Notify.success)
end

local function elireg() 
    clipDisabled = true
    StopRecordingAndDiscardClip()

    Config.Notification(Config.Lang[Config.Locale].delClip, Config.Notify.success)
end

local function aprieditor() 
    ActivateRockstarEditor()
end

-----------------------------
---------- COMMAND ----------
-----------------------------

RegisterCommand(Config.CommandEditor, function()
    lib.registerContext({
        id = "menu_rockstar_editor",
        title = Config.Lang[Config.Locale].title,
        options = {
            {
                title = Config.Lang[Config.Locale].startTitle,
                description = Config.Lang[Config.Locale].startDesc,
                disabled = not clipDisabled,
                onSelect = function()
                    avviareg()
                end,
            },
            {
                title = Config.Lang[Config.Locale].saveTitle,
                description = Config.Lang[Config.Locale].saveDesc,
                disabled = clipDisabled,
                onSelect = function()
                    salvareg()
                end,
            },
            {
                title = Config.Lang[Config.Locale].delTitle,
                description = Config.Lang[Config.Locale].delDesc,
                disabled = clipDisabled,
                onSelect = function()
                    elireg()
                end,
            },
            {
                title = Config.Lang[Config.Locale].openTitle,
                description = Config.Lang[Config.Locale].openDesc,
                onSelect = function()
                    aprieditor()
                end,
            },
        }
    })

    lib.showContext('menu_rockstar_editor')
end)

------------------------------
---------- Key Bind ----------
------------------------------

if Config.UseKeyBind then 
    RegisterKeyMapping(Config.CommandEditor, Config.Lang[Config.Locale].infoKey, 'keyboard', Config.KeyBind)
end
