local ffi = require("ffi")
local SetClantag = ffi.cast("int(__fastcall*)(const char*, const char*)", Client.FindPattern("engine.dll", "53 56 57 8B DA 8B F9 FF 15"))
local LastClantag = nil
local SetClantag = function(v)
  if v == LastClantag then return end
  SetClantag(v, v)
  LastClantag = v
end

local BuildTag = function(tag)
  local Ret = {" "}

  for i = 1, #tag do
    table.insert(Ret, tag:sub(1, i))
  end

  for i = #Ret - 1, 1, -1 do
    table.insert(Ret, Ret[i])
  end

  return Ret
end

local Tag = BuildTag("yowi0");

local function ClantagAnimation()
    if not IEngine.IsConnected() then return end

    local NetchannInfo = IEngine.GetNetChannelInfo()
    if NetchannInfo == nil then return end

    local Latency = NetchannInfo:GetLatency(0) / IGlobals.flIntervalPerTick
    local TickcountPred = IGlobals.iTickCount + Latency
    local Iter = math.floor(math.fmod(TickcountPred / 16, #Tag + 1) + 1)


    SetClantag(Tag[Iter])
end

Client.RegisterCallback("Destroy", function()
  SetClantag("", "")
end)

Client.RegisterCallback("Paint", ClantagAnimation)