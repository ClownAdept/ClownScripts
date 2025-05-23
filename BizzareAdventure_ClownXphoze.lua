local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🤡💀   Clown & phoze Best Script", "Sentinel")

--Main
local Main = Window:NewTab("Main")
local INGSection = Main:NewSection("Ingame Features")

local teleportToggle = false

local function teleportPlayer(location)
    game.Players.LocalPlayer.Character:MoveTo(location)
end

game:GetService("Players").LocalPlayer.Chatted:Connect(function(msg)
    if teleportToggle and msg:sub(1, 1) == "!" then
        local locationName = msg:sub(2)
        if locationName == "bank" then
            teleportPlayer(Vector3.new(434.0616760253906, 129.50929260253906, 230.79995727539062))
        elseif locationName == "shop" then
            teleportPlayer(Vector3.new(178, 129, 425))
        elseif locationName == "oldzs" then
            teleportPlayer(Vector3.new(13398, 0, -1431))
        elseif locationName == "newzs" then
            teleportPlayer(Vector3.new(12418, 7, -1070))
        elseif locationName == "akuma" then
            teleportPlayer(Vector3.new(372, 177, 436))
        elseif locationName == "basketballcourt" then
            teleportPlayer(Vector3.new(597, 129, 112))
        elseif locationName == "busstop" then
            teleportPlayer(Vector3.new(56, 129, 541))
        elseif locationName == "gym" then
            teleportPlayer(Vector3.new(210, 129, -74))
        elseif locationName == "pizza" then
            teleportPlayer(Vector3.new(76, 129, 124))
        elseif locationName == "arcade" then
            teleportPlayer(Vector3.new(587, 129, 478))
        end
    end
end)

INGSection:NewToggle("Teleport Chat Commands", "Teleports you to the location you choose", function(state)
    teleportToggle = state
end)

INGSection:NewToggle("Godmode", "It litterally does what the name says...", function(state)
    if state then
        gzz = true
        while gzz == true do
            local hhhargs = {
                [1] = true
            }
            
            game:GetService("ReplicatedStorage").Moves["Return To Zero"].RTZ:FireServer(unpack(hhhargs))
            local A_1 = true
            local Event = game:GetService("ReplicatedStorage").Main.Attacks.Block 
            Event:FireServer(A_1)
            game:GetService("ReplicatedStorage").Moves["King Crimson"].Epitaph:FireServer(unpack(hhhargs))
            game:GetService("ReplicatedStorage").Moves["Chariot Requiem"].Invincible:FireServer()
            game:GetService("ReplicatedStorage").Moves["King Crimson"].Epitaph:FireServer(unpack(hhhargs))
            wait(1)
        end
    else
        gzz = false
        while gzz == true do
            game:GetService("ReplicatedStorage").Moves["Chariot Requiem"].Invincible:FireServer()
            wait(1)
        end
    end
end)

local infHealthToggle = false
INGSection:NewToggle("Inf Heal", "Heals you requires a stand with a heal attack", function(state)
    infHealthToggle = state
    while infHealthToggle do
        game:GetService("ReplicatedStorage").Main.Attacks.Heal:FireServer()
        wait()
    end
end)

INGSection:NewToggle("Anti TS", "It litterally does what the name says...", function(state)
    if state then
        qqgzyyyz = true
        while qqgzyyyz == true do
            game:GetService("ReplicatedStorage").Main.Remotes.Anchor:FireServer(false)
            wait()
        end
    else
        qqgzyyyz = false
        while qqgzyyyz == true do
            game:GetService("ReplicatedStorage").Main.Remotes.Anchor:FireServer(true)
            wait()
        end
    end
end)

INGSection:NewToggle("Auto Use Big Money Stack", "It litterally does what the name says...", function(state)
    if state then
        uuqqgzyyyz = true
        while uuqqgzyyyz == true do
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Big Money Stack" then
                 game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                 game.Players.LocalPlayer.Character:FindFirstChild("Big Money Stack"):Activate()
               end
           end
            wait()
        end
    else
        uuqqgzyyyz = false
        while uuqqgzyyyz == true do
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Big Money Stack" then
                 game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                 game.Players.LocalPlayer.Character:FindFirstChild("Big Money Stack"):Activate()
               end
           end
            wait()
        end
    end
end)

INGSection:NewToggle("Money / XP Farm", "It litterally does what the name says...", function(state)
    if state then
        gzzyy = true
        while gzzyy == true do
            local gucciArgs = {[1] = "Gucci", [2] = false}
            local turtleArgs = {[1] = "Turtle", [2] = false}
            local letterArgs = {[1] = "Letter", [2] = false}
         
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(gucciArgs))
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(turtleArgs))
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(letterArgs))
         
            wait(0.1)
         
            gucciArgs[2] = true
            turtleArgs[2] = true
            letterArgs[2] = true
         
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(gucciArgs))
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(turtleArgs))
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(letterArgs))
            wait(5)
        end
    else
        gzzyy = false
        while gzzyy == true do
            local gucciArgs = {[1] = "Gucci", [2] = false}
            local turtleArgs = {[1] = "Turtle", [2] = false}
            local letterArgs = {[1] = "Letter", [2] = false}
        
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(gucciArgs))
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(turtleArgs))
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(letterArgs))
        
            wait(0.1)
        
            gucciArgs[2] = true
            turtleArgs[2] = true
            letterArgs[2] = true
        
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(gucciArgs))
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(turtleArgs))
            game:GetService("ReplicatedStorage").Main.Shop.Quest:FireServer(unpack(letterArgs))
            wait(5)
        end
    end
end)

INGSection:NewToggle("item pickup", "It literally does what the name says...", function(state)
    if state then
        itempickup = true
        task.spawn(function()
            while itempickup do
                for _, v in pairs(workspace:WaitForChild("Tools"):GetChildren()) do
                    if not itempickup then break end -- break early if toggled off

                    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
                    local hrp = character:FindFirstChild("HumanoidRootPart")

                    if v:IsA("BasePart") and hrp then
                        hrp.CFrame = CFrame.new(v.Position)
                        wait(0.5)
                    elseif v:IsA("Model") then
                        local part = v:FindFirstChildWhichIsA("BasePart")
                        if part and hrp then
                            hrp.CFrame = CFrame.new(part.Position)
                            wait(0.5)
                        end
                    end
                end
                wait(0.5)
            end
        end)
    else
        itempickup = false
    end
end)

local INGSection = Main:NewSection("OP")

local UserInputService = game:GetService("UserInputService")

-- Create the God Bullet Args text box
local args = {
    [1] = -99999
}
local godBulletArgsBox = INGSection:NewTextBox("DMG Args", "Changes the arguments for the God Bullet attack", function(value)
    local newArgs = {[1] = tonumber(value)}
    args = newArgs
end)

-- Create the God Bullet toggle
local godBulletToggle = false
INGSection:NewToggle("dmg changer", "Makes others god requires a stand with a bullet attack", function(state)
    godBulletToggle = state
    while godBulletToggle do
        -- Check if T, Z, or X keys are pressed
        if UserInputService:IsKeyDown(Enum.KeyCode.T) or UserInputService:IsKeyDown(Enum.KeyCode.Z) or UserInputService:IsKeyDown(Enum.KeyCode.X) then
            game:GetService("ReplicatedStorage").Main.Attacks.Gun:FireServer(unpack(args))
        end
        wait()
    end
end)

local MainSection = Main:NewSection("Useful Basics")

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





local BankSection = Main:NewSection("Bank Storage")
BankSection:NewButton("Bank Storage 1", "equips the stand in your 1st stand storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("1")
end)

BankSection:NewButton("Bank Storage 2", "equips the stand in your 2nd stand storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("2")
end)

BankSection:NewButton("Bank Storage 3", "equips the stand in your 3rd stand storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("3")
end)

BankSection:NewButton("Bank Storage 4", "equips the stand in your 4th stand storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("4")
end)

BankSection:NewButton("Black Market 1", "equips the stand in your 1st bm storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("5")
end)

BankSection:NewButton("Black Market 2", "equips the stand in your 2nd bm storage", function()
    game:GetService("ReplicatedStorage").Main.Shop.StandBank:FireServer("6")
end)



--Player Kill
local PK = Window:NewTab("Player killing")
local PKSection = PK:NewSection("Player Killer")



PKSection:NewToggle("Kill aura", "It litterally does what the name says...", function(state)
    if state then
        kaa = true
        while kaa == true do
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            wait()
        end
    else
        kaa = false
        while kaa == true do
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            wait(1)
        end
    end
end)

PKSection:NewToggle("MIH Kill aura", "It litterally does what the name says...", function(state)
    if state then
        kxxxaa = true
        while kxxxaa == true do
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.OHBarrage:FireServer()
            wait()
        end
    else
        kxxxaa = false
        while kxxxaa == true do
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            wait(1)
        end
    end
end)

PKSection:NewToggle("Barrage Kill aura", "It litterally does what the name says...", function(state)
    if state then
        kxxwxaa = true
        while kxxwxaa == true do
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer()
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer()
            wait()
        end
    else
        kxxwxaa = false
        while kxxwxaa == true do
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            wait(1)
        end
    end
end)

PKSection:NewToggle("Donut Player", "It litterally does what the name says...", function(state)
    if state then
        zzghhzz = true
        while zzghhzz == true do
            local qqTarget = playertp -- player name
            local A_1 = qqTarget
            local A_2 = 35
            local A_3 = "King Crimson"
            local Event = game:GetService("ReplicatedStorage").Main.Attacks.Donut
            Event:FireServer(A_1, A_2, A_3)
            wait()
        end
    else
        zzghhzz = false
        while zzghhzz == true do
            qqTarget = "name" -- player name
            for i,v in pairs(game.Players:GetPlayers()) do
              if v.Name == qqTarget then
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.Character.HumanoidRootPart.CFrame
              end
            end
            wait()
        end
    end
end)

PKSection:NewToggle("Follow Player", "It litterally does what the name says...", function(state)
    if state then
        ghhzz = true
        while ghhzz == true do
            Target = playertp -- player name
            for i,v in pairs(game.Players:GetPlayers()) do
              if v.Name == Target then
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.Character.HumanoidRootPart.CFrame
              end
            end
            wait()
        end
    else
        ghhzz = false
        while ghhzz == true do
            Target = "name" -- player name
            for i,v in pairs(game.Players:GetPlayers()) do
              if v.Name == Target then
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.Character.HumanoidRootPart.CFrame
              end
            end
            wait()
        end
    end
end)

PKSection:NewButton("Tp to player", "Lets your spam attacks", function()
    Target = playertp -- player name
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name == Target then
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.Character.HumanoidRootPart.CFrame
        end
    end
end)

local players = game:GetService("Players"):GetPlayers()

local playerNames = {}
for i, player in ipairs(players) do
    table.insert(playerNames, player.Name)
end

PKSection:NewDropdown("Select Player", "Choose a player to target", playerNames, function(currentOption)
    playertp = currentOption
end)

--Stand Attacks
local SA = Window:NewTab("Stand Attacks")
local DMSection = SA:NewSection("Defense Moves")
DMSection:NewButton("No Cooldowns", "Lets your spam attacks", function()
	local Cooldown; Cooldown = hookfunction(wait, function(v)
		v = 0;
		return Cooldown(v);
	end);
end)

DMSection:NewButton("Block Glitch", "Makes it so you always take less damage", function()
    local A_134 = true
    local Event = game:GetService("ReplicatedStorage").Main.Attacks.Block 
    Event:FireServer(A_134)
end)

DMSection:NewButton("SCR Immune", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves["Chariot Requiem"].Invincible:FireServer()
end)

DMSection:NewButton("KC epitaph", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves["King Crimson"].Epitaph:FireServer()
end)

DMSection:NewButton("RTZ", "Uses the attack In the name of the feature", function()
    local iargs = {
        [1] = true
    }
    
    game:GetService("ReplicatedStorage").Moves["Return To Zero"].RTZ:FireServer(unpack(iargs))
end)

local SASection = SA:NewSection("Stand Attacks")

local mihspam = false
SASection:NewToggle("MIH/MOC knife", "Makes others god requires a stand with a bullet attack", function(state)
    mihspam = state
    while mihspam do
        -- Check if T, Z, or X keys are pressed
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
            game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
        end
        wait()
    end
end)

SASection:NewButton("SPOH Smash", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves["Ground Smash"].Smash:FireServer()
end)

SASection:NewButton("ZS R attack", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Main.Attacks.ZsHeavy:FireServer()
end)

SASection:NewButton("Gun Spam", "Uses the attack In the name of the feature", function()
    local UserInputService = game:GetService("UserInputService")
    local isTDown = false
 
    local function fireGunAttack()
        if isHealModeOn then
            local A_1 = true
            local Event = game:GetService("ReplicatedStorage").Moves["Crazy Diamond"]["Healing Mode"]
            Event:FireServer(A_1)
        else
            local A_1 = 45
            local Event = game:GetService("ReplicatedStorage").Main.Attacks.Gun
            Event:FireServer(A_1)
        end
    end
 
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if input.KeyCode == Enum.KeyCode.T then
            isTDown = true
            while isTDown do
                fireGunAttack()
                wait()
            end
        end
    end)
 
    UserInputService.InputEnded:Connect(function(input, gameProcessed)
        if input.KeyCode == Enum.KeyCode.T then
            isTDown = false
        end
    end)
end)

SASection:NewButton("Oni AxeSlam", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves.Oni.AxeKick2:FireServer()
end)

SASection:NewButton("Kars Cure/Barrage spam", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
    
end)

SASection:NewButton("AER Flamethrower", "Uses the attack In the name of the feature", function()
    local Vargs = {
        [1] = true
    }
    
    game:GetService("ReplicatedStorage").Moves["Azeal Experience Requiem"].Ignes:FireServer(unpack(Vargs))
end)

SASection:NewButton("Cman effect", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves["C-Man"].GravityPull:FireServer()
end)

SASection:NewButton("PG", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    game:GetService("ReplicatedStorage").Moves["Purple Guy"].Lithality:FireServer()
    
end)

SASection:NewButton("MOC/MIH Knife Throw", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
    game:GetService("ReplicatedStorage").Main.Attacks.OverHeavenKnife:FireServer()
end)

local VAMPSection = SA:NewSection("Vamp Moves")

VAMPSection:NewButton("Vamp Freeze", "Uses the attack In the name of the feature", function()
    local Qargs = {
        [1] = "Standless",
        [2] = "Freeze"
    }
    
    game:GetService("ReplicatedStorage").Main.Attacks.Heavy:FireServer(unpack(Qargs))
end)

VAMPSection:NewButton("Vamp Lazer", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Main.Vampire.SpaceEyes:FireServer()
end)

VAMPSection:NewButton("Vamp BloodSuck", "Uses the attack In the name of the feature", function()
    game:GetService("ReplicatedStorage").Main.Attacks.BS:FireServer()
end)

--Teleports
local TPS = Window:NewTab("Teleports")
local TPSection = TPS:NewSection("Teleports")

TPSection:NewButton("Bank", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(434.0616760253906, 129.50929260253906, 230.79995727539062))
end)

TPSection:NewButton("Shop", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(178, 129, 425))
end)

TPSection:NewButton("OldZs", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(13398, 0, -1431))
end)

TPSection:NewButton("NewZs", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(12418, 7, -1070))
end)

TPSection:NewButton("Akuma", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(372, 177, 436))
end)

TPSection:NewButton("Basketball Court", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(597, 129, 112))
end)

TPSection:NewButton("BusStop", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(56, 129, 541))
end)

TPSection:NewButton("GYM", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(210, 129, -74))
end)

TPSection:NewButton("Pizza", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(76, 129, 124))
end)

TPSection:NewButton("Arcade", "Teleports you to the location you choose", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(587, 129, 478))
end)




--Shop
local Shop = Window:NewTab("Shop")
local ShopSection = Shop:NewSection("Shop")
ShopSection:NewButton("Buy Arrow", "Buys what you choose", function()
    game:GetService("ReplicatedStorage").Main.Shop.Buy:FireServer("Arrow")
end)

ShopSection:NewButton("Buy Roka", "Buys what you choose", function()
    game:GetService("ReplicatedStorage").Main.Shop.Buy:FireServer("Rokakaka Fruit")
end)

ShopSection:NewButton("Buy Hat", "Buys what you choose", function()
    game:GetService("ReplicatedStorage").Main.Shop.Buy:FireServer("UnberrelaHat")
end)

local qShopSection = Shop:NewSection("solo")
local wShopSection = Shop:NewSection("if")
local eShopSection = Shop:NewSection("you")
local rShopSection = Shop:NewSection("are")
local tShopSection = Shop:NewSection("reading")
local yShopSection = Shop:NewSection("this")
local uShopSection = Shop:NewSection("than")
local iShopSection = Shop:NewSection("it")
local oShopSection = Shop:NewSection("means")
local pShopSection = Shop:NewSection("I")
local aShopSection = Shop:NewSection("retard")
local sShopSection = Shop:NewSection("proofed")
local dShopSection = Shop:NewSection("your")
local fShopSection = Shop:NewSection("version")
local gShopSection = Shop:NewSection("of")
local hShopSection = Shop:NewSection("the")
local jShopSection = Shop:NewSection("script")
local kShopSection = Shop:NewSection("so")
local lShopSection = Shop:NewSection("keep")
local zShopSection = Shop:NewSection("scrollin")
local xShopSection = Shop:NewSection("pussy")
local cShopSection = Shop:NewSection("|")
local vShopSection = Shop:NewSection("|")
local bShopSection = Shop:NewSection("|")
local nShopSection = Shop:NewSection("|")
local mShopSection = Shop:NewSection("|")
local qqShopSection = Shop:NewSection("|")
local wwShopSection = Shop:NewSection("|")
local eeShopSection = Shop:NewSection("|")
local rrShopSection = Shop:NewSection("V")

rrShopSection:NewButton("Change Trait", "Buys what you choose", function()
    game:GetService("ReplicatedStorage").Main.Shop.ChangeTrait:FireServer()
end)

local misc = Window:NewTab("Misc")
local miscSection = misc:NewSection("Misc")

miscSection:NewToggle("KN Crasher", "It litterally does what the name says...", function(state)
    if state then
        kaa = true
        while kaa == true do
            local args = {
                [1] = 0,
                [2] = 0,
                [3] = 0
            }
            
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Moves.Teleport.Teleport:FireServer(unpack(args))
            wait()
        end
    else
        kaa = false
        while kaa == true do
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            wait(1)
        end
    end
end)

miscSection:NewToggle("Vamp Crasher", "It litterally does what the name says...", function(state)
    if state then
        craayy = true
        while craayy == true do
            game:GetService("ReplicatedStorage").Main.Vampire.SpaceEyes:FireServer()
            game:GetService("ReplicatedStorage").Main.Vampire.SpaceEyes:FireServer()
            wait()
        end
    else
        craayy = false
        while craayy == true do
            game:GetService("ReplicatedStorage").Main.Attacks.Barrage:FireServer("Blade")
            wait(1)
        end
    end
end)

miscSection:NewKeybind("Hide GUI", "KeybindInfo", Enum.KeyCode.L, function()
	Library:ToggleUI()
end)

miscSection:NewButton("Rejoin", "Teleports you to the location you choose", function()
    local ts = game:GetService("TeleportService")

    local p = game:GetService("Players").LocalPlayer



    ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
end)

miscSection:NewButton("Server hop", "Teleports you to the location you choose", function()
    local ts = game:GetService("TeleportService")

    local p = game:GetService("Players").LocalPlayer



    ts:TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)



local miscSection = misc:NewSection("Audio")

miscSection:NewTextBox("Audio ID", "Enter audio ID", function(audioId)
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "...",
        [3] = "rbxassetid://"..audioId,
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end)

miscSection:NewButton("Watching from Za Shadow", "Trigger 'Za Shadow' taunt animation", function()
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "I will be watching from the shadows.",
        [3] = "rbxassetid://5716956080",
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }
 
    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end)

miscSection:NewButton("Za Shadow Wants to be F R E E.", "Trigger 'Za Shadow' taunt animation", function()
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "...",
        [3] = "rbxassetid://12522117030",
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }
 
    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end) 

miscSection:NewButton("Screach", "Trigger 'Za Shadow' taunt animation", function()
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "???????",
        [3] = "rbxassetid://150185006",
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }   
    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end)


miscSection:NewButton("Hey Old Sport are u done yet?", "", function()
    local audioId = 5901306714
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "...",
        [3] = "rbxassetid://" .. tostring(audioId),
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end)

miscSection:NewButton("monkey", "", function()
    local audioId = 6872126938
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "...",
        [3] = "rbxassetid://" .. tostring(audioId),
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end)

miscSection:NewButton("FYE AF", "", function()
    local audioId = 6937042327
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "...",
        [3] = "rbxassetid://" .. tostring(audioId),
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end)

 
-- Create button for playing yes
miscSection:NewButton("racist ngl", "", function()
    local audioId = 6674211522
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "...",
        [3] = "rbxassetid://" .. tostring(audioId),
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end)

-- Create button for playing yes
miscSection:NewButton("loud phonk", "", function()
    local audioId = 6846153394
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "...",
        [3] = "rbxassetid://" .. tostring(audioId),
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end)
 
-- Create button for playing yes
miscSection:NewButton("idek tbh", "", function()
    local audioId = 6893776529
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "...",
        [3] = "rbxassetid://" .. tostring(audioId),
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end)
 
-- Create button for playing yes
miscSection:NewButton("carti", "", function()
    local audioId = 6917155909
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "...",
        [3] = "rbxassetid://" .. tostring(audioId),
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end)
 
-- Create button for playing yes
miscSection:NewButton("yuhhhh", "", function()
    local audioId = 6788646778
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Head,
        [2] = "...",
        [3] = "rbxassetid://" .. tostring(audioId),
        [4] = 10,
        [5] = 10,
        [6] = 0,
        [7] = 51
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Remotes"):WaitForChild("Taunt"):FireServer(unpack(args))
end)
