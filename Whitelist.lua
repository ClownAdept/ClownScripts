_G.Name = game.Players.LocalPlayer.Name
if getgenv().isLoaded then return end
if _G.Name == "911hz" or _G.Name == "911hw" or _G.Name == "911hl" or _G.Name == "911ht" or _G.Name == "911hn" or _G.Name == "911hb" or _G.Name == "911h3" or _G.Name == "ICanModz" or _G.Name == "HowdyMcShuffle" or _G.Name == "HowdyMcShuffle1" or _G.Name == "HowdyMcShuffle2" or _G.Name == "HowdyMcShuffle3" or _G.Name == "HowdyMcShuffle4" or _G.Name == "HowdyMcShuffle5" or _G.Name == "HowdyMcShuffle6" or _G.Name == "TheRejectdead" or _G.Name == "meowsers329" or _G.Name == "meowsers330" then
    game:GetService("UserInputService").InputBegan:connect(function(inputObject,gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode.W then
            if getgenv().isLoaded then return end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ClownAdept/ClownScripts/main/SecondPiece_XHub.lua?token=GHSAT0AAAAAACOXAQUOGR3IKS7JBHYUF3FGZO35SJA"))()
            getgenv().isLoaded = true
        end
    end)
else
    game.Players.LocalPlayer:Kick("You are Not Whitelisted, Join the Discord Server (https://discord.gg/HZQE9kZbGx), or DM me on discord Clown.hz Sorry!")
end
