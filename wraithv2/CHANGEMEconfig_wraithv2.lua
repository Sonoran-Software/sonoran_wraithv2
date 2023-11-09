--[[
    Sonoran Plugins

    Plugin Configuration

    Put all needed configuration in this file.
]]
local config = {
    enabled = false,
    pluginName = "wraithv2", -- name your plugin here
    pluginAuthor = "SonoranCAD", -- author
    configVersion = "1.6"

    -- use vehicle registration expirations, or not
    ,useExpires = true
     -- use middle initials?
    ,useMiddleInitial = true
    -- alert if no registration was found on scan?
    ,alertNoRegistration = true
    -- if your custom vehicle record is different, change the below
    ,statusUid = "status"
    ,expiresUid = "expiration"
    -- statuses to flag on when scanned
    ,flagOnStatuses = {"STOLEN", "EXPIRED", "PENDING", "SUSPENDED"}
    -- Vehicle classes that will NOT get ran through CAD | Classes: https://docs.fivem.net/natives/?_0x29439776AAA00A62
    ,vehTypeFilter = { 13, 14, 15, 16, 21, 22 }
}

if config.enabled then
    Config.RegisterPluginConfig(config.pluginName, config)
end