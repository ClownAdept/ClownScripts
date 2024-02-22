local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🤡   Clowns LG GUI", "DarkTheme")

--Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("autofarm part 1", "Teleports you to the location you choose", function()
    getgenv().Speed = 150
    local Time =
        (Vector3.new(43, 12, -759) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(43, 12, -759))}
    )
    Tween:Play()
end)


MainSection:NewButton("autofarm part 2", "Teleports you to the location you choose", function()
    getgenv().Speed = 150
    local Time =
        (Vector3.new(-286, -79, -1269) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(-286, -79, -1269))}
    )
    Tween:Play()
end)

MainSection:NewButton("autofarm part 3", "Teleports you to the location you choose", function()
    getgenv().Speed = 150
    local Time =
        (Vector3.new(43, 12, -759) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(43, 12, -759))}
    )
    Tween:Play()
end)

MainSection:NewButton("autofarm part 4", "Teleports you to the location you choose", function()
    getgenv().Speed = 150
    local Time =
        (Vector3.new(806, -12, -282) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(806, -12, -282))}
    )
    Tween:Play()
end)


local MainSection = Main:NewSection("Useful Basics")

MainSection:NewToggle("NoClip", "It litterally does what the name says...", function(state)
    if state then
        
    else
        
    end
end)

MainSection:NewToggle("Unlimited Jumps", "It litterally does what the name says...", function(state)
    if state then
        _G.InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if _G.InfiniteJumpEnabled == true then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
    else
        _G.InfiniteJumpEnabled = false
        game:GetService("UserInputService").JumpRequest:connect(function()
            if _G.InfiniteJumpEnabled == true then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
    end
end)

MainSection:NewButton("Click TP", "Ctrl + m1", function()
    noclip = false
	local UIS = game:GetService("UserInputService")
	local Player = game.Players.LocalPlayer
	local Mouse = Player:GetMouse()


	function GetCharacter()
		return game.Players.LocalPlayer.Character
	end

	function Teleport(pos)
		local Char = GetCharacter()
		if Char then
			Char:MoveTo(pos)
		end
	end


	UIS.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
			Teleport(Mouse.Hit.p)
		end
	end)
	clickTP.Text = "Loaded!"
	clickTP.TextColor3 = Color3.fromRGB(0, 255, 50)
	wait(2)
	clickTP.TextColor3 = Color3.fromRGB(255, 255, 255)
	clickTP.Text = "Click TP"
end)

MainSection:NewButton("Fullbright", "makes the game bright", function()
    if not _G.FullBrightExecuted then

        _G.FullBrightEnabled = false
    
        _G.NormalLightingSettings = {
            Brightness = game:GetService("Lighting").Brightness,
            ClockTime = game:GetService("Lighting").ClockTime,
            FogEnd = game:GetService("Lighting").FogEnd,
            GlobalShadows = game:GetService("Lighting").GlobalShadows,
            Ambient = game:GetService("Lighting").Ambient
        }
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
            if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Brightness = 1
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
            if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").ClockTime = 12
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
            if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").FogEnd = 786543
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
            if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").GlobalShadows = false
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            end
        end)
    
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").ClockTime = 12
        game:GetService("Lighting").FogEnd = 786543
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
    
        local LatestValue = true
        spawn(function()
            repeat
                wait()
            until _G.FullBrightEnabled
            while wait() do
                if _G.FullBrightEnabled ~= LatestValue then
                    if not _G.FullBrightEnabled then
                        game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                        game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                        game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                        game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                        game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                    else
                        game:GetService("Lighting").Brightness = 1
                        game:GetService("Lighting").ClockTime = 12
                        game:GetService("Lighting").FogEnd = 786543
                        game:GetService("Lighting").GlobalShadows = false
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                    end
                    LatestValue = not LatestValue
                end
            end
        end)
    end
    
    _G.FullBrightExecuted = true
    _G.FullBrightEnabled = not _G.FullBrightEnabled
end)

MainSection:NewButton("No Fog", "removes fog", function()
    game.Lighting.FogEnd = 1000000
end)

MainSection:NewSlider("Walkspeed", "It litterally does what the name says...", 55, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MainSection:NewSlider("JumpHight", "It litterally does what the name says...", 65, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)


--Respawns
local Respawns = Window:NewTab("Teleports")
local RespawnsSection = Respawns:NewSection("Teleports")

RespawnsSection:NewButton("Campsite B", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(1453, -27, -519) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(1453, -27, -519))}
    )
    Tween:Play()
end)

RespawnsSection:NewButton("The Forgotten Church", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(1330, 34, -205) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(1330, 34, -205))}
    )
    Tween:Play()
end)

RespawnsSection:NewButton("Bulwark", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(875, -7, -332) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(875, -7, -332))}
    )
    Tween:Play()
end)

RespawnsSection:NewButton("The Prison", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(627, -6, -460) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(627, -6, -460))}
    )
    Tween:Play()
end)

RespawnsSection:NewButton("The Coloseum", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(485, 14, 54) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(485, 14, 54))}
    )
    Tween:Play()
end)

RespawnsSection:NewButton("The Abandoned Forge", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(210, 3, -405) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(210, 3, -405))}
    )
    Tween:Play()
end)

RespawnsSection:NewButton("The Fissure/Lagoon", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(43, 12, -759) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(43, 12, -759))}
    )
    Tween:Play()
end)

RespawnsSection:NewButton("The Wizard's Retreat", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(-71, -10, 301) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(-71, -10, 301))}
    )
    Tween:Play()
end)

RespawnsSection:NewButton("The Dojo", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(595, 36, 1017) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(595, 36, 1017))}
    )
    Tween:Play()
end)

RespawnsSection:NewButton("Churburg Outpost", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(179, -3, 803) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(179, -3, 803))}
    )
    Tween:Play()
end)

RespawnsSection:NewButton("Layer 5", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(984, -208, 1150) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(984, -208, 1150))}
    )
    Tween:Play()
end)


--Weapons
local Weapons = Window:NewTab("Weapons")
local WeaponsSection = Weapons:NewSection("Weapons")

WeaponsSection:NewButton("Sword", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(-86, 17, 46) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(-86, 17, 46))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Billhook", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(1445, -25, -500) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(1445, -25, -500))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Axe", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(828, -7, -327) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(828, -7, -327))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Dagger", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(826, -47, -358) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(826, -47, -358))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Zweihander", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(-135, -44, -1014) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(-135, -44, -1014))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Mace", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(1126, 16, -325) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(1126, 16, -325))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Banjo", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(184, -32, -391) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(184, -32, -391))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Nails", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(393, 52, 1146) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(393, 52, 1146))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Sparth Axe", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(-43, 64, -1006) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(-43, 64, -1006))}
    )
    Tween:Play()
end)

local WeaponsSection = Weapons:NewSection("Weapons Stances")

WeaponsSection:NewButton("Sword: Paladin Guard[Steps 1&3]", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(1369, 42, -27) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(1369, 42, -27))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Sword: Paladin Guard[Step 2]", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(-24, -232, -716) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(-24, -232, -716))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Billhook: Recurring Fee Avoidance", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(233, -22, -385) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(233, -22, -385))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Axe: Executioner Guard", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(177, -3, 816) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(177, -3, 816))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Dagger: Barrel Guard", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(830, -69, -358) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(830, -69, -358))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Zweihander: Half-Sword", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(1080, 73, 306) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(1080, 73, 306))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Mace: One Handed", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(1090, 32, -1065) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(1090, 32, -1065))}
    )
    Tween:Play()
end)

local WeaponsSection = Weapons:NewSection("Weapons Skins")

WeaponsSection:NewButton("Sword: Excalibur", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(0, 0, 0) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(0, 0, 0))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Axe: Pickaxe", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(0, 0, 0) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(0, 0, 0))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Axe: Smith's Hammer", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(0, 0, 0) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(0, 0, 0))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Dagger: Fork", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(0, 0, 0) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(0, 0, 0))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Mace: Essian Shield", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(0, 0, 0) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(0, 0, 0))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Mace: Round Shield", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(0, 0, 0) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(0, 0, 0))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Billhook: Scythe..?", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(1327, 36, -99) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(1327, 36, -99))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Zweihander: Kebob", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(0, 0, 0) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(0, 0, 0))}
    )
    Tween:Play()
end)

WeaponsSection:NewButton("Zweihander: Claymore", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(0, 0, 0) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(0, 0, 0))}
    )
    Tween:Play()
end)

--Armor
local Armor = Window:NewTab("Armor")
local ArmorSection = Armor:NewSection("UnderArmour")

ArmorSection:NewButton("Tunic", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Blue Tabard", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Vest", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Dress", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Scoundrel's Outfit", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Fool's Gold", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Gambeson Coat", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Gladiator's Outfit", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Crusader's Outfit", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Drip Master's Outfit", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Chainmail Coat", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Patched Coat", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Rags", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Landsknecht's Outfit", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Churburg Under-Armor", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Fishman's Outfit", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Varied Landsknecht", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Highlander's Outfit", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

local ArmorSection = Armor:NewSection("Armour Pieces")

ArmorSection:NewButton("Helm", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Flat Helm", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Hounskull", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Leather Vest", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Axeman's Armour Set", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton('Wooden "Armour" Set', "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Jousting Armour Set", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Italian Armour Set", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Landsknecht's Armour Set", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Paladin Armour Set", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Chiseled Armour Set", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Glassgallow Armour Set", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Highlander Armour Set", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Tower Armour Set", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

ArmorSection:NewButton("Fishman's Armour Set", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)


--Ability's
local Ability = Window:NewTab("Abilities")
local AbilitySection = Ability:NewSection("Abilities")

AbilitySection:NewButton("ALL: Ancient Ember", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(858, 58, -630) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(858, 58, -630))}
    )
    Tween:Play()
end)

AbilitySection:NewButton("Sword: Glamorous Strike", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Axe: Spin Side", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Zweihander: Power Nap", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Banjo: Melancholic Tune", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Banjo: Inspirational Tune", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

local AbilitySection = Ability:NewSection("Runes")

AbilitySection:NewButton("Sword: Depth's Rune", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Axe: Judgement", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Dagger: Binding Dagger", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Mace: Masonry", "Teleports you to the location you choose", function()
    getgenv().Speed = 200
    local Time =
        (Vector3.new(122, -97, 193) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / getgenv().Speed
    local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
    local Tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        Info,
        {CFrame = CFrame.new(Vector3.new(122, -97, 193))}
    )
    Tween:Play()
end)

AbilitySection:NewButton("Billhook: Muddening Rune", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Zweihander: Shatter", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Banjo: Musical Rune", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Nails: Rune of Attrition", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Nails: Soft Block", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

local AbilitySection = Ability:NewSection("Passives")

AbilitySection:NewButton("ALL: Sleepy", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("ALL: Bulky", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("ALL: Hollow Bones", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("ALL: Staggered", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Sword: Duelist", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Axe: Shaman", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)

AbilitySection:NewButton("Mace: Flimsy Guard", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end)
