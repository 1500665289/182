
local tbTable = GameMain:GetMod("_ModifierScript");
local tbModifier = tbTable:GetModifier("Male_Model_Change_Lua_2112");
local skin = {
{n = 1 ,Mod = "Mod/Npc/Human/Npc1/xhjx.FBX"  ,CHName = "[color=#66CD00]夏侯瑾轩[/color]",Role = "Spr/Npc/xhjx.png"},
{n = 2 ,Mod = "Mod/Npc/Human/Npc1/hfz.FBX"  ,CHName = "[color=#66CD00]皇甫卓[/color]",Role = "Spr/Npc/hfz.png"},
{n = 3 ,Mod = "Mod/Npc/Human/Npc1/jc.FBX"  ,CHName = "[color=#66CD00]姜承[/color]",Role = "Spr/Npc/jc.png"},
{n = 4 ,Mod = "Mod/Npc/Human/Npc1/cq.FBX"  ,CHName = "[color=#66CD00]长琴[/color]",Role = "Spr/Npc/cq.png"},
{n = 5 ,Mod = "Mod/Npc/Human/Npc1/lm.FBX"  ,CHName = "[color=#66CD00]龙溟[/color]",Role = "Spr/Npc/lm.png"},
{n = 6 ,Mod = "Mod/Npc/Human/Npc1/lxy.FBX"  ,CHName = "[color=#66CD00]李逍遥[/color]",Role = "Spr/Npc/lxy.png"},
{n = 7 ,Mod = "Mod/Npc/Human/Npc1/qs.FBX"  ,CHName = "[color=#66CD00]青石[/color]",Role = "Spr/Npc/qs.png"},
{n = 8 ,Mod = "Mod/Npc/Human/Npc1/ys.FBX"  ,CHName = "[color=#66CD00]玉书[/color]",Role = "Spr/Npc/ys.png"},
{n = 9 ,Mod = "Mod/Npc/Human/Npc1/qw.FBX"  ,CHName = "[color=#66CD00]穹武[/color]",Role = "Spr/Npc/qw.png"},
{n = 10 ,Mod = "Mod/Npc/Human/Npc1/cl.FBX"  ,CHName = "[color=#66CD00]重楼[/color]",Role = "Spr/Npc/cl.png"},
{n = 11 ,Mod = "Mod/Npc/Human/Npc1/hy.FBX"  ,CHName = "[color=#66CD00]幻月[/color]",Role = "Spr/Npc/huanyue.png"},
{n = 12 ,Mod = "Mod/Npc/Human/Npc1/llb.FBX"  ,CHName = "[color=#66CD00]凌波[/color]",Role = "Spr/Npc/lingbo.png"},
{n = 13 ,Mod = "Mod/Npc/Human/Npc1/lly.FBX"  ,CHName = "[color=#66CD00]凌音[/color]",Role = "Spr/Npc/lingyi.png"},
{n = 14 ,Mod = "Mod/Npc/Human/Npc1/wyy.FBX"  ,CHName = "[color=#66CD00]王语嫣[/color]",Role = "Spr/Npc/wangyuyan.png"},
{n = 15 ,Mod = "Mod/Npc/Human/Npc1/mcl.FBX"  ,CHName = "[color=#66CD00]暮菖兰[/color]",Role = "Spr/Npc/muchanglan.png"},
{n = 16 ,Mod = "Mod/Npc/Human/Npc1/x.FBX"  ,CHName = "[color=#66CD00]瑕瑕[/color]",Role = "Spr/Npc/xia.png"},
{n = 17 ,Mod = "Mod/Npc/Human/Npc1/jl.FBX"  ,CHName = "[color=#66CD00]结萝[/color]",Role = "Spr/Npc/jieluo.png"},
{n = 18 ,Mod = "Mod/Npc/Human/Npc1/ws.FBX"  ,CHName = "[color=#66CD00]望舒[/color]",Role = "Spr/Npc/wangshu.png"},
{n = 19 ,Mod = "Mod/Npc/Human/Npc1/xh.FBX"  ,CHName = "[color=#66CD00]羲和[/color]",Role = "Spr/Npc/xihe.png"},
{n = 20 ,Mod = "Mod/Npc/Human/Npc1/yj.FBX"  ,CHName = "[color=#66CD00]瑶姬[/color]",Role = "Spr/Npc/yaoji.png"},
{n = 21 ,Mod = "Mod/Npc/Human/Npc1/gm.FBX"  ,CHName = "[color=#66CD00]句芒[/color]",Role = "Spr/Npc/gm.png"},
{n = 22 ,Mod = "Mod/Npc/Human/Npc1/by.FBX"  ,CHName = "[color=#66CD00]拜月[/color]",Role = "Spr/Npc/by.png"},
{n = 23 ,Mod = "Mod/Npc/Human/Npc1/anu.FBX"  ,CHName = "[color=#66CD00]阿奴[/color]",Role = "Spr/Npc/anu.png"},
{n = 24 ,Mod = "Mod/Npc/Human/Npc1/lyr.FBX"  ,CHName = "[color=#66CD00]林月如[/color]",Role = "Spr/Npc/lyr.png"},
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




























