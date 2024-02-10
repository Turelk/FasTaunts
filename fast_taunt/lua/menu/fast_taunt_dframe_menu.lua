if CLIENT then
local function menu_open()
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
 config = util.JSONToTable(configfile)

if config[colorscheme] == "white" then
 colorscheme = 220
 _G.colorschemefont = 0
else
 colorscheme = 30
 _G.colorschemefont = 240
end

_G.sheet = vgui.Create( "DPropertySheet", WindowFrame )
sheet:Dock( FILL )

panel1 = vgui.Create( "DPanel", sheet )
include("menu/elements/general.lua")
panel1.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( colorscheme, colorscheme, colorscheme, self:GetAlpha() ) ) end
sheet:AddSheet( "General", panel1, "icon16/application.png" )

panel2 = vgui.Create( "DPanel", sheet )
panel2.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( colorscheme, colorscheme, colorscheme, self:GetAlpha() ) ) end
sheet:AddSheet( "Taunts", panel2, "icon16/comment.png" )

panel3 = vgui.Create( "DPanel", sheet )
include("menu/elements/settings.lua")
panel3.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( colorscheme, colorscheme, colorscheme, self:GetAlpha() ) ) end
sheet:AddSheet( "Settings", panel3, "icon16/cog.png" )

panel4 = vgui.Create( "DPanel", sheet )
panel4.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( colorscheme, colorscheme, colorscheme, self:GetAlpha() ) ) end
sheet:AddSheet( "Help & Info", panel4, "icon16/information.png" )

panel5 = vgui.Create( "DPanel", sheet )
panel5.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( colorscheme, colorscheme, colorscheme, self:GetAlpha() ) ) end
sheet:AddSheet( "Credits", panel5, "icon16/book.png" )

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

menu_open()
end
