WindowFrame = _G.WindowFrame
Title = vgui.Create( "DLabel", WindowFrame )
Title:SetSize( 80, 50 )
Title:SetPos( 200, 40 )
Title:SetText( "Settings" )
Title:SetTextColor( Color( 255, 255, 255) )
Title:SetFont( fontNameTitle )

local ModNotifCheckbox = WindowFrame:Add( "DCheckBoxLabel" )
ModNotifCheckbox:SetPos( 210, 80 )
ModNotifCheckbox:SetTextColor( Color( 255, 255, 255) )
ModNotifCheckbox:SetText("Notification about mod installed")
ModNotifCheckbox:SetValue( _G.config["modinstallnotif"] )
ModNotifCheckbox:SizeToContents()
function ModNotifCheckbox:OnChange( val )
	if val then
		_G.config["modinstallnotif"] = "true"
	else
		_G.config["modinstallnotif"] = "false"
	end
end

local ModBootDialog = WindowFrame:Add( "DCheckBoxLabel" )
ModBootDialog:SetPos( 210, 100 )
ModBootDialog:SetTextColor( Color( 255, 255, 255) )
ModBootDialog:SetText("Log in console mod's default boot up dialogue")
ModBootDialog:SetValue( _G.config["bootupdialogue"] )
ModBootDialog:SizeToContents()
function ModBootDialog:OnChange( val )
end

local Apply = vgui.Create( "DButton", WindowFrame ) // Create the button and parent it to the frame
Apply:SetText( "Apply" )					// Set the text on the button
Apply:SetPos( 588, 415 )					// Set the position on the frame
Apply:SetSize( 100, 30 )					// Set the size
Apply.DoClick = function()				// A custom function run when clicked ( note the . instead of : )
    configfile = util.TableToJSON(_G.config)
    file.Write("fast_taunt/config.json", configfile)
end

local Cancel = vgui.Create( "DButton", WindowFrame ) // Create the button and parent it to the frame
Cancel:SetText( "Cancel" )					// Set the text on the button
Cancel:SetPos( 480, 415 )					// Set the position on the frame
Cancel:SetSize( 100, 30 )					// Set the size
Cancel.DoClick = function()				// A custom function run when clicked ( note the . instead of : )
    notifmodinstall = _G.config["modinstallnotif"]
    include("menu/fast_taunt_dframe_menu.lua")
end
