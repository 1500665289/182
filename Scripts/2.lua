
local tbTable = GameMain:GetMod("_ModifierScript");
local tbModifier = tbTable:GetModifier("Female_Model_Change_Lua_2112");
local skin = {
{n = 1 ,Mod = "Mod/Npc/Human/Npc1/CJC.FBX"  ,CHName = "[color=#7FFFD4]陈靖仇[/color]",Role = "Spr/Npc/CJC.png"},
{n = 2 ,Mod = "Mod/Npc/Human/Npc1/ER.FBX"  ,CHName = "[color=#66CD00]拓跋玉儿[/color]",Role = "Spr/Npc/ER.png"},
{n = 3 ,Mod = "Mod/Npc/Human/Npc1/YX.FBX"  ,CHName = "[color=#66CD00]于小雪[/color]",Role = "Spr/Npc/YX.png"},
{n = 4 ,Mod = "Mod/Npc/Human/Npc1/ywt.FBX"  ,CHName = "[color=#66CD00]宇文拓[/color]",Role = "Spr/Npc/ywt.png"},
{n = 5 ,Mod = "Mod/Npc/Human/Npc1/nk.FBX"  ,CHName = "[color=#66CD00]独孤宁珂[/color]",Role = "Spr/Npc/nk.png"},
{n = 6 ,Mod = "Mod/Npc/Human/Npc1/st.FBX"  ,CHName = "[color=#66CD00]赛特[/color]",Role = "Spr/Npc/st.png"},
{n = 7 ,Mod = "Mod/Npc/Human/Npc1/lj.FBX"  ,CHName = "[color=#66CD00]李靖[/color]",Role = "Spr/Npc/lj.png"},
{n = 8 ,Mod = "Mod/Npc/Human/Npc1/lj.FBX"  ,CHName = "[color=#66CD00]哪吒[/color]",Role = "Spr/Npc/"},
{n = 9 ,Mod = "Mod/Npc/Human/Npc1/nk.FBX"  ,CHName = "[color=#66CD00]孙悟空[/color]",Role = "Spr/Npc/"},
{n = 10 ,Mod = "Mod/Npc/Human/Npc1/st.FBX"  ,CHName = "[color=#66CD00]单小小[/color]",Role = "Spr/Npc/"},
{n = 11 ,Mod = "Mod/Npc/Human/Npc1/fx.FBX"  ,CHName = "[color=#66CD00]尉迟嫣红[/color]",Role = "Spr/Npc/"},
{n = 12 ,Mod = "Mod/Npc/Human/Npc1/lj.FBX"  ,CHName = "[color=#66CD00]九凤[/color]",Role = "Spr/Npc/"},
{n = 13 ,Mod = "Mod/Npc/Human/Npc1/diren.FBX"  ,CHName = "[color=#66CD00]氐人[/color]",Role = "Spr/Npc/diren.png"},
{n = 14 ,Mod = "Mod/Npc/Human/Npc1/ms.FBX"  ,CHName = "[color=#66CD00]古月[/color]",Role = "Spr/Npc/ms.png"},
}



function tbModifier:Enter(modifier, npc)
	modifierName = "Female_Model_Change_"..modifier:GetDesc()
	cur = tonumber(modifier:GetDesc())
	for k,v in pairs(skin) do
		if cur == v.n then
			npc:AddNpcModPath(v.Mod)
			npc:SetFixedRolepaint(v.Role)
			world:ShowMsgBox(npc:GetName().."模型和头像变成 "..v.CHName, "Fantasy Appearance")
			npc:RemoveModifier(modifierName)
		end
	end
	if npc.view ~= nil then
		npc.view.needUpdateMod = true;
	end
end





--function tbModifier:UpdateStack(modifier, npc, add)
--end





--function tbModifier:Leave(modifier, npc)
--end






--function tbModifier:OnGetSaveData()
--end





--function tbModifier:OnLoadData(modifier, npc, tbData)
--end




























