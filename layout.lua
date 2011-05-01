-- Load the cargoShip-library
local cargoShip = LibStub("LibCargoShip-2.1")

--[[
	Option reference
	================
		name		The name of the data object to use

		parent		parent frame (default: UIParent)
		width		width of the block (updates automatically)
		height		height of the block (default: 12)
		scale		scale of the block (default: 1)
		alpha		alpha value of the block (default: 1)

		fontObject	e.g. GameFontNormalSmall (default: nil)
		font		a path to a font family (default: "Fonts\\FRIZQT__.TTF")
		fontSize	font size (default: 10)
		fontStyle	font style e.g. OUTLINE (default: nil)
		textColor	table holding color of the text (default: { 1, 1, 1 } = white)

		noShadow	if true, it hides the text shadow (default: nil)
		shadowX		shadow x-offset (default: 1)
		shadowY		shadow y-offset (default: -1)

		noIcon		if true, it hides the icon (default: nil)
		noText		if true, it hides the text (default: nil)
		useLabel	if true, it shows the dataobject's name in front of the value (default: nil)
		tagString	a tag string for formatting, e.g. "[name]: [value][suffix]"
]]

--[[ BOTTOM LEFT ]]--

local LPx, LPy = 50, 10

local durability = cargoShip{
    name = "Durability",
	scale = 1.2,
	width = 70,
}
durability:SetPoint("CENTER", UIParent, "BOTTOMLEFT", LPx, LPy)

local money = cargoShip{
	name = "|cFFFFB366Ara|r Money",
	parent = durability,
	width = 70
}
money:SetPoint("CENTER", UIParent, "BOTTOMLEFT", LPx+80, LPy)

local friends = cargoShip{
	name = "|cFFFFB366Ara|r Friends",
	parent = money,
	width = 15
}
friends:SetPoint("CENTER", UIParent, "BOTTOMLEFT", LPx+160, LPy)

local guild = cargoShip{
	name = "|cFFFFB366Ara|r Guild",
	parent = friends,
	width = 50
}
guild:SetPoint("CENTER", UIParent, "BOTTOMLEFT", LPx+190, LPy)

local pager = cargoShip{
	name = "nanoTalk",
	parent = guild,
	width = 20
}
pager:SetPoint("CENTER", UIParent, "BOTTOMLEFT", LPx+240, LPy)

--[[BOTTOM RIGHT ]]--

local RPx, RPy = -50, 10

local latency = cargoShip{
	name = "shLatency",
	scale = 1.2,
	width = 80
}
latency:SetPoint("CENTER", UIParent, "BOTTOMRIGHT", RPx, RPy)

local fps = cargoShip{
	name = "shFps",
	parent = latency,
	width  = 50
}
fps:SetPoint("CENTER", UIParent, "BOTTOMRIGHT", RPx-90, RPy)

local stack = cargoShip{
	name = "BankStack",
	parent = fps,
	noText = true,
	width = 10
}
stack:SetPoint("CENTER", UIParent, "BOTTOMRIGHT", RPx-150, RPy)

local dps = cargoShip{
	name = "Numeration",
	parent = stack,
	width = 110
}
dps:SetPoint("CENTER", UIParent, "BOTTOMRIGHT", RPx-220, RPy)

--[[ TOP ]]--

local TPx, TPy = -50, -10

local equip = cargoShip{
	name = "Broker_Equipment",
	scale = 1.2,
	width = 120
}
equip:SetPoint("CENTER", UIParent, "TOP",TPx,TPy)

local err = cargoShip{
	name = "tekErr",
	parent = equip,
	width = 10
}
err:SetPoint("CENTER", UIParent, "TOP",TPx+55,TPy)

local vol = cargoShip{
	name = "Volumizer",
	parent = equip,
	width = 40
}
vol:SetPoint("CENTER", UIParent, "TOP",TPx+90,TPy)

local loot = cargoShip{
	name = "AtlasLoot",
	parent = vol,
	noText = true,
	width = 10
}
loot:SetPoint("CENTER", UIParent, "TOP",TPx+135,TPy)