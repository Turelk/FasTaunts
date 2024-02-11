if CLIENT then
--Fast Taunt V4 By Turelk
local hint_showned = false
print("Fast Taunt V4.0 By Turelk")
include("fast_taunt_menu.lua")
include("fast_taunt_config.lua")
configfile = file.Read("fast_taunt/config.json")
config = util.JSONToTable(configfile)
--Adds a command, and recives input.
concommand.Add( "fast_taunt", function( ply, cmd, args, str )

 if config["mathrandomcustomseed"] == true then
  randomseed = config["mathrandomseed"]
  math.randomseed(randomseed)
 else
  math.randomseed(os.time())
 end

 if str == "" then
  print("Fast Taunt V4 By Turelk")
  print("No parameters assigined...")
  return
 end

 if str == "config" then
  print("Fast Taunt V4 By Turelk")
  print("ERROR: Config file assigined, idiot.")
  return
 end

 if config["interpretation"] == "true" then
    interpretationfile = file.Read("fast_taunt/interpretation.json")
    interpretation = util.JSONToTable(interpretationfile)
    if interpretation[str] ~= nil then
        str = interpretation[str]
        print("Interpretation detected!")
    end
 end

 pathtofile = "fast_taunt/".. str.. ".json"
 tauntraw = file.Read(pathtofile)
 print("Reading fast_taunt/".. str.. ".json")
 taunt_table = util.JSONToTable(tauntraw)
 num = math.random(1,#taunt_table)
 taunt = taunt_table[num]
 RunConsoleCommand( "say", taunt)
end )


 if config["modinstallnotif"] == "true" then
    gameevent.Listen( "player_connect" )
    hook.Add("player_connect", "AnnounceConnection", function( data )
        for i, ply in ipairs( player.GetAll() ) do
            notification.AddLegacy( "FasTaunt V4.0 is installed!", NOTIFY_GENERIC, 3 )
            surface.PlaySound( "buttons/button15.wav" )
            Msg( "FasTaunt V4.0 is installed!\n" )
        end
    end)
 end
gameevent.Listen( "player_spawn" )
hook.Add( "player_spawn", "player_spawn_example", function( data )
    if hint_showned == false then
        notification.AddLegacy( "FasTaunt V4.0 is installed!", NOTIFY_GENERIC, 3 )
        surface.PlaySound( "buttons/button15.wav" )
        Msg( "FasTaunt V4.0 is installed!\n" )
        hint_showned = true
    end
end )

end
