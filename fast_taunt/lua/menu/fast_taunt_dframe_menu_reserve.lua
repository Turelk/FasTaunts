if CLIENT then
local function menu_open()
 WindowFrame:Close()
 WindowFrame = vgui.Create("DFrame")
 WindowFrame:SetPos(ScrW() / 4.0, ScrH() / 4.2)
 WindowFrame:SetSize(700, 450)
 WindowFrame:SetSizable(false)
 WindowFrame:SetDraggable( false )
 WindowFrame:SetTitle("Fast Taunter Menu")
 WindowFrame:MakePopup()

 local LeftPanel = vgui.Create( "DPanel", WindowFrame )
 LeftPanel:SetSize(5,450)
 LeftPanel:SetPos(180,25)

 local CatList = vgui.Create( "DCategoryList", WindowFrame )
 CatList:SetSize( 180, 300 )
 CatList:SetPos(0, 23 )

 local Cat = CatList:Add("General")
 ft = Cat:Add("Fast Taunter")
 hi = Cat:Add("Help & Info")
 cred = Cat:Add("Credits")

 local Cat2 = CatList:Add("Taunts")
 taunt = Cat2:Add("Taunts")

 local Cat3 = CatList:Add("Settings")
 gene = Cat3:Add("General")
 funexp = Cat3:Add("Funny & Experimental")
 nsfw = Cat3:Add("NSFW")
 randomizer = Cat3:Add("Randomizer")

 ft.DoClick = function()

 end

 hi.DoClick = function()

 end

 cred.DoClick = function()

 end

 taunt.DoClick = function()

 end

 gene.DoClick = function()
	WindowFrame:Close()
	include("menu/fast_taunt_dframe_menu.lua")
	include("menu/settings/general.lua")
 end

 funexp.DoClick = function()

 end

 nsfw.DoClick = function()

 end

 randomizer.DoClick = function()

 end

 CatList:InvalidateLayout( true )

 surface.CreateFont( "ROBOTOBOLDO", {
	font = "Roboto, Bold", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 13,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = false,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
 } )
 fontNameTitle = "ROBOTOBOLDO"
 configfile = file.Read("fast_taunt/config.json")
 config = util.JSONToTable(configfile)
end

menu_open()
end
