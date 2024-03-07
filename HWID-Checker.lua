local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local hwidlist = loadstring(game:HttpGet("https://raw.githubusercontent.com/ClownAdept/ClownScripts/main/Whitelist-HWIDLIST.lua"))()

wait(5)
for i, v in pairs(hwidlist) do
    if v == HWID then
        print("whitelisted")
    else
        print("not whitelisted")
        game.Players.LocalPlayer:Kick("You are Not Whitelisted, Join the Discord Server (https://discord.gg/HZQE9kZbGx), or DM me on discord clown.hz  Sorry!")
    end
end
