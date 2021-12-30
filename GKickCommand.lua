local command = _G['SLASH_GUILD_UNINVITE1'];

AUTOCOMPLETE_LIST['GKICK'] = AUTOCOMPLETE_LIST.GUILD_UNINVITE;

_G.SLASH_GKICK1 = '/gkick';
SlashCmdList['GKICK'] = function(msg)
	print('The corrected command will be filled into your chat box in a second...');
	C_Timer.After(1, function()
		ChatFrame_OpenChat(command .. ' ' .. msg);
	end);
end;
