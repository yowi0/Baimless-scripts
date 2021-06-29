Menu.Toggle('Enable')

local walkMode = function()
    Config.Set(Vars.iMiscWalkMode, math.random(0, 1))
end

Client.RegisterCallback('Paint', function()
    local enable = Menu.Get('Enable')

    if enable == true then
        walkMode()
    else
        Config.Set(Vars.iMiscWalkMode, 0)
    end
end)

Client.RegisterCallback('FrameStageNotify', function()
    local enable = Menu.Get('Enable')

    if enable == true then
        walkMode()
    else
        Config.Set(Vars.iMiscWalkMode, 0)
    end
end)

Client.RegisterCallback('CreateMoveIn', function()
    local enable = Menu.Get('Enable')

    if enable == true then
        walkMode()
    else
        Config.Set(Vars.iMiscWalkMode, 0)
    end
end)

Client.RegisterCallback('CreateMovePre', function()
    local enable = Menu.Get('Enable')

    if enable == true then
        walkMode()
    else
        Config.Set(Vars.iMiscWalkMode, 0)
    end
end)

Client.RegisterCallback('CreateMovePost', function()
    local enable = Menu.Get('Enable')

    if enable == true then
        walkMode()
    else
        Config.Set(Vars.iMiscWalkMode, 0)
    end
end)

Client.RegisterCallback('Destroy', function()
    Config.Set(Vars.iMiscWalkMode, 0)
end)