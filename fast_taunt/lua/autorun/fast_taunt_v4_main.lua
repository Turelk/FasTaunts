if CLIENT then
--Fast Taunt V4 By Turelk
math.randomseed(os.time())
print("Fast Taunt V4 By Turelk")
include("fast_taunt_v4_menu.lua")
configfile = file.Read("fast_taunt/config.json")
config = util.JSONToTable(configfile)
--Adds a command, and recives input.
concommand.Add( "fast_taunt", function( ply, cmd, args, str )
 if str == "" then
  print("Fast Taunt V4 By Turelk")
  print("No file paths assigined...")
  return
 end
 if str == "config" then
  print("Fast Taunt V4 By Turelk")
  print("ERROR: Config file assigined, idiot.")
  return
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
  notification.AddLegacy( "FasTaunt V4.0 is installed!", NOTIFY_GENERIC, 2 )
  surface.PlaySound( "buttons/button14.wav" )
  Msg( "FasTaunt V4.0 is installed!\n" )
  print("FasTaunt V4.0 is installed!")
 end
end
