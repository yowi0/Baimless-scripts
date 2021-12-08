Menu.Toggle("Enable", false)

Client.RegisterCallback("Paint", function()
    local enable = Menu.Get("Enable")
    local ss = IEngine.GetScreenSize()

    if enable == true then
        --Border
        Draw.AddRect(Vector2D.new(0, 0), Vector2D.new(ss.x, ss.y), Color.new(60, 60, 60, 255))
        Draw.AddRect(Vector2D.new(0 + 1, 0 + 1), Vector2D.new(ss.x - 1, ss.y - 1), Color.new(40, 40, 40, 255))
        Draw.AddRect(Vector2D.new(0 + 2, 0 + 2), Vector2D.new(ss.x - 2, ss.y - 2), Color.new(40, 40, 40, 255))
        Draw.AddRect(Vector2D.new(0 + 3, 0 + 3), Vector2D.new(ss.x - 3, ss.y - 3), Color.new(40, 40, 40, 255))
        Draw.AddRect(Vector2D.new(0 + 4, 0 + 4), Vector2D.new(ss.x - 4, ss.y - 4), Color.new(40, 40, 40, 255))
        Draw.AddRect(Vector2D.new(0 + 5, 0 + 5), Vector2D.new(ss.x - 5, ss.y - 5), Color.new(5, 5, 5, 255))

        --Gradient
        Draw.AddRectMultiColor(Vector2D.new(0 + 6, 0 + 6), Vector2D.new(ss.x / 2, 0 + 8), Color.new(55, 177, 218, 255), Color.new(201, 72, 205, 255), Color.new(201, 72, 205, 255), Color.new(55, 177, 218, 255))
        Draw.AddRectMultiColor(Vector2D.new(0 + ss.x / 2, 0 + 6), Vector2D.new(ss.x - 6, 0 + 8), Color.new(201, 72, 205, 255), Color.new(204, 227, 53, 255), Color.new(204, 227, 53, 255), Color.new(201, 72, 205, 255))
    end
end)