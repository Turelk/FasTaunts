WindowFrame = _G.WindowFrame
sheet = _G.sheet
panel3 = _G.panel3
fontNameTitle = _G.fontNameTitle
colorschemefont = _G.colorschemefont
sheet = _G.sheet

TitleMain = vgui.Create( "DLabel", panel1 )
TitleMain:SetSize( 80, 50 )
TitleMain:SetPos( 10, 0 )
TitleMain:SetText( "FasTaunts" )
TitleMain:SetTextColor( Color( colorschemefont, colorschemefont, colorschemefont) )
TitleMain:SetFont( fontNameTitle )

DescMain = vgui.Create( "DLabel", panel1 )
DescMain:SetSize( 470, 50 )
DescMain:SetPos( 10, 50 )
DescMain:SetText( "FasTaunts is a mod, allowing fast chatting by using json files and math.random()." )
DescMain:SetTextColor( Color( colorschemefont, colorschemefont, colorschemefont) )
DescMain:SetFont( fontNameTitle )
DescMain:SetAutoStretchVertical( true )

DescMain2 = vgui.Create( "DLabel", panel1 )
DescMain2:SetSize( 470, 50 )
DescMain2:SetPos( 10, 70 )
DescMain2:SetText( "This is a menu of this mod, were you can change mod settings." )
DescMain2:SetTextColor( Color( colorschemefont, colorschemefont, colorschemefont) )
DescMain2:SetFont( fontNameTitle )
DescMain2:SetAutoStretchVertical( true )

local Workshop = vgui.Create( "DButton", panel1 )
Workshop:SetText( "Workshop Page" )
Workshop:SetPos( 10, 320 )
Workshop:SetSize( 100, 30 )
Workshop.DoClick = function()
    RequestOpenURL( "https://steamcommunity.com/id/turelk/" )
end

local Github = vgui.Create( "DButton", panel1 )
Github:SetText( "Github Page" )
Github:SetPos( 120, 320 )
Github:SetSize( 100, 30 )
Github.DoClick = function()
    RequestOpenURL( "https://github.com/Turelk/FasTaunter" )
end

local MyWorkshop = vgui.Create( "DButton", panel1 )
MyWorkshop:SetText( "My Workshop :)" )
MyWorkshop:SetPos( 230, 320 )
MyWorkshop:SetSize( 100, 30 )
MyWorkshop.DoClick = function()
    RequestOpenURL( "https://github.com/Turelk/FasTaunter" )
end

MadeBy = vgui.Create( "DLabel", panel1 )
MadeBy:SetSize( 200, 50 )
MadeBy:SetPos( 580, 345 )
MadeBy:SetText( "Made By Turelk" )
MadeBy:SetTextColor( Color( colorschemefont, colorschemefont, colorschemefont) )
