--[[
Name: "sh_chinese.lua".
Product: "EvoRP (Roleplay)".
--]]

if ( !evorp.plugin.get("Hunger") ) then return; end;

-- Define the item table.
local ITEM = {};

-- Set some information about the item.
ITEM.name = "Watermelon";
ITEM.size = 1;
ITEM.cost = 300;
ITEM.category = "Food"
ITEM.model = "models/props_junk/watermelon01.mdl";
ITEM.batch = 10;
ITEM.store = true;
ITEM.plural = "Watermelon";
ITEM.uniqueID = "watermelon";
ITEM.description = "A large watermelon. Restores all hunger.";

-- Called when a player uses the item.
function ITEM:onUse(player)
	player._Hunger.amount = math.Clamp(player._Hunger.amount - 100, 0, 100);
end;

-- Called when a player drops the item.
function ITEM:onDrop(player, position) end;

-- Called when a player destroys the item.
function ITEM:onDestroy(player) end;

-- Register the item.
evorp.item.register(ITEM);
