function HelloWorld(self) 
        message("poot poot poot poot poot"); 
end


-- 1. Pick HELLOWORLD as the unique identifier.
-- 2. Pick /hiw and /hellow as slash commands (/hi and /hello are actual emotes)
SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/lootpoot', '/poot'; -- 3.
function SlashCmdList.HELLOWORLD(msg, editBox) -- 4.
    HelloWorld(self);
end


-- 
-- frame:RegisterEvent("PLAYER_MONEY");
-- local function eventHandler(self, event, ...)
 -- print("Hello World! Hello " .. event);
 -- SendChatMessage("Hello Bob!", "SAY", "Common", "Badssdob");
-- end
-- frame:SetScript("OnEvent", eventHandler);

local frame = CreateFrame("FRAME", "LootPootAddonFrame");
frame:RegisterEvent("PLAYER_ENTERING_WORLD");
frame:RegisterEvent("PLAYER_MONEY");
frame:RegisterEvent("CHAT_MSG_GUILD_ACHIEVEMENT");
frame:RegisterEvent("UNIT_SPELLCAST_START");
local function eventHandler(self, event, ...)
local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 = ...
	if event == "PLAYER_MONEY" then
		print("Hello World! Hello money " .. event);
		SendChatMessage("My money changed", "GUILD", "Common", "Badssdob");
	end
	
	if event == "PLAYER_ENTERING_WORLD" then
		print("Hello World! Hello enter" .. event);
		SendChatMessage("Hello Bob enter!", "SAY", "Common", "Badssdob");
	end
	
	if event == "CHAT_MSG_GUILD_ACHIEVEMENT" then
		SendChatMessage("Congrats " .. arg2 .. "! :D :D", "GUILD", "Common", "Badssdob");
	end
	
	if event == "UNIT_SPELLCAST_START" then
		SendChatMessage( arg1 .. " is casting " .. arg2 .. "! :D :D", "SAY", "Common", "Badssdob");
		SendChatMessage( arg1 .. " is casting " .. arg2 .. "! :D :D", "PARTY", "Common", "Badssdob");
	end
	
end
frame:SetScript("OnEvent", eventHandler);


