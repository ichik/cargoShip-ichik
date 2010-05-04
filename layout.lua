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

local durability = cargoShip{
    name = "Durability",
	scale = 1.2
}
durability:SetPoint("BOTTOMLEFT",30,5)

local money = cargoShip{
	name = "|cFFFFB366Ara|r Money",
	parent = durability,
}
money:SetPoint("RIGHT",80, 0)

local friends = cargoShip{
	name = "|cFFFFB366Ara|r Friends",
	parent = money,
}
friends:SetPoint("RIGHT",80, 0)

local guild = cargoShip{
	name = "|cFFFFB366Ara|r Guild",
	parent = friends,
}
guild:SetPoint("RIGHT",40, 0)

local pager = cargoShip{
	name = "nanoTalk",
	parent = guild,
}
pager:SetPoint("RIGHT",45, 0)

--[[BOTTOM RIGHT ]]--

local latency = cargoShip{
	name = "shLatency",
	scale = 1.2
}
latency:SetPoint("BOTTOMRIGHT", -30,5)

local memory = cargoShip{
	name = "shMem",
	parent = latency
}
memory:SetPoint("LEFT",-80,0)

local fps = cargoShip{
	name = "shFPS",
	parent = memory
}
fps:SetPoint("LEFT",-60,0)

local stack = cargoShip{
	name = "BankStack",
	parent = fps,
	noText = true
}
stack:SetPoint("LEFT",-40,0)

local dps = cargoShip{
	name = "Skada",
	parent = stack
}
dps:SetPoint("LEFT",-100,0)

--[[ TOP ]]--

local equip = cargoShip{
	name = "Broker_Equipment",
	scale = 1.2
}
equip:SetPoint("TOP",-20,-5)

local err = cargoShip{
	name = "tekErr",
	parent = equip
}
err:SetPoint("RIGHT",80,0)

local vol = cargoShip{
	name = "Volumizer",
	parent = err
}
vol:SetPoint("RIGHT",40,0)

local loot = cargoShip{
	name = "AtlasLoot",
	parent = vol
}
loot:SetPoint("RIGHT",30,0)

f:RegisterEvent"PLAYER_ENTERING_WORLD"