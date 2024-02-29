local HWIDTable = loadstring(game:HttpGet("https://raw.githubusercontent.com/ClownAdept/ClownScripts/main/HWID%20LIST.lua"))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
for i,v in pair(HWIDTable) do
    if v == HWID then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ClownAdept/ClownScripts/main/SecondPiece_XHub.lua?token=GHSAT0AAAAAACOXAQUOGR3IKS7JBHYUF3FGZO35SJA"))()
    end
end
