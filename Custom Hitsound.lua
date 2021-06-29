Menu.Checkbox("Enable", false);
local sound = "cod";

local function hitsound(pEvent)
    local enable = Menu.Get("Enable", "Custom Hitsound.lua");
    if enable == true then
        local hitplayer = IEngine.GetPlayerForUserId(pEvent.GetInt("attacker"))
        if hitplayer == IEngine.GetLocalPlayer() then
            IEngine.ClientCmdUnrestricted("play ".. sound)
        end
    end
end

Client.RegisterEventCallback("player_hurt", hitsound)