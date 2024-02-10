WindowFrame = _G.WindowFrame
sheet = _G.sheet
panel3 = _G.panel3
fontNameTitle = _G.fontNameTitle
colorschemefont = _G.colorschemefont
sheet = _G.sheet
configfileraw = _G.configfile
table_reserve = {
    ["bootupdialogue"] = "true",
    ["interpretation"] = "true",
    ["blocknsfwinfo"] = "false",
    ["noswearwords"] = "false",
    ["nonsfw"] = "false",
    ["modinstallnotif"] = "false",
    ["mathrandomseed"] = "os.time()",
    ["killingtauntfile"] = "taunt",
    ["randomizerresults"] = "false",
    ["mathrandomcustomseed"] = "false",
    ["killingtaunt"] = "true",
    ["colorscheme"] = "white",
}
valtest = valueofvalie
if configfileraw == valtest then
TitleBad = vgui.Create( "DLabel", panel3 )
TitleBad:SetSize( 180, 80 )
TitleBad:SetPos( 10, 0 )
TitleBad:SetText( "No Configuration file found! :(" )
TitleBad:SetTextColor( Color( colorschemefont, colorschemefont, colorschemefont) )
TitleBad:SetFont( fontNameTitle )
local ConfCreate = vgui.Create( "DButton", panel3 )
ConfCreate:SetText( "Create One" )
ConfCreate:SetPos( 560, 320 )
ConfCreate:SetSize( 100, 30 )
ConfCreate.DoClick = function()
    configfiledatareserve = util.TableToJSON(table_reserve)
    file.Write("fast_taunt/config.json", configfiledatareserve)
    include("menu/fast_taunt_dframe_menu.lua")
end
return
else
TitleSettings = vgui.Create( "DLabel", panel3 )
TitleSettings:SetSize( 80, 50 )
TitleSettings:SetPos( 10, 0 )
TitleSettings:SetText( "Settings" )
TitleSettings:SetTextColor( Color( colorschemefont, colorschemefont, colorschemefont) )
TitleSettings:SetFont( fontNameTitle )

local ModNotifCheckbox = panel3:Add( "DCheckBoxLabel" )
ModNotifCheckbox:SetPos( 20, 40 )
ModNotifCheckbox:SetTextColor( Color( colorschemefont, colorschemefont, colorschemefont) )
ModNotifCheckbox:SetText("Notification about mod installed")
ModNotifCheckbox:SetValue( _G.config["modinstallnotif"] )
ModNotifCheckbox:SizeToContents()
ModNotifCheckbox:SetTooltip("Should it give you a notification about mod installed. (default: false)")
function ModNotifCheckbox:OnChange( val )
	if val then
		_G.config["modinstallnotif"] = "true"
	else
		_G.config["modinstallnotif"] = "false"
	end
end

local ModBootDialog = panel3:Add( "DCheckBoxLabel" )
ModBootDialog:SetPos( 20, 60 )
ModBootDialog:SetTextColor( Color( colorschemefont, colorschemefont, colorschemefont) )
ModBootDialog:SetText("Log in console mod's default boot up dialogue")
ModBootDialog:SetValue( _G.config["bootupdialogue"] )
ModBootDialog:SizeToContents()
ModBootDialog:SetTooltip("Should it log default boot up dialogue in the console. (default: true)")
function ModBootDialog:OnChange( val )
    if val then
        _G.config["bootupdialogue"] = "true"
    else
        _G.config["bootupdialogue"] = "false"
    end
end


local AllowInterpretation = panel3:Add( "DCheckBoxLabel" )
AllowInterpretation:SetPos( 20, 80 )
AllowInterpretation:SetTextColor( Color( colorschemefont, colorschemefont, colorschemefont) )
AllowInterpretation:SetText("Allow Interpretation")
AllowInterpretation:SetValue( _G.config["interpretation"] )
AllowInterpretation:SizeToContents()
AllowInterpretation:SetTooltip("Allow interpretations from interpretation.json file (will replace fast_taunt's parameter marked in interpretation.json file as a key, with it's value.)")
function AllowInterpretation:OnChange( val )
    if val then
        _G.config["interpretation"] = "true"
    else
        _G.config["interpretation"] = "false"
    end
end

local RaCustomSeeder = vgui.Create( "DTextEntry", panel3 )
    RaCustomSeeder:SetPos( 20, 100 )
	RaCustomSeeder:DockMargin( 0, 5, 0, 0 )
	RaCustomSeeder:SetPlaceholderText(_G.config["mathrandomseed"])
    RaCustomSeeder:SetTooltip("NON WORKING FOR NOW! Sets custom math.random() seed.")
	RaCustomSeeder.OnEnter = function( self )
        _G.config["mathrandomseed"] = self:GetValue()
    end


local colorschemebox = vgui.Create( "DComboBox", panel3 )
colorschemebox:SetPos( 20, 125 )
colorschemebox:SetSize( 105, 20 )
colorschemebox:SetValue( _G.config["colorscheme"] )
colorschemebox:AddChoice( "white" )
colorschemebox:AddChoice( "black" )
colorschemebox:SetTooltip("GUI colorscheme")
colorschemebox.OnSelect = function( self, index, value )
	print( value .. " was selected at index " .. index )
	_G.config["colorscheme"] = value
end

local Apply = vgui.Create( "DButton", panel3 )
Apply:SetText( "Apply" )
Apply:SetPos( 560, 320 )
Apply:SetSize( 100, 30 )
Apply:SetTooltip("Apply changes")
Apply.DoClick = function()
    configfile = util.TableToJSON(_G.config)
    file.Write("fast_taunt/config.json", configfile)
    include("menu/fast_taunt_dframe_menu.lua")
    _G.WindowFrame:Close()
end

local Cancel = vgui.Create( "DButton", panel3 )
Cancel:SetText( "Cancel" )
Cancel:SetPos( 450, 320 )
Cancel:SetSize( 100, 30 )
Cancel:SetTooltip("Cancel all the changes")
Cancel.DoClick = function()
     include("menu/fast_taunt_dframe_menu.lua")
     _G.WindowFrame:Close()
end

Warning = vgui.Create( "DLabel", panel3 )
Warning:SetSize( 200, 50 )
Warning:SetPos( 500, 345 )
Warning:SetText( "WARNING: This is beta menu." )
Warning:SetTextColor( Color( colorschemefont, colorschemefont, colorschemefont) )
end
