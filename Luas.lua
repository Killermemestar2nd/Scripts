local C4Planted = entities_FindByClass("CPlantedC4")
local allowDraw = false
local defuseKit = false
local drawC4Planting = false
local drawBeginC4Planting = false
local drawBeginC4Defuse = false 
local X, Y = draw_GetScreenSize()
local XB/2, YB = draw_GetScreenSize()
local screenY3 = screenY/2
local DefuseTime = math_floor(ToDefuse[1]:GetProp("m_flDefuseLength"))
local function mathfix() local screenX, screenY = draw_GetScreenSize() Y3 = Y/2 end cb_Register("Draw", "fixes screenY3", mathfix)
local Bomb = entities.FindByClass("CPlantedC4")[1];
local BombMath =
--GetScreenSize( int& width, int& height ) = 0;

local screenX, screenY = draw_GetScreenSize()
 
defuse time not kit draw_FilledRect(0, 9, 10, Y)
draw_Color(0,0,255,255)
fdefuse kit draw_FilledRect(0, screenY3, 10, Y) 
draw_Color(0,0,255,255)
fill2 = fill2 + godownby2
screenY3 = screenY/2
GetTeamNumber() 2 t GetTeamNumber() 3 ct



 
if defusing == true then
local BombMath = ((globals.CurTime() - Bomb:GetProp("m_flDefuseCountDown")) * 
(0 - 1)) / ((Bomb:GetProp("m_flDefuseCountDown") - Bomb:GetProp("m_flDefuseLength")) - Bomb:GetProp("m_flDefuseCountDown")) + 1;  end 


--bomb timer
function bomb(event)
if Bomb:GetProp("m_bBombTicking") and GUICHECK BOX then 
if event:GetName() == "bomb_beginplant"  then drawBeginC4Planting == true
if event:GetName() == "bomb_abortplant" then 
drawC4Planted == false
drawBeginC4Planting == false 
if event:GetName() == "bomb_planted" then drawC4Planted == false
if event:GetName() == "bomb_begindefuse" then drawC4Defuse == true
if event:GetName() == "bomb_abortdefuse" then drawC4Defuse == false
if event:GetName() == "round_end" then allowDraw == false
if event:GetName() == 'round_start' ) then allowDraw == true
end end end end end end end end end 

-- checks if player has defusekit or nah

if DefuseTime <= 9 then 
defuseKit = true
elseif DefuseTime  <= 4 then 
defuseKit = false
else end 


-- DrawParts




 

-- AlowDrawing
if plantedTime = g_curtime() then allowDraw == true end 

-- Drawing C4 Plant
if drawBeginC4Planting and allowDraw == true then 
draw_Color(0, 255, 0)
draw.RoundedRectFill( 0, 0, ScreenW/200, ScreenH );
draw.Color(0, 135, 255, 255);
draw.RoundedRectFill( 0, ScreenH * BombMath, ScreenW/200, ScreenH );
draw.Color(255, 255, 255, 255);
draw.RoundedRect( 0, 0, ScreenW/200, ScreenH ); end 
--- Draws when C4 Planted
if drawC4Planted and allowDraw == true then 
draw_Color(0, 255, 0) 
draw.RoundedRectFill( 0, 0, ScreenW/200, ScreenH );
draw.Color(0, 135, 255, 255);
draw.RoundedRectFill( 0, ScreenH * BombMath, ScreenW/200, ScreenH );
draw.Color(255, 255, 255, 255);
draw.RoundedRect( 0, 0, ScreenW/200, ScreenH ); end 
-- Draw if too late 
if drawBeginC4Defuse then and allowDraw == true and defuseKit then
draw_Color(0, 12, 255)
draw.RoundedRectFill( 0, 0, ScreenW/200, ScreenH );
draw.Color(0, 135, 255, 255);
draw.RoundedRectFill( 0, ScreenH * BombMath, ScreenW/200, ScreenH );
draw.Color(255, 255, 255, 255);
draw.RoundedRect( 0, 0, ScreenW/200, ScreenH );
elseif defuseKit then  
draw_Color(77, 169, 255)
draw.RoundedRectFill( 0, 0, ScreenW/200, ScreenH );
draw.Color(0, 135, 255, 255);
draw.RoundedRectFill( 0, ScreenH * BombMath, ScreenW/200, ScreenH );
draw.Color(255, 255, 255, 255);
draw.RoundedRect( 0, 0, ScreenW/200, ScreenH ); end 
-- Draw C4 Blow before defuse
if Bomb:GetProp("m_flC4Blow") > globals.CurTime() - Bomb:GetProp("m_flDefuseLength") - Bomb:GetProp("m_flDefuseCountDown") then 
draw.Color(0, 0, 0, 170);
draw.RoundedRectFill( 0, 0, ScreenW/200, ScreenH );
draw.Color(0, 135, 255, 255);
draw.RoundedRectFill( 0, ScreenH * BombMath, ScreenW/200, ScreenH );
draw.Color(255, 255, 255, 255);
draw.RoundedRect( 0, 0, ScreenW/200, ScreenH );
elseif Bomb:GetProp("m_flDefuseCountDown") > Bomb:GetProp("m_flC4Blow") then allowDraw == 0
else end 


c_AllowListener("round_end") c_AllowListener("round_start") c_AllowListener("bomb_beginplant") c_AllowListener("bomb_abortplant") c_AllowListener("bomb_planted") c_AllowListener("bomb_defused") c_AllowListener("bomb_begindefuse") c_AllowListener("bomb_abortdefuse")
