local bit = require("bit")
local shot_data = {}
local switch = 1

function paint()
    for i = 1, #shot_data do
        local shot = shot_data[i]
        if shot.draw then
            if shot.alpha <= 0 then
                shot.alpha = 0
                shot.draw = false
            elseif shot.z >= shot.target then 
				shot.alpha = shot.alpha - 1 
			end

                local s = Draw.WorldToScreen(Vector.new(shot.x,shot.y,shot.z))
                if shot.dmg <= 15 then
                   	Draw.AddRect(Vector2D.new(s.x + 2, s.y + 14), Vector2D.new(s.x + 2 + 2, s.y + 14 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 12), Vector2D.new(s.x + 2, s.y + 12 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x - 2, s.y + 10), Vector2D.new(s.x - 2 + 2, s.y + 10 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
       				Draw.AddRect(Vector2D.new(s.x - 4, s.y + 4), Vector2D.new(s.x - 4 + 2, s.y + 4 + 6), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
   					Draw.AddRect(Vector2D.new(s.x - 2, s.y + 2), Vector2D.new(s.x - 2 + 2, s.y + 2 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
   					Draw.AddRect(Vector2D.new(s.x, s.y), Vector2D.new(s.x + 2, s.y + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y), Vector2D.new(s.x + 2 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 2), Vector2D.new(s.x + 4 + 2, s.y + 2 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y), Vector2D.new(s.x +  6 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 8, s.y), Vector2D.new(s.x + 8 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 2), Vector2D.new(s.x + 10 + 2, s.y + 2 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 12, s.y + 4), Vector2D.new(s.x + 12 + 2, s.y + 4 + 6), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 10), Vector2D.new(s.x + 10 + 2, s.y + 10 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 8, s.y + 12), Vector2D.new(s.x + 8 + 2, s.y + 12 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 14), Vector2D.new(s.x + 6 + 2, s.y + 14 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 16), Vector2D.new(s.x + 4 + 2, s.y + 16 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x - 2, s.y + 4), Vector2D.new(s.x - 2 + 2, s.y + 4 + 6), Color.new( 60, 255, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 2), Vector2D.new(s.x + 4, s.y + 2 + 2), Color.new( 60, 255, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 6), Vector2D.new(s.x + 4, s.y + 6 + 6), Color.new( 60, 255, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y + 4), Vector2D.new(s.x + 2 + 2, s.y + 4 + 2), Color.new(255, 255, 255, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y + 12), Vector2D.new(s.x + 2 + 2, s.y + 12 + 2), Color.new( 60, 255, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 4), Vector2D.new(s.x + 4 + 2, s.y + 4 + 12), Color.new( 60, 255, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 2), Vector2D.new(s.x + 6 + 4, s.y + 2 + 10), Color.new( 60, 255, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 12), Vector2D.new(s.x + 6 + 2, s.y + 12 + 2), Color.new(60, 255, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 4), Vector2D.new(s.x + 10 + 2, s.y + 4 + 6), Color.new(60, 255, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 4), Vector2D.new(s.x + 2, s.y + 4 + 2), Color.new( 60, 255, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
                elseif shot.dmg <= 30 then
                    Draw.AddRect(Vector2D.new(s.x + 2, s.y + 14), Vector2D.new(s.x + 2 + 2, s.y + 14 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 12), Vector2D.new(s.x + 2, s.y + 12 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x - 2, s.y + 10), Vector2D.new(s.x - 2 + 2, s.y + 10 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
       				Draw.AddRect(Vector2D.new(s.x - 4, s.y + 4), Vector2D.new(s.x - 4 + 2, s.y + 4 + 6), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
   					Draw.AddRect(Vector2D.new(s.x - 2, s.y + 2), Vector2D.new(s.x - 2 + 2, s.y + 2 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
   					Draw.AddRect(Vector2D.new(s.x, s.y), Vector2D.new(s.x + 2, s.y + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y), Vector2D.new(s.x + 2 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 2), Vector2D.new(s.x + 4 + 2, s.y + 2 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y), Vector2D.new(s.x +  6 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 8, s.y), Vector2D.new(s.x + 8 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 2), Vector2D.new(s.x + 10 + 2, s.y + 2 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 12, s.y + 4), Vector2D.new(s.x + 12 + 2, s.y + 4 + 6), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 10), Vector2D.new(s.x + 10 + 2, s.y + 10 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 8, s.y + 12), Vector2D.new(s.x + 8 + 2, s.y + 12 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 14), Vector2D.new(s.x + 6 + 2, s.y + 14 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 16), Vector2D.new(s.x + 4 + 2, s.y + 16 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x - 2, s.y + 4), Vector2D.new(s.x - 2 + 2, s.y + 4 + 6), Color.new(255, 251, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 2), Vector2D.new(s.x + 4, s.y + 2 + 2), Color.new(255, 251, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 6), Vector2D.new(s.x + 4, s.y + 6 + 6), Color.new(255, 251, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y + 4), Vector2D.new(s.x + 2 + 2, s.y + 4 + 2), Color.new(255, 255, 255, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y + 12), Vector2D.new(s.x + 2 + 2, s.y + 12 + 2), Color.new(255, 251, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 4), Vector2D.new(s.x + 4 + 2, s.y + 4 + 12), Color.new(255, 251, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 2), Vector2D.new(s.x + 6 + 4, s.y + 2 + 10), Color.new(255, 251, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 12), Vector2D.new(s.x + 6 + 2, s.y + 12 + 2), Color.new(255, 251, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 4), Vector2D.new(s.x + 10 + 2, s.y + 4 + 6), Color.new(255, 251, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 4), Vector2D.new(s.x + 2, s.y + 4 + 2), Color.new(255, 251, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    			elseif shot.dmg <= 60 then
                    Draw.AddRect(Vector2D.new(s.x + 2, s.y + 14), Vector2D.new(s.x + 2 + 2, s.y + 14 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 12), Vector2D.new(s.x + 2, s.y + 12 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x - 2, s.y + 10), Vector2D.new(s.x - 2 + 2, s.y + 10 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
       				Draw.AddRect(Vector2D.new(s.x - 4, s.y + 4), Vector2D.new(s.x - 4 + 2, s.y + 4 + 6), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
   					Draw.AddRect(Vector2D.new(s.x - 2, s.y + 2), Vector2D.new(s.x - 2 + 2, s.y + 2 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
   					Draw.AddRect(Vector2D.new(s.x, s.y), Vector2D.new(s.x + 2, s.y + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y), Vector2D.new(s.x + 2 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 2), Vector2D.new(s.x + 4 + 2, s.y + 2 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y), Vector2D.new(s.x +  6 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 8, s.y), Vector2D.new(s.x + 8 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 2), Vector2D.new(s.x + 10 + 2, s.y + 2 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 12, s.y + 4), Vector2D.new(s.x + 12 + 2, s.y + 4 + 6), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 10), Vector2D.new(s.x + 10 + 2, s.y + 10 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 8, s.y + 12), Vector2D.new(s.x + 8 + 2, s.y + 12 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 14), Vector2D.new(s.x + 6 + 2, s.y + 14 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 16), Vector2D.new(s.x + 4 + 2, s.y + 16 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x - 2, s.y + 4), Vector2D.new(s.x - 2 + 2, s.y + 4 + 6), Color.new(255, 140, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 2), Vector2D.new(s.x + 4, s.y + 2 + 2), Color.new(255, 140, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 6), Vector2D.new(s.x + 4, s.y + 6 + 6), Color.new(255, 140, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y + 4), Vector2D.new(s.x + 2 + 2, s.y + 4 + 2), Color.new(255, 255, 255, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y + 12), Vector2D.new(s.x + 2 + 2, s.y + 12 + 2), Color.new(255, 140, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 4), Vector2D.new(s.x + 4 + 2, s.y + 4 + 12), Color.new(255, 140, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 2), Vector2D.new(s.x + 6 + 4, s.y + 2 + 10), Color.new(255, 140, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 12), Vector2D.new(s.x + 6 + 2, s.y + 12 + 2), Color.new(255, 140, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 4), Vector2D.new(s.x + 10 + 2, s.y + 4 + 6), Color.new(255, 140, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 4), Vector2D.new(s.x + 2, s.y + 4 + 2), Color.new(255, 140, 0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
                else
                    Draw.AddRect(Vector2D.new(s.x + 2, s.y + 14), Vector2D.new(s.x + 2 + 2, s.y + 14 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 12), Vector2D.new(s.x + 2, s.y + 12 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x - 2, s.y + 10), Vector2D.new(s.x - 2 + 2, s.y + 10 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
       				Draw.AddRect(Vector2D.new(s.x - 4, s.y + 4), Vector2D.new(s.x - 4 + 2, s.y + 4 + 6), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
   					Draw.AddRect(Vector2D.new(s.x - 2, s.y + 2), Vector2D.new(s.x - 2 + 2, s.y + 2 + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
   					Draw.AddRect(Vector2D.new(s.x, s.y), Vector2D.new(s.x + 2, s.y + 2), Color.new(0,0,0,shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y), Vector2D.new(s.x + 2 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 2), Vector2D.new(s.x + 4 + 2, s.y + 2 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y), Vector2D.new(s.x +  6 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 8, s.y), Vector2D.new(s.x + 8 + 2, s.y + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 2), Vector2D.new(s.x + 10 + 2, s.y + 2 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 12, s.y + 4), Vector2D.new(s.x + 12 + 2, s.y + 4 + 6), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 10), Vector2D.new(s.x + 10 + 2, s.y + 10 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 8, s.y + 12), Vector2D.new(s.x + 8 + 2, s.y + 12 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 14), Vector2D.new(s.x + 6 + 2, s.y + 14 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 16), Vector2D.new(s.x + 4 + 2, s.y + 16 + 2), Color.new(0,0,0, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x - 2, s.y + 4), Vector2D.new(s.x - 2 + 2, s.y + 4 + 6), Color.new(254, 19, 19, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 2), Vector2D.new(s.x + 4, s.y + 2 + 2), Color.new(254, 19, 19, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 6), Vector2D.new(s.x + 4, s.y + 6 + 6), Color.new(254, 19, 19, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y + 4), Vector2D.new(s.x + 2 + 2, s.y + 4 + 2), Color.new(255, 255, 255, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 2, s.y + 12), Vector2D.new(s.x + 2 + 2, s.y + 12 + 2), Color.new(254, 19, 19, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 4, s.y + 4), Vector2D.new(s.x + 4 + 2, s.y + 4 + 12), Color.new(254, 19, 19, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 2), Vector2D.new(s.x + 6 + 4, s.y + 2 + 10), Color.new(254, 19, 19, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 6, s.y + 12), Vector2D.new(s.x + 6 + 2, s.y + 12 + 2), Color.new(254, 19, 19, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x + 10, s.y + 4), Vector2D.new(s.x + 10 + 2, s.y + 4 + 6), Color.new(254, 19, 19, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
    				Draw.AddRect(Vector2D.new(s.x, s.y + 4), Vector2D.new(s.x + 2, s.y + 4 + 2), Color.new(254, 19, 19, shot.alpha), bit.bor(ERectRenderFlags.DRAW_RECT_FILLED))
                end
                shot.z = shot.z + 0.5
        end
    end
end

function player_hurt(Event)
    local attacker = Event:GetInt("attacker")
    local attackeridx = IEngine.GetPlayerForUserID(attacker)
    
    local victim = Event:GetInt("userid")
    local victimidx = IEngine.GetPlayerForUserID(victim)
    
    if attackeridx ~= IEngine.GetLocalPlayer() then
        return
    end
    
    local pos = IEntityList.GetClientEntity(victimidx):GetAbsOrigin()
    local duck = IEntityList.GetClientEntity(victimidx):GetPropertyFloat("CBasePlayer", "m_flDuckAmount")
    
    pos.z = pos.z + (46 + (1 - duck) * 18)
    
    switch = switch*-1
    
    shot_data[#shot_data+1] = { x = pos.x, y = pos.y+switch*35, z = pos.z, target = pos.z + 25, dmg = Event:GetInt("dmg_health"), alpha = 255, draw = true,}
end

function round_prestart()
    shot_data = {}
end

Client.RegisterEventCallback("player_hurt", player_hurt)
Client.RegisterEventCallback("round_prestart", round_prestart)
Client.RegisterCallback("Paint", paint)