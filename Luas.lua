
local function drawCircle(x, y, z, radius, thickness, quality, r, g, b, a)
    local quality = quality or 20
    local thickness = thickness or  8
    local Screen_X_Line_Old, Screen_Y_Line_Old
    for rot=0, 360, quality do
        local rot_temp = math.rad(rot)
        local LineX, LineY, LineZ = radius * math.cos(rot_temp) + x, radius * math.sin(rot_temp) + y, z
        local Screen_X_Line, Screen_Y_Line = client.WorldToScreen(LineX, LineY, LineZ)
        if Screen_X_Line ~=nil and Screen_X_Line_Old ~= nil then
            draw.SetFont(draw.CreateFont("Tahoma", 12));
            draw.Color(r, g, b, a)
            draw.Line(Screen_X_Line, Screen_Y_Line, Screen_X_Line_Old, Screen_Y_Line_Old)
            for i = 0, thickness do
                draw.Line(Screen_X_Line, Screen_Y_Line+i, Screen_X_Line_Old, Screen_Y_Line_Old+i)
            end
        end
        Screen_X_Line_Old, Screen_Y_Line_Old = Screen_X_Line, Screen_Y_Line
    end
end

callbacks.Register("Draw", function()
    local ents = entities.FindByClass("CInferno")
    for i = 1, #ents do
        local molotov = ents[i]
        local x, y, z = molotov:GetAbsOrigin()

        drawCircle(x, y, z, 200, 1, 15, 214, 69, 65, 255)
    end
end)
