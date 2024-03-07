local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local hwidlist = loadstring(game:HttpGet("https://raw.githubusercontent.com/ClownAdept/ClownScripts/main/Whitelist-HWIDLIST.lua"))()

if getgenv().isLoaded then return end
for i, v in pairs(hwidlist) do
    if v == HWID then
        print("whitelisted")
    else
        print("not whitelisted")
    end
end
