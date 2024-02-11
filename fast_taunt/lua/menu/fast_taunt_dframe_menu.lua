if CLIENT then
local function menu_open()
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
end

 _G.WindowFrame:Close()
 WindowFrame = vgui.Create("DFrame")
 WindowFrame:SetPos(ScrW() / 4.0, ScrH() / 4.2)
 WindowFrame:SetSize(700, 450)
 WindowFrame:SetSizable( false )
 WindowFrame:SetDraggable( true )
 WindowFrame:SetTitle("FasTaunts Menu")
 WindowFrame:MakePopup()

 _G.fontNameTitle = "ROBOTOBOLDO"
 _G.configfile = file.Read("fast_taunt/config.json")
if _G.configfile ~= nil then
 config = util.JSONToTable(configfile)
else
 include("fast_taunt_config.lua")
end

if not _G.configfile ~= nil then
 if config["colorscheme"] == "white" then
  colorscheme = 230
  _G.colorschemefont = 80
 else
  colorscheme = 30
  _G.colorschemefont = 240
 end
else
  colorscheme = 230
  _G.colorschemefont = 80
end

_G.sheet = vgui.Create( "DPropertySheet", WindowFrame )
sheet:Dock( FILL )

menu1 = vgui.Create( "DPanel", sheet )
include("menu/elements/general.lua")
menu1.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( colorscheme, colorscheme, colorscheme, self:GetAlpha() ) ) end
sheet:AddSheet( "General", menu1, "icon16/application.png" )

menu2 = vgui.Create( "DPanel", sheet )
include("menu/elements/taunts.lua")
menu2.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( colorscheme, colorscheme, colorscheme, self:GetAlpha() ) ) end
sheet:AddSheet( "Taunts", menu2, "icon16/comment.png" )

menu3 = vgui.Create( "DPanel", sheet )
include("menu/elements/settings.lua")
menu3.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( colorscheme, colorscheme, colorscheme, self:GetAlpha() ) ) end
sheet:AddSheet( "Settings", menu3, "icon16/cog.png" )

menu4 = vgui.Create( "DPanel", sheet )
menu4.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( colorscheme, colorscheme, colorscheme, self:GetAlpha() ) ) end
sheet:AddSheet( "Help & Info", menu4, "icon16/information.png" )

menu5 = vgui.Create( "DPanel", sheet )
menu5.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( colorscheme, colorscheme, colorscheme, self:GetAlpha() ) ) end
sheet:AddSheet( "Credits", menu5, "icon16/book.png" )

menu_open()
end
