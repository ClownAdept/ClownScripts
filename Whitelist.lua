_G.Name = game.Players.LocalPlayer.Name
if getgenv().isLoaded then return end
if _G.Name == "911hz" or _G.Name == "911hw" or _G.Name == "911hl" or _G.Name == "911ht" or _G.Name == "911hn" or _G.Name == "911hb" or _G.Name == "911h3" or _G.Name == "icanmodz" or _G.Name == "HowdyMcShuffle" or _G.Name == "HowdyMcShuffle1" or _G.Name == "HowdyMcShuffle2" or _G.Name == "HowdyMcShuffle3" or _G.Name == "HowdyMcShuffle4" or _G.Name == "HowdyMcShuffle5" or _G.Name == "HowdyMcShuffle6" then
    game:GetService("UserInputService").InputBegan:connect(function(inputObject,gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode.W then
            if getgenv().isLoaded then return end
            loadstring(game:HttpGet("https://pastebin.com/raw/ntDzaSdL", true))()
            getgenv().isLoaded = true
        end
    end)
else
    game.Players.LocalPlayer:Kick("You are Not Whitelisted, Join the Discord Server (https://discord.gg/HZQE9kZbGx), or DM me on discord Clown#0130 or Phoze, zixnks#0001. Sorry!")
end
