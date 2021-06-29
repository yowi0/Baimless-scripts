local screen = IEngine.GetScreenSize()
Menu.Toggle("Enable", false)
    
Client.RegisterCallback("Paint", function()
    local DT = Config.Get(Vars.keyRageDoubleTap)
    local HS = Config.Get(Vars.keyRageHideShots)
    local DUCK = Config.Get(Vars.keyRageFakeDuck)
    local DMG = Config.Get(Vars.keyRageMinimalDamageOverride)

    local curY = 600
    local RenderIndicator = function(text, col)
        font = Draw.AddFont("C:\\Windows\\Fonts\\calibrib.ttf", 28.0);
        txtw = Draw.GetTextSize(font, 32.0, text)
        curY = curY + 40
        Draw.AddRectMultiColor(Vector2D.new(16, curY), Vector2D.new(16 + txtw.x / 2, curY + 30), Color.new(0, 0, 0, 0), Color.new(0, 0, 0, 55), Color.new(0, 0, 0, 55), Color.new(0, 0, 0, 0));
        Draw.AddRectMultiColor(Vector2D.new(16 + txtw.x / 2, curY), Vector2D.new(16 + txtw.x, curY + 30), Color.new(0, 0, 0, 55), Color.new(0, 0, 0, 0), Color.new(0, 0, 0, 0), Color.new(0, 0, 0, 55));
        Draw.AddText(font, 28.0, Vector2D.new(17, curY + 3), text, Color.new(33, 33, 33, 180));
        Draw.AddText(font, 28.0, Vector2D.new(16, curY + 2), text, col);
    end

    local enable = Menu.Get("Enable")
    if enable == true then
        if DT == true then
            RenderIndicator("DT", Color.new(255, 255, 255, 255))
        end

        if HS == true then
            RenderIndicator("ONSHOT", Color.new(132, 195, 16, 255))
        end

        if DMG == true then
            RenderIndicator("DMG", Color.new(164, 164, 164, 255))
        end

        if DUCK == true then
            RenderIndicator("DUCK", Color.new(255, 255, 255, 255));
        end
    end
end)