
--[[
@charset "UTF-16LE";
// UTF-16LEのテキスト用
]]


ClfTxt = {}

local SS_Language = SystemData.Settings.Language

function ClfTxt.getString( id, lang )
	if ( not id or id < 1 ) then
		return L""
	end
	local SS_Language = SS_Language or SystemData.Settings.Language
	lang = lang or SS_Language.type
	local texts  = ClfTxt.LangsTxts[ lang ]
	if ( texts and texts[ id ] ) then
		return texts[ id ]
	end
	texts  = ClfTxt.LangsTxts[ SS_Language.LANGUAGE_ENU ]
	if ( texts and texts[ id ] ) then
		return texts[ id ]
	end
	return L"MISSING STRING"
end


ClfTxt.LangsTxts = {}
ClfTxt.LangsTxts[ SS_Language.LANGUAGE_JPN ] = {

--[[
	1000 - 1499 Description
]]
		[1000] = L"コンテナ内アイテムプロパティ表示用のデータが壊れています。\nデータを初期化しました。",


--[[ For Actions:
	3000 - 3999 Name
	4000 - 4999 Description
	5000 - 5500 Category
]]
		-- Actions Name
		[3000] = L"再練成",	-- Reimbue Last
		[3001] = L"容器内全抽出",	-- Unravel Container

		-- Actions Description
		[4000] = L"練成メニュー内の「再練成」を実行します。\n\n※ 練成メニューを先に開いておくこと。",
		[4001] = L"練成メニュー内の「容器内全抽出」を実行します。\n\n※ 練成メニューを先に開いておくこと。",

}
ClfTxt.LangsTxts[ SS_Language.LANGUAGE_ENU ] = {
		-- Description
		[1000] = L"ClfContnrWinData is Broken!!!\nData reset to default",
		
		-- Actions Name
		[3000] = L"Reimbue Last",
		[3001] = L"Unravel Container",

		-- Actions Description
		-- [4000] = L"練成メニュー内の「再練成」を押す。\n\n練成メニューを先に開いておくこと。",
		-- [4001] = L"練成メニュー内の「容器内全抽出」を押す。\n\n練成メニューを先に開いておくこと。",
}

