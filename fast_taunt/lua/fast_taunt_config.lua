--Fast Taunt V4 By Turelk
local function configcreate()
table_reserve = {
    ["bootupdialogue"] = "true",
    ["interpretation"] = "true",
    ["blocknsfwinfo"] = "false",
    ["noswearwords"] = "false",
    ["nonsfw"] = "false",
    ["modinstallnotif"] = "true",
    ["mathrandomseed"] = "os.time()",
    ["killingtauntfile"] = "taunt",
    ["randomizerresults"] = "false",
    ["mathrandomcustomseed"] = "false",
    ["killingtaunt"] = "true",
    ["colorscheme"] = "white",
}
table_reserve_preconfig = {
    ["configcreatedonce"] = "false",
}

preconfigfile = file.Read("fast_taunt/preconfig.json") -- Reads the preconfig file
if preconfigfile == nil then -- If it doesn't exists, it creates it.
    reserve_preconfig = util.TableToJSON(table_reserve_preconfig)
    file.Write("fast_taunt/preconfig.json", reserve_preconfig)
    configcreate()
end

preconfig = util.JSONToTable(preconfigfile)
configfile = file.Read("fast_taunt/config.json") -- Reads the config file
if configfile == nil and preconfig["configcreatedonce"] == "false" then -- If it doesn't exists, it creates it.
    reserve_config = util.TableToJSON(table_reserve)
    file.Write("fast_taunt/config.json", reserve_config)
    table_reserve_preconfig["configcreatedonce"] = "true"
    reserve_preconfig = util.TableToJSON(table_reserve_preconfig)
    file.Write("fast_taunt/preconfig.json", reserve_preconfig)
end
end
configcreate()
