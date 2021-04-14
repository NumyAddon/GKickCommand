-- upvalue the globals
local _G = getfenv(0);
local AUTOCOMPLETE_LIST = _G.AUTOCOMPLETE_LIST;
local SlashCmdList = _G.SlashCmdList;
local print = _G.print;
local ChatFrame_OpenChat = _G.ChatFrame_OpenChat;
local C_Timer__After = _G.C_Timer.After;

local command = _G['SLASH_GUILD_UNINVITE1'];

AUTOCOMPLETE_LIST['GKICK'] = AUTOCOMPLETE_LIST.GUILD_UNINVITE;

_G.SLASH_GKICK1 = '/gkick';
SlashCmdList['GKICK'] = function(msg)
	print('the corrected command will be filled into your chat box in a second...');
	C_Timer__After(1, function()
		ChatFrame_OpenChat(command .. ' ' .. msg);
	end);
end;