local startTime = tick()
local endTime = tick()

-- Security

-- Security end

if game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChild("Kagune") then
    game.Players.LocalPlayer:kick("Please execute the script with your Kagune disabled!")
    return
end

if game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChild("Quinque") then
    game.Players.LocalPlayer:kick("Please execute the script with your Quinque disabled!")
    return
end

local scriptversion = tostring(game:HttpGet("https://raw.githubusercontent.com/ccxmIcal/RGKPremium/main/scriptversion.rgk", true))
scriptversion = scriptversion:gsub("%s", "")

local StaffTable = {
    1217389017,
    21933989,
    75506123,
    27470117,
    83269476,
    155186212
}

local playerstable = {}

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(playerstable, v.Name)
end



-- Functions

function getteam()
    local team = game:GetService("Players").LocalPlayer.PlayerFolder.Customization.Team.Value
    if team == 'CCG' then
        return 'CCG'
    elseif team == 'Ghoul' then
        return 'Ghoul'
    end
end

function tp(...)
local tic_k = tick();
local info = TweenInfo.new(5,Enum.EasingStyle.Quad);
local tween_s = game:service"TweenService";
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local plr = game:service"Players".LocalPlayer
local tween,err = pcall(function()
    local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
    tween:Play();
end)
if not tween then return err end
end

function comma_value(amount)
    local formatted = amount
    while true do  
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
    if (k==0) then
        break
    end
    end
    return formatted
end

function KeyPress(key, time)
    local Virtual = game:GetService("VirtualInputManager")
    Virtual:SendKeyEvent(true, Enum.KeyCode[key], false,game)
    task.wait(time)
    Virtual:SendKeyEvent(false, Enum.KeyCode[key] ,false,game)
end

local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
local LocalPlayer = Players.LocalPlayer

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua'))()
local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/addons/SaveManager.lua'))()
Library:Notify("Whitelisting took: "..math.round(endTime-startTime).." seconds")


local Skyboxes = {
    ["Purple Nebula"] = {
        ["SkyboxBk"] = "rbxassetid://159454299",
        ["SkyboxDn"] = "rbxassetid://159454296",
        ["SkyboxFt"] = "rbxassetid://159454293",
        ["SkyboxLf"] = "rbxassetid://159454286",
        ["SkyboxRt"] = "rbxassetid://159454300",
        ["SkyboxUp"] = "rbxassetid://159454288"
    },
    ["Red Night"] = {
        ["SkyboxBk"] = "rbxassetid://401664839",
        ["SkyboxDn"] = "rbxassetid://401664862",
        ["SkyboxFt"] = "rbxassetid://401664960",
        ["SkyboxLf"] = "rbxassetid://401664881",
        ["SkyboxRt"] = "rbxassetid://401664901",
        ["SkyboxUp"] = "rbxassetid://401664936"
    },
    ["Dusty Clouds"] = {
        ["SkyboxBk"] = "rbxassetid://252760981",
        ["SkyboxDn"] = "rbxassetid://252763035",
        ["SkyboxFt"] = "rbxassetid://252761439",
        ["SkyboxLf"] = "rbxassetid://252760980",
        ["SkyboxRt"] = "rbxassetid://252760986",
        ["SkyboxUp"] = "rbxassetid://252762652"
    },
    ["Space"] = {
        ["SkyboxBk"] = "rbxassetid://7950829832",
        ["SkyboxDn"] = "rbxassetid://7950831534",
        ["SkyboxFt"] = "rbxassetid://7950834733",
        ["SkyboxLf"] = "rbxassetid://7950836475",
        ["SkyboxRt"] = "rbxassetid://7950838302",
        ["SkyboxUp"] = "rbxassetid://7950839880"
    },
    ["Mountains"] = {
        ["SkyboxBk"] = "rbxassetid://7950695993",
        ["SkyboxDn"] = "rbxassetid://7950763494",
        ["SkyboxFt"] = "rbxassetid://7950698655",
        ["SkyboxLf"] = "rbxassetid://7950700557",
        ["SkyboxRt"] = "rbxassetid://7950702581",
        ["SkyboxUp"] = "rbxassetid://7950704792"
    },
    ["Midnight"] = {
        ["SkyboxBk"] = "rbxassetid://7950569153",
        ["SkyboxDn"] = "rbxassetid://7950570785",
        ["SkyboxFt"] = "rbxassetid://7950572449",
        ["SkyboxLf"] = "rbxassetid://7950573918",
        ["SkyboxRt"] = "rbxassetid://7950575055",
        ["SkyboxUp"] = "rbxassetid://7950627627"
    },
    ["Evening"] = {
        ["SkyboxBk"] = "rbxassetid://7952563158",
        ["SkyboxDn"] = "rbxassetid://7952585178",
        ["SkyboxFt"] = "rbxassetid://7952565520",
        ["SkyboxLf"] = "rbxassetid://7952566551",
        ["SkyboxRt"] = "rbxassetid://7952570003",
        ["SkyboxUp"] = "rbxassetid://7952571101"
    },
    ["Anime"] = {
        ["SkyboxBk"] = "rbxassetid://7957643729",
        ["SkyboxDn"] = "rbxassetid://7957646433",
        ["SkyboxFt"] = "rbxassetid://7957649146",
        ["SkyboxLf"] = "rbxassetid://7957650496",
        ["SkyboxRt"] = "rbxassetid://7957652494",
        ["SkyboxUp"] = "rbxassetid://7957654560"
    },
    ["Pink Daylight"] = {
        ["SkyboxBk"] = "rbxassetid://271042516",
        ["SkyboxDn"] = "rbxassetid://271077243",
        ["SkyboxFt"] = "rbxassetid://271042556",
        ["SkyboxLf"] = "rbxassetid://271042310",
        ["SkyboxRt"] = "rbxassetid://271042467",
        ["SkyboxUp"] = "rbxassetid://271077958"
    }
}


local Window = Library:CreateWindow({

    Title = scriptversion,
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    AimbotTab = Window:AddTab('Aimbot'),
    VisualsTab = Window:AddTab("Visuals"),
    MiscTab = Window:AddTab("LocalPlayer"),
    StatsChangerTab = Window:AddTab('Stats Changer'),
    AutofarmTab = Window:AddTab("Autofarm"),
    ['UI Settings'] = Window:AddTab('Settings')
}

-- ###### AIMBOT START

local AimbotLeftGroupBox = Tabs.AimbotTab:AddLeftGroupbox('Aimbot')
local AimbotRightGroupBox = Tabs.AimbotTab:AddRightGroupbox('Gyro Aimbot')

AimbotLeftGroupBox:AddToggle('ToggleAimbot', {
    Text = 'Aimbot',
    Default = false, -- Default value (true / false)
    Tooltip = 'Automatically Aim to the closet player to the center of your screen',
}):AddKeyPicker('camAimbotKey', {Text = 'Camera Aimbot', Default = 'MB2', Mode = 'Hold'})

AimbotLeftGroupBox:AddDropdown("cameratarget",{
    Values = playerstable,
    Default = 1,
    Multi = false,
    Text = 'Aimbot Target',
    Tooltip = 'Choose who you want the camera aimbot to lock on!',
})

Options.cameratarget:OnChanged(function()
    getgenv().CameraAimbotTarget = Options.cameratarget.Value
end)


Toggles.ToggleAimbot:OnChanged(function()
    pcall(function()
        if Toggles.ToggleAimbot.Value == true then
            getgenv().CamAimbot = true
        else
            getgenv().CamAimbot = false
        end
        if Toggles.ToggleAimbot.Value == true then
            local Camera = workspace.CurrentCamera
            local Players = game:GetService("Players")
            local RunService = game:GetService("RunService")
            local UserInputService = game:GetService("UserInputService")
            local TweenService = game:GetService("TweenService")
            local LocalPlayer = Players.LocalPlayer
            local Holding = false
            
            getgenv().AimbotEnabled = Toggles.ToggleAimbot.Value
            getgenv().TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
            getgenv().AimPart = "LowerTorso" -- Where the aimbot script would lock at.
            getgenv().Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.
            
            getgenv().CircleSides = 64 -- How many sides the FOV circle would have.
            getgenv().CircleColor = Color3.fromRGB(255, 255, 255) -- (RGB) Color that the FOV circle would appear as.
            getgenv().CircleTransparency = 0.7 -- Transparency of the circle.
            getgenv().CircleRadius = 80 -- The radius of the circle / FOV.
            getgenv().CircleFilled = false -- Determines whether or not the circle is filled.
            getgenv().CircleVisible = true -- Determines whether or not the circle is visible.
            getgenv().CircleThickness = 0 -- The thickness of the circle.
        
            if getgenv().AimbotEnabled == false then
                getgenv().CircleVisible = false
            elseif getgenv().AimbotEnabled == true then
                getgenv().CircleVisible = true
            end
        
            local FOVCircle = Drawing.new("Circle")
            FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
            FOVCircle.Radius = getgenv().CircleRadius
            FOVCircle.Filled = getgenv().CircleFilled
            FOVCircle.Color = getgenv().CircleColor
            FOVCircle.Visible = getgenv().CircleVisible
            FOVCircle.Radius = getgenv().CircleRadius
            FOVCircle.Transparency = getgenv().CircleTransparency
            FOVCircle.NumSides = getgenv().CircleSides
            FOVCircle.Thickness = getgenv().CircleThickness
            
            UserInputService.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton2 and Toggles.ToggleAimbot.Value == true then
                    Holding = true
                end
            end)
            
            UserInputService.InputEnded:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton2 and Toggles.ToggleAimbot.Value == true then
                    Holding = false
                end
            end)
            
            RunService.RenderStepped:Connect(function()
                FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
                FOVCircle.Radius = getgenv().CircleRadius
                FOVCircle.Filled = getgenv().CircleFilled
                FOVCircle.Color = getgenv().CircleColor
                FOVCircle.Visible = getgenv().CircleVisible
                FOVCircle.Radius = getgenv().CircleRadius
                FOVCircle.Transparency = getgenv().CircleTransparency
                FOVCircle.NumSides = getgenv().CircleSides
                FOVCircle.Thickness = getgenv().CircleThickness
            
                if Options.camAimbotKey:GetState() and Toggles.ToggleAimbot.Value then
                    TweenService:Create(Camera, TweenInfo.new(getgenv().Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, workspace[getgenv().CameraAimbotTarget][getgenv().AimPart].Position)}):Play()
                end
            end)
        else
            getgenv().CircleVisible = false
        end
    end)
end)

AimbotLeftGroupBox:AddLabel('Fov Circle Color'):AddColorPicker('AimbotColour', {Default = Color3.new(1, 1, 0)})

Options.AimbotColour:OnChanged(function()
    getgenv().CircleColor = Options.AimbotColour.Value
end)

AimbotLeftGroupBox:AddSlider('AimbotFovSize', {
    Text = 'Aimbot Fov',

    Default = 10,
    Min = 0,
    Max = 1000,
    Rounding = 0,

    Compact = false,
})

Options.AimbotFovSize:OnChanged(function()
    getgenv().CircleRadius = Options.AimbotFovSize.Value
end)

local HelpersBox = Tabs.AimbotTab:AddLeftGroupbox('Combat Helpers')



HelpersBox:AddToggle('takitp',{
    Text = 'Taki Teleport',
    Default = false,
    Tooltip = 'This will teleport you behind your target player and automatically press E.'
}):AddKeyPicker('takiteleport', {
    Default = 'Z',  
    SyncToggleState = false, 
    Mode = 'Toggle', -- Modes: Always, Toggle, Hold

    Text = 'Taki Teleport',
    NoUI = false,
})

HelpersBox:AddDropdown("takitptarget",{
    Values = playerstable,
    Default = 1,
    Multi = false,
    Text = 'Tp Target',
    Tooltip = 'Choose the person that you want to teleport to!',
})

do
    local attackkey = "操你💦💔🍑👌💦操你💦💔🍑👌💦💔🍑👌💦💔🍑👌💔🍑👌💦💔🍑👌"
    game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode[Options.takiteleport.Value] then
            if Toggles.takitp.Value then
                if getteam() ~= 'Ghoul' then
                    Library:Notify("This only works on the Ghoul Team!")
                    return
                end
                local plr1 = game.Players.LocalPlayer.Character
                local plr2 = game.Workspace:FindFirstChild(target)
                plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,4)
                LocalPlayer.Character.Remotes.KeyEvent:FireServer(attackkey, "R", "Down", CFrame.new(), CFrame.new())
            end
        end
    end)
end

HelpersBox:AddDivider()

HelpersBox:AddToggle('narutp',{
    Text = 'Narukami Teleport',
    Default = false,
    Tooltip = 'This will teleport you behind your target player and automatically press F.'
}):AddKeyPicker('naruteleport', {
    Default = 'B',  
    SyncToggleState = false, 
    Mode = 'Toggle',

    Text = 'Naru Teleport',
    NoUI = false,
})


HelpersBox:AddDropdown("narutptarget",{
    Values = playerstable,
    Default = 1,
    Multi = false,
    Text = 'Tp Target',
    Tooltip = 'Choose the person that you want to teleport to!',
})

Toggles.narutp:OnChanged(function()
    enabled = Toggles.narutp.Value
    target = Options.narutptarget.Value
    name = game.Players.LocalPlayer.Name
    local attackkey = "操你💦💔🍑👌💦操你💦💔🍑👌💦💔🍑👌💦💔🍑👌💔🍑👌💦💔🍑👌"
    game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode[Options.naruteleport.Value] then
            if enabled == true then
                if getteam() ~= 'CCG' then
                    Library:Notify("This only works on the CCG Team!")
                    return
                end
                local plr1 = game.Players.LocalPlayer.Character
                local plr2 = game.Workspace:FindFirstChild(target)
                plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,4)
                game.Players.LocalPlayer.Character.Remotes.KeyEvent:FireServer(attackkey, "F", "Down", CFrame.new(), CFrame.new())
            end
        end 
    end)
end)


-- RIGHT GROUP BOX

_G.GyroConfigurations = {
    -- KeyBinds --
    ToggleKeyBind = Enum.KeyCode.H,
    PredictionKeyBind = Enum.KeyCode.J;
 
    -- Settings --
    --[[FOV = 250;
    NumSides = 64;
    Color = Color3.new(255, 255, 255);
    Circlevis = true;
    Thicness = 5;]]
 
    -- Filters --
    Filters = {
        "Player1"
    };
    FilterType = "Blacklist";
 
    -- Aimbot sensitivity --
    Gyro = {
        Power = 15000,                  -- Higher the number, the faster you will spin.
        Dampening = 0,                  -- The lower it is, the more it will look "snappy"
    };
}

AimbotRightGroupBox:AddToggle('gyroaimbot', {
    Text = 'Gyro Aimbot',
    Default = false, -- Default value (true / false)
    Tooltip = 'This aimbot will move your character in your targets position. Not just the cameara!',
})

AimbotRightGroupBox:AddDropdown("gyroaimbottarget",{
    Values = playerstable,
    Default = 1,
    Multi = false,
    Text = 'Choose the gyro aimbot target!',
    Compact = true,
    ToolTip = 'Choose the target player!'
})

Options.gyroaimbottarget:OnChanged(function()
    table.remove(_G.GyroConfigurations.Filters, 1)
    table.insert(_G.GyroConfigurations.Filters, Options.gyroaimbottarget.Value)
end)

AimbotRightGroupBox:AddSlider('gyrofov', {
    Text = 'GyroAimbot FOV',
    Default = 100,
    Min = 0,
    Max = 500,
    Rounding = 1,
    Compact = false
})

AimbotRightGroupBox:AddToggle('fovCircleTgl', {Text = 'Show FOV Circle', Default = false, Tooltip = 'Decide if you want to show the FOV Circle or not!'}):AddColorPicker('Legit_Fov_Color', {Default = Color3.new(1, 1, 0)})
AimbotRightGroupBox:AddSlider('fovSides', {Text = 'Fov Sides', Min = 5, Max = 64, Default = 64, Rounding = 0, Suffix = 'sides'})
AimbotRightGroupBox:AddSlider('circleThickness', {Text = 'Fov Circle Thickness', Min = 0, Max = 9, Default = 5, Rounding = 0})

AimbotRightGroupBox:AddSlider('gyropower', {
    Text = 'GyroAimbot Spin Power',
    Default = 25000,
    Min = 5,
    Max = 25000,
    Rounding = 1,
    Compact = false
})
AimbotRightGroupBox:AddSlider('predictionOption', {Text = 'Prediction', Min = 0, Max = 5, Default = 3, Rounding = 1})

Options.gyropower:OnChanged(function()
    _G.GyroConfigurations.Gyro.Power = Options.gyropower.Value
end)

Toggles.gyroaimbot:OnChanged(function()
    if Toggles.gyroaimbot.Value == true then
        local Services = setmetatable({}, {__index = function(Self, Index)
            local NewService = game:GetService(Index)
            if NewService then
            Self[Index] = NewService
            end
            return NewService
        end})
        local GameSettings = UserSettings():GetService("UserGameSettings")
        local LocalPlayer = Services.Players.LocalPlayer
        local Camera = workspace.CurrentCamera
        local FOVCirclegyro = Drawing.new("Circle")
        FOVCirclegyro.Thickness = Options.circleThickness.Value
        FOVCirclegyro.Color = Options.Legit_Fov_Color.Value
        FOVCirclegyro.NumSides = Options.fovSides.Value
        FOVCirclegyro.Radius = Options.gyrofov.Value
        FOVCirclegyro.Transparency = 0.7
        FOVCirclegyro.Visible = Toggles.fovCircleTgl.Value

        local Target = Drawing.new("Circle", {
            Thickness = 5,
            Color = Color3.fromRGB(139,0,0),
            Transparency = 0
         })
        local ClosestTarget = nil
        local SilentAimToggle = true
        local BodyGyro = Instance.new("BodyGyro")
        BodyGyro.P = _G.GyroConfigurations.Gyro.Power
        BodyGyro.D = 0
        BodyGyro.MaxTorque = Vector3.new(0, math.huge, 0)
        local RaycastParameters = RaycastParams.new()
        RaycastParameters.IgnoreWater = true
        RaycastParameters.FilterType = Enum.RaycastFilterType.Blacklist
        RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}
        local function NotObstructing(Destination, Ancestor)
            -- [ Camera ] --
            local ObstructingParts = Camera:GetPartsObscuringTarget({Destination}, {Ancestor, LocalPlayer.Character})
         
            for i,v in ipairs(ObstructingParts) do
                pcall(function()
                    if v.Transparency >= 1 then
                        table.remove(ObstructingParts, i)
                    end
                end)
            end
         
            if #ObstructingParts <= 0 then
                return true
            end
         
            -- [ Raycast ] --
            RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}
         
            local Origin = Camera.CFrame.Position
            local Direction = (Destination - Origin).Unit * 500
            local RayResult = workspace:Raycast(Origin, Direction, RaycastParameters) or {
                Instance = nil;
                Position = Origin + Direction;
                Material = Enum.Material.Air;
            }
         
            if RayResult.Instance and (RayResult.Instance:IsDescendantOf(Ancestor) or RayResult.Instance == Ancestor) then
                return true
            end
         
            -- [ Obstructed ] --
            return false
         end
         
         local function ValidCharacter(Character)
            return Character and (Character:FindFirstChildWhichIsA("Humanoid") and Character:FindFirstChildWhichIsA("Humanoid").Health ~= 0) or false
         end
         
         local function GetTarget(Distance, IgnoreList)
            local MousePosition = Services.UserInputService:GetMouseLocation()
         
            local Closest = nil
            local Position = Vector2.new(0, 0)
            local ShortestDistance = Distance or math.huge
         
            for i,v in ipairs(Services.Players:GetPlayers()) do
                if _G.GyroConfigurations.FilterType == "Whitelist" and table.find(_G.GyroConfigurations.Filters, v.Name) then
                    continue
                elseif _G.GyroConfigurations.FilterType == "Blacklist" and table.find(_G.GyroConfigurations.Filters, v.Name) == nil then
                    continue
                end         
         
                if v ~= LocalPlayer and ValidCharacter(v.Character) then
                    local ViewportPosition, OnScreen = Camera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                    local Magnitude = (Vector2.new(ViewportPosition.X, ViewportPosition.Y) - MousePosition).Magnitude
         
                    if OnScreen == false then
                        continue
                    end
         
                    if Magnitude < ShortestDistance and NotObstructing(v.Character.PrimaryPart.Position, v.Character) == true then
                        Closest = v
                        Position = ViewportPosition
                        ShortestDistance = Magnitude
                    end
                end
            end
         
            return Closest, Position, ShortestDistance
        end
        Services.RunService.Heartbeat:Connect(function()

            if Toggles.gyroaimbot.Value == true then
                local Closest, Position, Distance = GetTarget(Options.gyrofov.Value)
                local MouseLocation = Services.UserInputService:GetMouseLocation()
             
                ClosestTarget = Closest
                if Closest then
                    BodyGyro.Parent = LocalPlayer.Character.PrimaryPart
             
                    local Velocity = Closest.Character.PrimaryPart:GetVelocityAtPosition(Closest.Character.PrimaryPart.Position) * Vector3.new(1, 0, 1)
                    local Magnitude = (Closest.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                    local Prediction = Velocity * (Options.predictionOption.Value / 10) * Magnitude / 100
                    if Velocity.Magnitude == 0 then
                        Prediction = Vector3.new(0, 0, 0)
                    end
             
                    if SilentAimToggle == true and Prediction.Magnitude >= 0 then
                        BodyGyro.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position, Closest.Character.PrimaryPart.Position + Prediction)
                    else
                        BodyGyro.Parent = nil
                    end
             
                    Target.Position = Vector2.new(Position.X - 25, Position.Y + 25)
                else
                    BodyGyro.Parent = nil
             
                    Target.Position = Vector2.new(MouseLocation.X - 25, MouseLocation.Y + 25)
                end
             
                BodyGyro.P = _G.GyroConfigurations.Gyro.Power
                BodyGyro.D = 0
             
                FOVCirclegyro.Position = MouseLocation
                FOVCirclegyro.Color = Options.Legit_Fov_Color.Value
                FOVCirclegyro.Radius = Options.gyrofov.Value
                FOVCirclegyro.Thickness = Options.circleThickness.Value
                FOVCirclegyro.NumSides = Options.fovSides.Value
                FOVCirclegyro.Visible = Toggles.fovCircleTgl.Value


            elseif Toggles.gyroaimbot.Value == false then
                FOVCirclegyro.Visible = false
                Options.gyrofov:SetValue(0)
            end
        end)
    end
end)

Toggles.gyroaimbot:SetValue(false)

-- #### ADD TO TABLES

game:GetService("Players").PlayerAdded:Connect(function(player)
    table.insert(playerstable, player.Name)
    Options.cameratarget:SetValues()
    Options.gyroaimbottarget:SetValues()
    Options.takitptarget:SetValues()
    Options.narutptarget:SetValues()
end)


-- #### REMOVE FROM TABLES
game:GetService("Players").PlayerRemoving:Connect(function(player)
    indextoremove = table.find(playerstable, player.Name)
    table.remove(playerstable, indextoremove)
    Options.cameratarget:SetValues()
    Options.gyroaimbottarget:SetValues()
    Options.takitptarget:SetValues()
    Options.narutptarget:SetValues()
end)



----------- AIMBOT END

-- VISUALS START

local VisualsToggles = Tabs.VisualsTab:AddLeftGroupbox('Visuals')

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/xlISInner/hooks/main/Hooks/espLib.lua"))()
ESP:Toggle(true)
ESP.TeamColor = false
ESP.Color = Color3.new(1,1,1)

VisualsToggles:AddToggle('boxestgl', {
    Text = 'Boxes',
    Default = false,
    Tooltip = 'Will draw boxes to your enemies!',
})

Toggles.boxestgl:OnChanged(function()
    ESP.Boxes = Toggles.boxestgl.Value
end)

VisualsToggles:AddToggle('tracerstgl', {
    Text = 'Tracers',
    Default = false,
    Tooltip = 'Will draw lines to your enemies!',
})

Toggles.tracerstgl:OnChanged(function()
    ESP.Tracers = Toggles.tracerstgl.Value
end)

VisualsToggles:AddToggle('nameesp', {
    Text = 'Names',
    Default = false,
    Tooltip = 'Will show your enemies names!',
})

Toggles.nameesp:OnChanged(function()
    ESP.Names = Toggles.nameesp.Value
end)

VisualsToggles:AddToggle('distanceTgl', {
    Text = 'Show Distance',
    Default = false,
    Tooltip = 'Will show the enemy distance (m)'
})

Toggles.distanceTgl:OnChanged(function()
    ESP.Distance = Toggles.distanceTgl.Value
end)

VisualsToggles:AddToggle('chamsTgl', {
    Text = 'Chams',
    Default = false
})


Toggles.chamsTgl:OnChanged(function()
    if Toggles.chamsTgl.Value then
        for i,v in next, Players:GetPlayers() do
            pcall(function()
                if v.Name ~= LocalPlayer.Name then
                    if v.Character and v.Character.HumanoidRootPart then
                        if not v.Character:FindFirstChild("chem") then
                            local cham = Instance.new('Highlight', v.Character)
                            cham.Name = 'chem'
                            cham.Enabled = Toggles.chamsTgl.Value
                            cham.OutlineColor = Options.Chams_Outline.Value
                            cham.FillColor = Options.Chams_Fill.Value
                        end
                    end
                end
            end)
        end
    else
        for i,v in next, Players:GetPlayers() do
            pcall(function()
                if v.Name ~= LocalPlayer.Name and v.Character and v.Character.HumanoidRootPart then
                    if v.Character:FindFirstChild("chem") then
                        cham = v.Character.chem
                        cham:Destroy()
                    end
                end
            end)
        end
    end
end)




local WorldModulation = Tabs.VisualsTab:AddLeftGroupbox('World Modulation')

WorldModulation:AddToggle('tintColorTgl', {Text = 'Tint Color', Default = false}):AddColorPicker('TintColorColor', {Default = Color3.new(0, 1, 0), Title = 'Tint Color'})
WorldModulation:AddDropdown('customSkybox', {Values = {'Purple Nebula', 'Pink Daylight', 'Space', 'Mountains', 'Midnight', 'Anime', 'Red Night', 'Default'}, Text = 'Skybox Changer', Default = 8})

WorldModulation:AddSlider('CameraFovSize', {
    Text = 'Camera FOV',

    Default = 70,
    Min = 5,
    Max = 120,
    Rounding = 0,
    Compact = false,
})

Options.CameraFovSize:OnChanged(function()
    workspace.CurrentCamera.FieldOfView = Options.CameraFovSize.Value
end)

Options.customSkybox:OnChanged(function()
    local bI = Options.customSkybox.Value
    if not game.Lighting:FindFirstChild("customsky") and bI ~= 'Default' then
        local bJ = Instance.new("Sky", game.Lighting)
        bJ.Name = "customsky"
        if Skyboxes[bI] then
            for B, C in next, Skyboxes[bI] do
                game.Lighting.customsky[B] = C
            end
        end
    end

    if Skyboxes[bI] and game.Lighting:FindFirstChild("customsky") and bI ~= 'Default' then
        for B, C in next, Skyboxes[bI] do
            game.Lighting.customsky[B] = C
        end
    end

    if bI == 'Default' and game.Lighting:FindFirstChild("customsky") then
        game.Lighting.customsky:Destroy()
    end
end)

local OriginalTint = game.Lighting.ColorCorrection.TintColor
Options.TintColorColor:OnChanged(function()
    if Toggles.tintColorTgl.Value then
        game.Lighting.ColorCorrection.TintColor = Options.TintColorColor.Value
    end
end)

Toggles.tintColorTgl:OnChanged(function()
    if Toggles.tintColorTgl.Value == false then
        game.Lighting.ColorCorrection.TintColor = OriginalTint
    end
end)

local GraphicsModifiers = Tabs.VisualsTab:AddLeftGroupbox('Graphics Modifiers')

local DecentPC = GraphicsModifiers:AddButton('Decent Computer', function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v.ClassName == "Part"
        or v.ClassName == "SpawnLocation"
        or v.ClassName == "WedgePart"
        or v.ClassName == "Terrain"
        or v.ClassName == "MeshPart" then
        v.Material = "Plastic"
        end
    end
end)

DecentPC:AddTooltip("Will remove the textures from objects!")

local BadPC = DecentPC:AddButton("Bad Computer", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v.ClassName == "Part" or v.ClassName == "SpawnLocation" or v.ClassName == "WedgePart" or v.ClassName == "Terrain" or v.ClassName == "MeshPart" then
            v.Material = "Plastic"
        end
    end
        
        for _,v in pairs(workspace:GetDescendants()) do
        if v.ClassName == "Decal" or v.ClassName == "Texture" then 
            v:Destroy()
        end
    end
end)

BadPC:AddTooltip("Use this to boost your fps!")

local OPPC = GraphicsModifiers:AddButton('RTX Mode (lol)', function()
    local light = game.Lighting
    for i, v in pairs(light:GetChildren()) do
        v:Destroy()
    end

local ter = workspace.Terrain
local color = Instance.new("ColorCorrectionEffect")
local bloom = Instance.new("BloomEffect")
local sun = Instance.new("SunRaysEffect")
local blur = Instance.new("BlurEffect")

color.Parent = light
bloom.Parent = light
sun.Parent = light
blur.Parent = light


local config = {

	Terrain = true;
	ColorCorrection = true;
	Sun = true;
	Lighting = true;
	BloomEffect = true;
	
}


color.Enabled = false
color.Contrast = 0.15
color.Brightness = 0.1
color.Saturation = 0.25
color.TintColor = Color3.fromRGB(255, 222, 211)

bloom.Enabled = false
bloom.Intensity = 0.1

sun.Enabled = false
sun.Intensity = 0.2
sun.Spread = 1

bloom.Enabled = false
bloom.Intensity = 0.05
bloom.Size = 32
bloom.Threshold = 1

blur.Enabled = false
blur.Size = 6



if config.ColorCorrection then
	color.Enabled = true
end


if config.Sun then
	sun.Enabled = true
end


if config.Terrain then
	ter.WaterColor = Color3.fromRGB(10, 10, 24)
	ter.WaterWaveSize = 0.15
	ter.WaterWaveSpeed = 22
	ter.WaterTransparency = 1
	ter.WaterReflectance = 0.05
end


if config.Lighting then
	light.Ambient = Color3.fromRGB(0, 0, 0)
	light.Brightness = 4
	light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
	light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
	light.ExposureCompensation = 0
	light.FogColor = Color3.fromRGB(132, 132, 132)
	light.GlobalShadows = true
	light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
	light.Outlines = false
end
end)

OPPC:AddTooltip("Warning! DO not use this if your computer is bad!")

-- VISUALS CONFIGURATION

local VisualsCFG = Tabs.VisualsTab:AddRightGroupbox('Visuals CFG')


VisualsCFG:AddToggle('facecameratgl', {
    Text = 'Boxes Face Camera',
    Default = true,
    Tooltip = 'This will decide if the boxes face your camera or the direction the player is looking to!'
})

Toggles.facecameratgl:OnChanged(function()
    ESP.FaceCamera = Toggles.facecameratgl.Value
end)

VisualsCFG:AddLabel('ESP Color'):AddColorPicker('espcolor', {
    Default = Color3.new(0, 1, 0),
    Title = 'Esp Color',
})

VisualsCFG:AddLabel('Chams Fill Color'):AddColorPicker('Chams_Fill', {
    Default = Color3.new(0, 1, 0),
    Title = 'Chams Fill Color',
})

Options.Chams_Fill:OnChanged(function()
    pcall(function()
        for i,v in next, Players:GetPlayers() do
            if v.Name ~= LocalPlayer.Name and v.Character and v.Character.HumanoidRootPart then
                if v.Character:FindFirstChild("chem") then
                    v.Character.chem.FillColor = Options.Chams_Fill.Value
                end
            end
        end
    end)
end)

VisualsCFG:AddLabel('Chams Outline'):AddColorPicker('Chams_Outline', {
    Default = Color3.new(0, 1, 0),
    Title = 'Chams Outline Color',
})

Options.Chams_Outline:OnChanged(function()
    pcall(function()
        for i,v in next, Players:GetPlayers() do
            if v.Name ~= LocalPlayer.Name and v.Character and v.Character.HumanoidRootPart then
                if v.Character:FindFirstChild("chem") then
                    v.Character.chem.OutlineColor = Options.Chams_Outline.Value
                end
            end
        end
    end)
end)



Options.espcolor:OnChanged(function()
    color = Options.espcolor.Value
    ESP.Color = color
end)

local ModulationTab = Tabs.VisualsTab:AddRightGroupbox('Character Modulation')

ModulationTab:AddDropdown('CharacterMaterial', {
    Values = { 'Plastic', 'Metal', 'Neon', 'ForceField'},
    Default = 1,
    Multi = false,

    Text = 'Character Material'
})

Options.CharacterMaterial:OnChanged(function()
    pcall(function()
        local id = game.Players.LocalPlayer.UserId
        local neim = game.Players.LocalPlayer.Name
        if Options.CharacterMaterial.Value ~= 'Plastic' and LocalPlayer.Character:FindFirstChild("Shirt") and LocalPlayer.Character:FindFirstChild("Pants") then
            LocalPlayer.Character.Shirt:Destroy()
            LocalPlayer.Character.Pants:Destroy()
        end
        local neim = game.Players.LocalPlayer.Name
        LocalPlayer.Character.Head.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.LeftHand.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.UpperTorso.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.RightUpperLeg.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.RightLowerLeg.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.RightFoot.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.LeftFoot.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.LeftUpperLeg.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.LeftLowerLeg.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.LowerTorso.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.RightUpperArm.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.LeftUpperArm.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.RightLowerArm.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.LeftLowerArm.Material = Options.CharacterMaterial.Value
        LocalPlayer.Character.RightHand.Material = Options.CharacterMaterial.Value
    end)
end)

ModulationTab:AddLabel('Character Color'):AddColorPicker('CharColour', {
    Default = Color3.new(0, 1, 0),
    Title = 'Character Color',
})

Options.CharColour:OnChanged(function()
    pcall(function()
        if LocalPlayer.Character:FindFirstChild("Shirt") and LocalPlayer.Character:FindFirstChild("Pants") then
            return
        end
        LocalPlayer.Character.Head.Color = Options.CharColour.Value
        LocalPlayer.Character.LeftHand.Color = Options.CharColour.Value
        LocalPlayer.Character.UpperTorso.Color = Options.CharColour.Value
        LocalPlayer.Character.RightUpperLeg.Color = Options.CharColour.Value
        LocalPlayer.Character.RightLowerLeg.Color = Options.CharColour.Value
        LocalPlayer.Character.RightFoot.Color = Options.CharColour.Value
        LocalPlayer.Character.LeftFoot.Color = Options.CharColour.Value
        LocalPlayer.Character.LeftUpperLeg.Color = Options.CharColour.Value
        LocalPlayer.Character.LeftLowerLeg.Color = Options.CharColour.Value
        LocalPlayer.Character.LowerTorso.Color = Options.CharColour.Value
        LocalPlayer.Character.RightUpperArm.Color = Options.CharColour.Value
        LocalPlayer.Character.LeftUpperArm.Color = Options.CharColour.Value
        LocalPlayer.Character.RightLowerArm.Color = Options.CharColour.Value
        LocalPlayer.Character.LeftLowerArm.Color = Options.CharColour.Value
        LocalPlayer.Character.RightHand.Color = Options.CharColour.Value
    end)
end)

ModulationTab:AddDropdown('KaguneMaterial', {
    Values = { 'Plastic', 'Metal', 'Neon', 'ForceField'},
    Default = 1,
    Multi = false,

    Text = 'Kagune Material',
    Tooltip = 'Will change your kagune material',
})

Options.KaguneMaterial:OnChanged(function()
    local id = game.Players.LocalPlayer.UserId
    local neim = game.Players.LocalPlayer.Name
    if getteam() == "CCG" then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("Kagune") then
        return
    end
    for i,v in pairs(LocalPlayer.Character.Kagune:GetChildren()) do
        v.Material = Options.KaguneMaterial.Value
    end
end)

ModulationTab:AddLabel('Kagune Color'):AddColorPicker('KagColor', {
    Default = Color3.new(0, 1, 0),
    Title = 'Kagune Color',
})

Options.KagColor:OnChanged(function()
    local id = game.Players.LocalPlayer.UserId
    local neim = game.Players.LocalPlayer.Name
    if getteam() == "CCG" then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("Kagune") then
        return
    end
    local newval = BrickColor.new(Options.KagColor.Value)
    for i,v in pairs(LocalPlayer.Character.Kagune:GetChildren()) do
        v.BrickColor = newval
    end
end)

ModulationTab:AddDropdown('QuinqueMaterial', {
    Values = { 'Plastic', 'Metal', 'Neon', 'ForceField'},
    Default = 1,
    Multi = false,

    Text = 'Quinque Material',
    Tooltip = 'Will change your quinque material',
})

Options.QuinqueMaterial:OnChanged(function()
    local id = game.Players.LocalPlayer.UserId
    local neim = game.Players.LocalPlayer.Name
    if getteam() == "Ghoul" then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("Quinque") then
        return
    end
    for i,v in pairs(LocalPlayer.Character.Quinque:GetChildren()) do
        v.Material = Options.QuinqueMaterial.Value
    end
end)

ModulationTab:AddLabel('Quinque Color'):AddColorPicker('QuinColor', {
    Default = Color3.new(0, 1, 0),
    Title = 'Quinque Color',
})

Options.QuinColor:OnChanged(function()
    local id = game.Players.LocalPlayer.UserId
    local neim = game.Players.LocalPlayer.Name
    if getteam() == "Ghoul" then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("Quinque") then
        return
    end
    local newval = BrickColor.new(Options.QuinColor.Value)
    for i,v in pairs(LocalPlayer.Character.Quinque:GetChildren()) do
        v.BrickColor = newval
    end
end)

-- VISUALS CONFIGURATION END

-- MISC TOGGLES

local MiscLeftGroupBox = Tabs.MiscTab:AddLeftGroupbox("Misc Toggles")

MiscLeftGroupBox:AddToggle('WSToggle', {
    Text = "Walkspeed",
    Default = false,
    Tooltip = 'Modify your walkspeed.'
})

MiscLeftGroupBox:AddToggle('JPToggle', {
    Text = "Jump Power",
    Default = false,
    Tooltip = 'Modify your jump power!'
})

MiscLeftGroupBox:AddToggle('DashAMP', {
    Text = "Dash Amplificator",
    Default = false,
    Tooltip = 'Will make your dashes way longer!'
})

MiscLeftGroupBox:AddToggle('NoclipToggle', {
    Text = 'Noclip',
    Default = false,
    Tooltip = 'Allows you to walk through walls!',
})

MiscLeftGroupBox:AddToggle('removeinsanitytoggle', {
    Text = 'Remove insanity effects',
    Default = false,
    Tooltip = 'Remove insanity effects!',
})

Toggles.removeinsanitytoggle:OnChanged(function()
    if Toggles.removeinsanitytoggle.Value == true then
        game:GetService("Players").LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
            if child.Name == "" and Toggles.removeinsanitytoggle.Value == true then
                child.Enabled = false
            end
        end)
    end
end)

Toggles.NoclipToggle:OnChanged(function()
    if Toggles.NoclipToggle.Value == true then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CanCollide = false
    elseif Toggles.NoclipToggle.Value == false then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CanCollide = true
    end
end)

Toggles.NoclipToggle:SetValue(false)

MiscLeftGroupBox:AddToggle('GravityToggle', {
    Text = 'Gravity Changer',
    Default = false,
    Tooltip = 'Changes the game gravity',
})

MiscLeftGroupBox:AddToggle('StaffNotifierToggle', {
    Text = 'Staff Notifier',
    Default = true,
    Tooltip = 'Will automatically kick you when a staff member joins your game!',
})

Toggles.StaffNotifierToggle:OnChanged(function()
    if Toggles.StaffNotifierToggle.Value == true then
        for i,v in pairs(game.Players:GetPlayers()) do
            if table.find(StaffTable, v.UserId) then
                if Toggles.StaffNotifierToggle.Value == true then
                    game.Players.LocalPlayer:Kick("A staff member is in your game!")
                end
            end
        end
        game.Players.PlayerAdded:Connect(function(player)
            if table.find(StaffTable, player.UserId) then
                if Toggles.StaffNotifierToggle.Value == true then
                    game.Players.LocalPlayer:Kick("A staff member has joined your game!")
                end
            end
        end)
    end
end)


MiscLeftGroupBox:AddToggle('NoBlockKnockBackTgl', {
    Text = 'No block knockback',
    Default = false,
    Tooltip = 'Will remove the block knockback',
})

MiscLeftGroupBox:AddToggle('flossTgl', {
    Text = 'Floss',
    Default = false
})

local Dance = Instance.new("Animation", game.CoreGui)
Dance.Name = 'hiehasdhashasdbaidh'
Dance.AnimationId = "rbxassetid://5917459365"
local Default = Instance.new('Animation', game.CoreGui)
Default.Name = 'auifhu8wehfuwnfui'
Default.AnimationId = 'rbxassetid://3732699835'
local LoadedAnim


Toggles.flossTgl:OnChanged(function()
    if Toggles.flossTgl.Value then
        pcall(function()
            LoadedAnim:Stop()
        end)
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance)
            LoadedAnim.Priority = Enum.AnimationPriority.Action
            LoadedAnim:Play()
        end
    else
        pcall(function()
            LoadedAnim:Stop()
        end)
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
			LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Default)
			LoadedAnim.Priority = Enum.AnimationPriority.Action
			LoadedAnim:Play()
		end
    end
end)

local function onRespawn()
    wait(1)
    if Toggles.flossTgl.Value then
        pcall(function()
            LoadedAnim:Stop()
        end)
        pcall(function()
            if LocalPlayer.Character and LocalPlayer.Character:WaitForChild("Humanoid", 1) then
                LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance)
                LoadedAnim.Priority = Enum.AnimationPriority.Action
                LoadedAnim:Play()
            end
        end)
    end

    if Options.CharacterMaterial.Value ~= "Plastic" then
        pcall(function()
            local neim = game.Players.LocalPlayer.Name
            if LocalPlayer.Character:FindFirstChild("Shirt") and LocalPlayer.Character:FindFirstChild("Pants") then
                LocalPlayer.Character.Shirt:Destroy()
                LocalPlayer.Character.Pants:Destroy()
            end
            LocalPlayer.Character.Head.  Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.LeftHand.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.UpperTorso.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.RightUpperLeg.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.RightLowerLeg.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.RightFoot.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.LeftFoot.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.LeftUpperLeg.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.LeftLowerLeg.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.LowerTorso.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.RightUpperArm.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.LeftUpperArm.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.RightLowerArm.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.LeftLowerArm.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.RightHand.Material = Options.CharacterMaterial.Value
            LocalPlayer.Character.Head.Color = Options.CharColour.Value
            LocalPlayer.Character.LeftHand.Color = Options.CharColour.Value
            LocalPlayer.Character.UpperTorso.Color = Options.CharColour.Value
            LocalPlayer.Character.RightUpperLeg.Color = Options.CharColour.Value
            LocalPlayer.Character.RightLowerLeg.Color = Options.CharColour.Value
            LocalPlayer.Character.RightFoot.Color = Options.CharColour.Value
            LocalPlayer.Character.LeftFoot.Color = Options.CharColour.Value
            LocalPlayer.Character.LeftUpperLeg.Color = Options.CharColour.Value
            LocalPlayer.Character.LeftLowerLeg.Color = Options.CharColour.Value
            LocalPlayer.Character.LowerTorso.Color = Options.CharColour.Value
            LocalPlayer.Character.RightUpperArm.Color = Options.CharColour.Value
            LocalPlayer.Character.LeftUpperArm.Color = Options.CharColour.Value
            LocalPlayer.Character.RightLowerArm.Color = Options.CharColour.Value
            LocalPlayer.Character.LeftLowerArm.Color = Options.CharColour.Value
            LocalPlayer.Character.RightHand.Color = Options.CharColour.Value
        end)
    end
end


LocalPlayer.CharacterAdded:Connect(onRespawn)


MiscLeftGroupBox:AddToggle('removeAnimsTgl', {
    Text = 'Remove Animations',
    Default = false
})

MiscLeftGroupBox:AddToggle('noStunTgl', {
    Text = 'Dash Unlock',
    Default = false,
    Tooltip = 'Will allow you to dash while using moves that usually block the dash. Such as: Blocking'
})

MiscLeftGroupBox:AddToggle('gmToggle', {
    Text = 'God Mode',
    Default = false,
    Tooltip = 'Please note that it wont work all the time and that it only works while standing still!'
})


LocalPlayer.PlayerFolder.CanAct:GetPropertyChangedSignal("Value"):Connect(function()
    if Toggles.noStunTgl.Value then
        LocalPlayer.PlayerFolder.CanAct.Value = true
    end
end)

MiscLeftGroupBox:AddDivider()

local InvisibilityButton = MiscLeftGroupBox:AddButton('Invisibility', function()
    if getteam() == 'CCG' then
        local oldpos = LocalPlayer.Character.HumanoidRootPart.CFrame
        LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-224302576, 339534336, -224376352, 0.707106769, 3.76243268e-15, 0.707106769, -8.59144933e-09, 1, 8.591444e-09, -0.707106769, -1.21501404e-08, 0.707106769)
        LocalPlayer.Character:WaitForChild("LowerTorso").Root:Destroy()
        LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
    elseif getteam() == 'Ghoul' then
        if LocalPlayer.Character['ServerControl']:FindFirstChild('CurrentWep').Value == 'Seidou Takizawa3' or LocalPlayer.Character['ServerControl']:FindFirstChild('CurrentWep').Value == 'Eto Yoshimura2' or LocalPlayer.Character['ServerControl']:FindFirstChild('CurrentWep').Value == 'Eto Yoshimura3' or  LocalPlayer.Character['ServerControl']:FindFirstChild('CurrentWep').Value == 'Eto Yoshimura4' or LocalPlayer.Character['ServerControl']:FindFirstChild('CurrentWep').Value == 'Kakujira2' or LocalPlayer.Character['ServerControl']:FindFirstChild('CurrentWep').Value == 'Noro2' or LocalPlayer.Character['ServerControl']:FindFirstChild('CurrentWep').Value == 'Lycan1' then
            LocalPlayer.Character.Kagune:Destroy()
        else
            local oldpos = LocalPlayer.Character.HumanoidRootPart.CFrame
            LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-224302576, 339534336, -224376352, 0.707106769, 3.76243268e-15, 0.707106769, -8.59144933e-09, 1, 8.591444e-09, -0.707106769, -1.21501404e-08, 0.707106769)
            LocalPlayer.Character:WaitForChild("LowerTorso").Root:Destroy()
            LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
        end
    end
end)

local removename = InvisibilityButton:AddButton('Remove Nametag', function()
    game:GetService("Players").LocalPlayer.Character.Head.PlayerStatus.plrName:Destroy()
    game:GetService("Players").LocalPlayer.Character.Head.PlayerStatus.plrTitle:Destroy()
end)

removename:AddTooltip("This will remove your Nametag for everyone!")

local rejoinsameserver = MiscLeftGroupBox:AddButton('Rejoin Server', function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)

rejoinsameserver:AddTooltip("This will rejoin you the same server!")

local joinsmallestserver = rejoinsameserver:AddButton('Smallest Server', function()
    local TeleportService = game:GetService("TeleportService")
    local HttpService = game:GetService("HttpService")
    local BaseAPI = "https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100&cursor="
    local ServerData = HttpService:JSONDecode(game:HttpGet(BaseAPI))
    local ServerJobIDs = {}
    while true do
        local NextPage = ServerData.nextPageCursor
        local Servers = ServerData.data
        for _, Server in pairs(Servers) do
            if Server.playing < Server.maxPlayers then
                table.insert(ServerJobIDs, Server.id)
            end
        end
        if NextPage then
            ServerData = HttpService:JSONDecode(game:HttpGet(BaseAPI..NextPage))
        else
            break
        end
    end
    TeleportService:TeleportToPlaceInstance(game.PlaceId, ServerJobIDs[#ServerJobIDs])
end)

joinsmallestserver:AddTooltip("This will teleport you to the smallest server!")

local deleteCcgCase = MiscLeftGroupBox:AddButton('Delete Briefcase', function()
    if getteam() == 'CCG' then
        pcall(function()
            LocalPlayer.Character.Case:Destroy()
        end)
    else
        Library:Notify("You can only use this on CCG.")
        return
    end
end)

local FakeLagBox = Tabs.MiscTab:AddLeftGroupbox("Fake Lag")

FakeLagBox:AddToggle('fakeLagTgl', {Text = 'Fake Lag', Default = false})
FakeLagBox:AddToggle('visualseFakeLag', {Text = 'Visualise Fake Lag', Default = false}):AddColorPicker('Fake_Lag_Color', {Default = Color3.new(1, 1, 0)})
FakeLagBox:AddSlider('lagTicks', {Text = 'FakeLag Ticks', Min = 1, Max = 18, Default = 9, Rounding = 0, Suffix = 'ticks'})
FakeLagBox:AddDropdown('flMethod', {Values = {'Static', 'Dynamic'}, Default = 1, Multi = false, Text = 'Fakelag Method'})

task.spawn(function()
    local Network = game:GetService("NetworkClient")
    local LagTick = 0

    while true do
        wait(1/16)
        LagTick = math.clamp(LagTick + 1, 0, Options.lagTicks.Value)
        if Toggles.fakeLagTgl.Value and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
            if LagTick == (Options.flMethod.Value == "Static" and Options.lagTicks.Value or math.random(1, Options.lagTicks.Value)) then
                Network:SetOutgoingKBPSLimit(9e9)
                LagTick = 0
                if LocalPlayer.Character:FindFirstChild("Fakelag") then
                    LocalPlayer.Character:FindFirstChild("Fakelag"):ClearAllChildren()
                else
                    local Folder = Instance.new("Folder")
                    Folder.Name = "Fakelag"
                    Folder.Parent = LocalPlayer.Character
                end
                if Toggles.visualseFakeLag.Value then
                    LocalPlayer.Character.Archivable = true
                    local Clone = LocalPlayer.Character:Clone()
                    for _,Obj in next, Clone:GetDescendants() do
                        if Obj.Name == "HumanoidRootPart" or Obj:IsA("Humanoid") or Obj:IsA("LocalScript") or Obj:IsA("Script") or Obj:IsA("Decal") then
                            Obj:Destroy()
                        elseif Obj:IsA("BasePart") or Obj:IsA("Meshpart") or Obj:IsA("Part") then
                            if Obj.Transparency == 1 then
                                Obj:Destroy()
                            else
                                Obj.CanCollide = false
                                Obj.Anchored = true
                                Obj.Material = "ForceField"
                                Obj.Color = Options.Fake_Lag_Color.Value
                                Obj.Transparency = 0
                                Obj.Size = Obj.Size + Vector3.new(0.03, 0.03, 0.03)
                            end
                        end
                        pcall(function()
                            Obj.CanCollide = false
                        end)
                    end
                    Clone.Parent = LocalPlayer.Character.Fakelag
                end
            else
                Network:SetOutgoingKBPSLimit(1)
            end
        else
            if LocalPlayer.Character then
                if LocalPlayer.Character:FindFirstChild("Fakelag") then
                    LocalPlayer.Character:FindFirstChild("Fakelag"):ClearAllChildren()
                else
                    local Folder = Instance.new("Folder")
                    Folder.Name = "Fakelag"
                    Folder.Parent = LocalPlayer.Character
                end
            end
            Network:SetOutgoingKBPSLimit(9e9)
        end
    end
end)


local StatsChangerBox = Tabs.StatsChangerTab:AddLeftGroupbox("Stats Changer")

StatsChangerBox:AddSlider('lvlchanger', {Text = "Level Changer", Default = tostring(LocalPlayer.PlayerFolder.Stats.Level.Value),Min = 0,Max = 2000,Rounding = 0})

Options.lvlchanger:OnChanged(function()
    local Value = Options.lvlchanger.Value
    game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.StatsFrame.LevelLabel.Text = 'LVL: '..comma_value(Value)
    if tonumber(Value) >= 2000 and getteam() == 'CCG' then
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.StatsFrame.ExpLabel.Text = 'EXP: MAXED!'
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.BackExp.BackgroundColor3 = Color3.fromRGB(0, 88, 118)
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.BackExp.ExpBar.BackgroundColor3 = Color3.fromRGB(0, 88, 118)
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.BackExp.ExpBar.ExpBar.BackgroundColor3 = Color3.fromRGB(0, 88, 118)
    elseif tonumber(Value) >= 2000 and getteam() == 'Ghoul' then
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.StatsFrame.ExpLabel.Text = 'EXP: MAXED!'
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.BackExp.BackgroundColor3 = Color3.fromRGB(100,0,0,255)
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.BackExp.ExpBar.BackgroundColor3 = Color3.fromRGB(100,0,0,255)
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.BackExp.ExpBar.ExpBar.BackgroundColor3 = Color3.fromRGB(100,0,0,255)
    end
end)

StatsChangerBox:AddSlider('wepchanger', {Text = "Qui/Kag Changer", Default = tostring(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerFolder.Stats.Weapon.Value), Min = 0, Max = 1000000, Rounding = 0})


Options.wepchanger:OnChanged(function()
    local Value = Options.wepchanger.Value
    local quiorkag
    if getteam() == "CCG" then
        quiorkag = "QUI: "
    else
        quiorkag = "KAG: "
    end
    game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.HUD.MainFrame.StatsFrame.WeaponLabel.Text = quiorkag..comma_value(Value)
end)

StatsChangerBox:AddSlider('rchanger', {Text = "RC Changer",Default = tostring(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerFolder.Stats.RC.Value),Min = 0,Max = 100000000,Rounding = 0})

Options.rchanger:OnChanged(function()
    local Value = Options.rchanger.Value
    game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.StatsFrame.RCLabel.Text = 'RC: '..comma_value(Value)
end)

StatsChangerBox:AddSlider('yenchanger', {Text = "Yen Changer",Default = tostring(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerFolder.Stats.Yen.Value),Min = 0,Max = 1000000000,Rounding = 0})

Options.yenchanger:OnChanged(function()
    local Value = Options.yenchanger.Value
    game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.StatsFrame.YenLabel.Text = 'YEN: '..comma_value(Value)
end)

StatsChangerBox:AddSlider('durchanger', {Text = "Durability Changer",Default = tostring(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerFolder.Stats.Durability.Value),Min = 0,Max = 1000000000,Rounding = 0})

Options.durchanger:OnChanged(function()
    local Value = Options.durchanger.Value
    game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.StatsFrame.DurabilityLabel.Text = 'DUR: '..comma_value(Value)
end)

StatsChangerBox:AddSlider('fochanger', {Text = "Focus Changer",Default = tostring(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerFolder.Stats.Focus.Value),Min = 0,Max = 1000000000,Rounding = 0})

Options.fochanger:OnChanged(function()
    local Value = Options.fochanger.Value
    game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.StatsFrame.FocusLabel.Text = 'FOC: '..comma_value(Value)
end)

StatsChangerBox:AddSlider('phychanger', {Text = "Physical Changer",Default = tostring(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerFolder.Stats.Physical.Value),Min = 0,Max = 1000000000,Rounding = 0})

Options.phychanger:OnChanged(function()
    local Value = Options.phychanger.Value
    game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.StatsFrame.PhysicalLabel.Text = 'PHY: '..comma_value(Value)
end)

StatsChangerBox:AddSlider('speedchanger', {Text = "Speed Changer",Default = tostring(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerFolder.Stats.Speed.Value),Min = 0,Max = 1000000000,Rounding = 0})

Options.speedchanger:OnChanged(function()
    local Value = Options.speedchanger.Value
    game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.StatsFrame.SpeedLabel.Text = 'SPD: '..comma_value(Value)
end)

StatsChangerBox:AddSlider('repchanger', {Text = "REP Changer",Default = tostring(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerFolder.Stats.Reputation.Value),Min = 0,Max = 50000000,Rounding = 0})

Options.repchanger:OnChanged(function()
    local Value = Options.repchanger.Value
    game:GetService("Players").LocalPlayer.PlayerGui.HUD.MainFrame.StatsFrame.ReputationLabel.Text = 'REP: '..comma_value(Value)
    local Name = game.Players.LocalPlayer.Name
    if getteam() == 'CCG' then
        if tonumber(Value) < 25000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = 'Rank 3 Investigator'
        end
        if tonumber(Value) >= 25000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = 'Rank 2 Investigator'
        end
        if tonumber(Value) >= 50000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = 'Rank 1 Investigator'
        end
        if tonumber(Value) >= 100000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = 'First Class Investigator'
        end
        if tonumber(Value) >= 250000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = 'Associate Special Class Investigator'
        end
        if tonumber(Value) >= 750000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = 'Special Class Investigator'
        end
    elseif getteam() == 'Ghoul' then
        if tonumber(Value) < 25000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = '[C]-Rated'
        end
        if tonumber(Value) >= 25000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = '[B]-Rated'
        end
        if tonumber(Value) >= 50000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = '[A]-Rated'
        end
        if tonumber(Value) >= 100000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = '[S-]-Rated'
        end
        if tonumber(Value) >= 250000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = '[S+]-Rated'
        end
        if tonumber(Value) >= 750000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = '[SS]-Rated'
        end
        if tonumber(Value) >= 1000000 then
            game:GetService("Workspace")[Name].Head.PlayerStatus.plrTitle.Text = '[SSS]-Rated'
        end
    end
end)



-- MISC TOGGLES END


-- MISC CONFIGURATION

local MiscRightGroupBox = Tabs.MiscTab:AddRightGroupbox("Misc Configuration")


MiscRightGroupBox:AddSlider('WSlider', {
    Text = 'WalkSpeed',

    Default = 24,
    Min = 5,
    Max = 1000,
    Rounding = 0,

    Compact = false,
})

Toggles.WSToggle:OnChanged(function()
    if Toggles.WSToggle.Value == false then
        KeyPress("X", 0.09)
        KeyPress("X", 0.09)
    end
end)

Options.WSlider:OnChanged(function()
    local neim = game.Players.LocalPlayer.Name
    if Toggles.WSToggle.Value == false then return end
    if Options.WSlider.Value > 143 then
        game:GetService('ScriptContext'):SetTimeout(1)
    elseif Options.WSlider.Value < 143 then
        game:GetService('ScriptContext'):SetTimeout(0)
    end
    while Toggles.WSToggle.Value == true do
        game.Players[neim].Character.Humanoid.WalkSpeed = Options.WSlider.Value
        wait(1.5)
    end
end)

MiscRightGroupBox:AddSlider('JPSlider', {
    Text = 'JumpPower',

    Default = 24,
    Min = 5,
    Max = 1000,
    Rounding = 0,

    Compact = false,
})

Toggles.JPToggle:OnChanged(function()
    if Toggles.JPToggle.Value == false then
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 55
    end
end)

Options.JPSlider:OnChanged(function()
    if Toggles.JPToggle.Value == false then return end
    local neim = game.Players.LocalPlayer.Name
    if Options.JPSlider.Value > 100 then
        game:GetService('ScriptContext'):SetTimeout(1)
    elseif Options.JPSlider.Value < 100 then
        game:GetService('ScriptContext'):SetTimeout(0)
    end
    local RunService = game:GetService("RunService")
    while Toggles.JPToggle.Value == true do
        game.Players[neim].Character.Humanoid.JumpPower = Options.JPSlider.Value
        wait(1.5)
    end
end)

MiscRightGroupBox:AddSlider('DashAmpSlider', {
    Text = "Dash Amplificator Power",
    
    Default = 50,
    Min = 50,
    Max = 1000,
    Rounding = 0,

    Compact = false,
})

MiscRightGroupBox:AddInput('dashAmpBox', {Default = 'Manual Dash Power', Numeric = true, Finished = false, Text = 'Manual Dash Power', Placeholder = 'Manual Dash Power'})

Options.dashAmpBox:OnChanged(function()
    Options.DashAmpSlider:SetValue(Options.dashAmpBox.Value)
end)


Toggles.DashAMP:OnChanged(function()
    if Toggles.DashAMP.Value == false then
        Options.DashAmpSlider.Value = 50
    end
end)



Options.DashAmpSlider:OnChanged(function()
    if Toggles.DashAMP.Value == false then
        Options.DashAmpSlider.Value = 50
    end

    local lastpressed = nil
    game:GetService("UserInputService").InputBegan:Connect(function(inputObject,gpe)
        if inputObject.KeyCode == Enum.KeyCode.W and not gpe then
            lastpressed = "w"
        end	
    end)
        
    game:GetService("UserInputService").InputBegan:Connect(function(inputObject,gpe)
        if inputObject.KeyCode == Enum.KeyCode.A and not gpe then
            lastpressed = "a"
        end	
    end)
        
    game:GetService("UserInputService").InputBegan:Connect(function(inputObject,gpe)
        if inputObject.KeyCode == Enum.KeyCode.D and not gpe then
            lastpressed = "d"
        end	
    end)
        
    game:GetService("UserInputService").InputBegan:Connect(function(inputObject,gpe)
        if inputObject.KeyCode == Enum.KeyCode.S and not gpe then
            lastpressed = "s"
        end	
    end)

    game:GetService("UserInputService").InputBegan:Connect(function(inputObject,gpe)
        if inputObject.KeyCode == Enum.KeyCode.T and not gpe then
            lastpressed = "t"
        end	
    end)

    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").ChildAdded:Connect(function(descendant)
        if descendant:IsA("BodyPosition") then
            if lastpressed == "w" then
                local IgnoreList = {}
                local ray = Ray.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector *  Options.DashAmpSlider.Value)
                local part, position = workspace:FindPartOnRayWithWhitelist(ray, IgnoreList)
                descendant.Position = position
            elseif lastpressed == "a" then
                local IgnoreList = {}
                local ray = Ray.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector * -Options.DashAmpSlider.Value)
                local part, position = workspace:FindPartOnRayWithWhitelist(ray, IgnoreList)
                descendant.Position = position
            elseif lastpressed == "d" then
                local IgnoreList = {}
                local ray = Ray.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector * Options.DashAmpSlider.Value)
                local part, position = workspace:FindPartOnRayWithWhitelist(ray, IgnoreList)
                descendant.Position = position
            elseif lastpressed == "s" then
                local IgnoreList = {}
                local ray = Ray.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * -Options.DashAmpSlider.Value)
                local part, position = workspace:FindPartOnRayWithWhitelist(ray, IgnoreList)
                descendant.Position = position
            elseif lastpressed == "t" then
                local IgnoreList = {}
                local ray = Ray.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector *(Toggles.NoBlockKnockBackTgl.Value and 0 or -5))
                local part, position = workspace:FindPartOnRayWithWhitelist(ray, IgnoreList)
                descendant.Position = position
            end
        end
    end)
end)

MiscRightGroupBox:AddSlider('GravitySlider', {
    Text = "Gravity Changer",
    
    Default = 120,
    Min = 1,
    Max = 1000,
    Rounding = 0,

    Compact = false,
})

Toggles.GravityToggle:OnChanged(function()
    if Toggles.GravityToggle.Value == false then
        game.Workspace.Gravity = 120
    end
end)

Options.GravitySlider:OnChanged(function()
    if Toggles.GravityToggle.Value == false then
        return
    end
    if Toggles.GravityToggle.Value == true then
        game.Workspace.Gravity = Options.GravitySlider.Value
    end
end)

local ManualStats = Tabs.StatsChangerTab:AddRightGroupbox("Manual Stats")

ManualStats:AddInput('lvltextBox', {Default = 'Manual Level Value', Numeric = true, Finished = false, Text = 'Manual Level', Placeholder = 'Level Value'})

Options.lvltextBox:OnChanged(function()
    Options.lvlchanger:SetValue(Options.lvltextBox.Value)
end)

ManualStats:AddInput('weptextbox', {Default = 'Manual Weapon Value', Numeric = true, Finished = false, Text = 'Manual Weapon', Placeholder = 'Weapon Value'})

Options.weptextbox:OnChanged(function()
    Options.wepchanger:SetValue(Options.weptextbox.Value)
end)

ManualStats:AddInput('weptextbox', {Default = 'Manual Weapon Value', Numeric = true, Finished = false, Text = 'Manual Weapon', Placeholder = 'Weapon Value'})

Options.weptextbox:OnChanged(function()
    Options.wepchanger:SetValue(Options.weptextbox.Value)
end)

ManualStats:AddInput('rctextbox', {Default = 'Manual RC Value', Numeric = true, Finished = false, Text = 'Manual RC', Placeholder = 'RC Value'})

Options.rctextbox:OnChanged(function()
    Options.rchanger:SetValue(Options.rctextbox.Value)
end)

ManualStats:AddInput('yenbox', {Default = 'Manual Yen Value', Numeric = true, Finished = false, Text = 'Manual Yen', Placeholder = 'Yen Value'})

Options.yenbox:OnChanged(function()
    Options.yenchanger:SetValue(Options.yenbox.Value)
end)

ManualStats:AddInput('durbox', {Default = 'Manual Durability Value', Numeric = true, Finished = false, Text = 'Manual Dur', Placeholder = 'Dur Value'})

Options.durbox:OnChanged(function()
    Options.durchanger:SetValue(Options.durbox.Value)
end)

ManualStats:AddInput('focbox', {Default = 'Manual Focus Value', Numeric = true, Finished = false, Text = 'Manual Foc', Placeholder = 'Foc Value'})

Options.focbox:OnChanged(function()
    Options.fochanger:SetValue(Options.focbox.Value)
end)

ManualStats:AddInput('phybox', {Default = 'Manual Physical Value', Numeric = true, Finished = false, Text = 'Manual Phy', Placeholder = 'Phy Value'})

Options.phybox:OnChanged(function()
    Options.phychanger:SetValue(Options.phybox.Value)
end)

ManualStats:AddInput('speedbox', {Default = 'Manual Speed Value', Numeric = true, Finished = false, Text = 'Manual Speed', Placeholder = 'Speed Value'})

Options.speedbox:OnChanged(function()
    Options.speedchanger:SetValue(Options.speedbox.Value)
end)

ManualStats:AddInput('repbox', {Default = 'Manual Rep Value', Numeric = true, Finished = false, Text = 'Manual Rep', Placeholder = 'Rep Value'})

Options.repbox:OnChanged(function()
    Options.repchanger:SetValue(Options.repbox.Value)
end)


-- TELEPORTS TAB END

-- AUTOFARM TAB START

local key = "操你💦💔🍑👌💦操你💦💔🍑👌💦💔🍑👌💦💔🍑👌💔🍑👌💦💔🍑👌"
local dis = 10
local dis_old = 10
local sped = 100
local twen = nil
local on2 = false
local old_on2 = false
local on1 = false
local rep_on = false
local auto_cash = false
local stag = 'One'
local AutofarmLeftGroupBox = Tabs.AutofarmTab:AddLeftGroupbox('Auto Farm')
local AutofarmRightGroupBox = Tabs.AutofarmTab:AddRightGroupbox('Auto Farm Configuration')


AutofarmLeftGroupBox:AddToggle('toggleautofarm', {
    Text = "Autofarm",
    Default = false,
    Tooltip = "Will begin autofarming"
})

Toggles.toggleautofarm:OnChanged(function()
    on2 = Toggles.toggleautofarm.Value
    old_on2 = Toggles.toggleautofarm.Value
    if Toggles.toggleautofarm.Value == true then
        game.Players.LocalPlayer.Character.Remotes.KeyEvent:FireServer(key, stag, "Down", CFrame.new(), CFrame.new())
        spawn(function()
            while on2 do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                    repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("SpawnSelection")--or wait(3)
                    repeat wait() until not game.Players.LocalPlayer.PlayerGui:FindFirstChild("SpawnSelection")--or wait(3)
                    wait(1)
                    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Remotes")
                    game.Players.LocalPlayer.Character.Remotes.KeyEvent:FireServer(key, stag, "Down", CFrame.new(), CFrame.new())
                end
                wait()
            end
        end)
    end
end)

AutofarmLeftGroupBox:AddToggle('autocollectcorpses', {
    Text = "Auto Collect Corpses",
    Default = false,
    Tooltip = "Will automatically collect the corpses!"
})

Toggles.autocollectcorpses:OnChanged(function()
    on1 = Toggles.autocollectcorpses.Value
end)

local whitelist = ''


AutofarmLeftGroupBox:AddToggle('autofarmrep', {
    Text = "Auto Reputation",
    Default = false,
    Tooltip = "Will also farm reputation"
})

Toggles.autofarmrep:OnChanged(function()
    rep_on = Toggles.autofarmrep.Value
    -- rep_on == true then
        --on2 = rep_on
    --else
        --on2 = old_on2
    --end
end)

AutofarmLeftGroupBox:AddToggle('autocashoutrep', {
    Text = "Auto Cashout",
    Default = false,
    Tooltip = "Will auto cashout reputation!"
})

Toggles.autocashoutrep:OnChanged(function()
    auto_cash = Toggles.autocashoutrep.Value
end)

AutofarmRightGroupBox:AddDropdown('npctofarm', {
    Values = {'Eto Yoshimura', 'Aogiri-Members'},
    Default = 2,
    Multi = false,

    Text = "Autofarm NPC",
    Tooltip = "Will choose what NPC to farm."
})

Options.npctofarm:OnChanged(function()
    whitelist = Options.npctofarm.Value
end)

AutofarmRightGroupBox:AddSlider('farmspeed', {
    Text = "AutoFarm Speed",
    Default = 80,
    Min = 5,
    Max = 150,
    Rounding = 0,
    Compact = false,
})

Options.farmspeed:OnChanged(function()
    sped = Options.farmspeed.Value
end)

AutofarmRightGroupBox:AddSlider('npcdistance', {
    Text = "Distance from NPC",
    Default = 5,
    Min = 0,
    Max = 15,
    Rounding = 0,
    Compact = false,
})
Options.npcdistance:OnChanged(function()
    dis = Options.npcdistance.Value
    dis_old = Options.npcdistance.Value
end)
local ass = true

local crum = 'cummmmmmmmmm'
local dis1 = 5
local last = math.huge
local nearest = nil
spawn(function()
    while wait(1) do
        for i,v in pairs(game:GetService("Workspace").NPCSpawns:GetChildren()) do 
            if v:IsA("MeshPart") and v:FindFirstChildWhichIsA("Model") and not string.find(v.Name, "Human") and (not string.find(v.Name, "Boss") or whitelist == "Eto Yoshimura") and string.find(v:FindFirstChildWhichIsA("Model").Name, whitelist) then
                for i2,v2 in pairs(v:GetChildren()) do 
                    if v2:IsA("Model") and v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local distance = (v2:FindFirstChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).magnitude
                        if distance < last then
                            last = distance
                            nearest = v2.HumanoidRootPart
                        end
                    end
                end
            end
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("MeshPart") or v:IsA("Part") then
                    if Toggles.toggleautofarm.Value == true then
                        v.CanCollide = false
                    end
                end
            end
        end
    end
end)
local times_fired = 0
spawn(function()
    while wait(1) do
        if on2 and game.Players.LocalPlayer.PlayerGui:FindFirstChild("HUD") then
            for i,v in pairs(game:GetService("Workspace").NPCSpawns:GetChildren()) do
                if v:IsA("MeshPart") and v:FindFirstChildWhichIsA("Model") and not string.find(v.Name, "Human") and (not string.find(v.Name, "Boss") or whitelist == "Eto Yoshimura") and string.find(v:FindFirstChildWhichIsA("Model").Name, whitelist) then
                    for i2,v2 in pairs(v:GetChildren()) do 
                        if v2:IsA("Model") and v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            if nearest ~= nil and nearest.Parent ~= nil then
                                repeat 
                                local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if on2 and hum and nearest ~= nil then 
                                    twen = game:GetService("TweenService"):Create(hum,TweenInfo.new((hum.Position - nearest.Position).magnitude/sped,Enum.EasingStyle.Quad),{CFrame = nearest.CFrame * CFrame.new(0,0,dis)})
                                    times_fired = times_fired + 1
                                    if ass and twen ~= nil then  
                                        twen:Play()
                                    end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Remotes") and ass and (nearest.Position - hum.Position).magnitude < 23 then
                                    game.Players.LocalPlayer.Character.Remotes.KeyEvent:FireServer(key, "Mouse1", "Down", CFrame.new(), CFrame.new())
                                end
                                end
                                wait()
                                until not v:FindFirstChildWhichIsA("Model") or nearest.Parent == nil or on2 == false
                                last, nearest = math.huge, nil
                                twen:Cancel()
                            end
                        end
                    end
                end
            end
        else
            last, nearest = math.huge, nil
        end
    end
end)
spawn(function()
    while wait() do
        times_fired = 0
        wait(10)
    end
end)
local crumy = true
spawn(function()
    while wait(1) do
        if rep_on then
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("HUD") then
            if game.Players.LocalPlayer.PlayerGui.HUD.TaskFrame.CompleteLabel.Text == "You have no task at the moment." and rep_on or crumy and twen ~= nil then
                ass = false
                local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local tp_part = game:GetService("Workspace").Anteiku.Yoshimura.HumanoidRootPart
                if hum then
                    game:GetService("TweenService"):Create(hum,TweenInfo.new((hum.Position - tp_part.Position).magnitude/100,Enum.EasingStyle.Quad),{CFrame = tp_part.CFrame}):Play()
                    if (hum.Position - tp_part.Position).magnitude < 2 then
                        game:GetService("ReplicatedStorage").Remotes.Yoshimura.Task:InvokeServer()
                        if auto_cash then
                            game:GetService("ReplicatedStorage").Remotes.ReputationCashOut:InvokeServer()
                        end
                        ass = true
                        crumy = false
                    end
                end
            end
        end
        function findComp(a, b)	
            if game.Players.LocalPlayer.PlayerGui:FindFirstChild("HUD") then
                for i,v in pairs(game.Players.LocalPlayer.PlayerGui.HUD.TaskFrame:GetChildren()) do 
                    if v.Name == a then	
                        local split = string.split(v.Text, '/')
                        local cur = split[1]
                        local max = split[2]
                        if b == 'cur' then
                            return(cur)
                        else
                            return(max)
                        end
                    end
                end
            end
        end
        local rn = 0
        local braf = nil
        local cur = nil
        spawn(function()
        repeat
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("HUD") then
            for i,v in pairs(game.Players.LocalPlayer.PlayerGui.HUD.TaskFrame:GetChildren()) do
                if v.Name ~= "FailureLabel" and game.Players.LocalPlayer.PlayerGui:FindFirstChild("HUD") and game.Players.LocalPlayer.PlayerGui.HUD.TaskFrame.CompleteLabel.Text ~= "You have no task at the moment." then
                    local currently = tonumber(string.match(findComp(v.Name, 'cur'), '%d+'))
                    local max = tonumber(findComp(v.Name, 'not cur'))
                    if max ~= nil and tonumber(rn) < max then
                        rn = max
                        braf = max
                    elseif currently ~= 0 then
                        cur = currently
                    end
                    if max == braf and rep_on then
                        local split = string.split(v.Text, " ")
                        whitelist = split[1]
                    end   
                end  
            end 
        end
        wait()
        until cur == braf or rep_on == false
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("HUD") and cur ~= nil and cur ~= 0 and braf ~= nil and cur == braf then
            crumy = true
            game.Players.LocalPlayer.PlayerGui.HUD.TaskFrame.CompleteLabel.Text = "You have no task at the moment."
            if game.Players.LocalPlayer.PlayerGui.HUD.TaskFrame.CompleteLabel.Text ~= "You have no task at the moment." then
                crumy = false
            end
        end
    end)
    end
    end
end)
spawn(function()
    while wait(1) do
    if on1 then
        for i,v in pairs(game:GetService("Workspace").NPCSpawns:GetChildren()) do 
            if v:FindFirstChildWhichIsA("Model") then 
                for i3,v3 in pairs(v:FindFirstChildWhichIsA("Model"):GetChildren()) do
                    if string.find(v3.Name:lower(), "corpse") and v3:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        if v3:FindFirstChild("ClickPart") then
                            for i4,v4 in pairs(v3:GetChildren()) do
                                if v4:FindFirstChildWhichIsA("ClickDetector") and (game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v3:FindFirstChild("HumanoidRootPart").Position).magnitude < 30 then
                                local hum = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                twen:Pause()
                                ass = false
                                spawn(function()
                                    repeat
                                        hum.CFrame = v3.HumanoidRootPart.CFrame
                                        pcall(function()
                                            fireclickdetector(v4:FindFirstChildWhichIsA("ClickDetector"))
                                        end)
                                    wait()
                                    until ass == true
                                end)
                                wait(0.3)
                                ass = true
                                end
                            end
                            end
                        end
                    end
                end
            end
        end
    end
end)





AutofarmLeftGroupBox:AddToggle('autokickonplayerjoin', {
    Text = "Auto Kick",
    Default = false,
    Tooltip = "Will automatically kick you when a player joins!"
})

Toggles.autokickonplayerjoin:OnChanged(function()
    if Toggles.autokickonplayerjoin.Value == true then
        game.Players.PlayerAdded:Connect(function(player)
            game.Players.LocalPlayer:Kick("Someone has joined your server! PlayerName: "..tostring(player.Name))
        end)
    end
end)

AutofarmLeftGroupBox:AddToggle('noIdleKick', {Text = 'No Idle Kick', Default = true, Tooltip = 'Prevent roblox from kicking you for being afk.'})

local bb = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    if Toggles.noIdleKick.Value then
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end)

-- TELEPORTS TAB START
local TeleportsLeftGroup = Tabs.AutofarmTab:AddLeftGroupbox("Teleports")

local teleportanteiku = TeleportsLeftGroup:AddButton('Anteiku', function()
    tp(-1472.08423, 136.242142, -663.582458, -0.493596643, 7.29644389e-09, -0.869690955, -4.88007013e-09, 1, 1.11594014e-08, 0.869690955, 9.75239622e-09, -0.493596643)
end)

teleportanteiku:AddTooltip("Will teleport you to anteiku!")

local teleportrunningtracks = TeleportsLeftGroup:AddButton('Running Tracks', function()
    tp(-938.270569, 64.9999771, -1060.34302, 0.328780621, 3.21350435e-09, -0.944406331, 4.43182344e-08, 1, 1.88313862e-08, 0.944406331, -4.80458127e-08, 0.328780621)
end)

teleportrunningtracks:AddTooltip("Will teleport you to the running tracks!")

local arenateleport = TeleportsLeftGroup:AddButton('Arena Top', function()
    tp(-1698.20789, 449.751373, -1227.24634, -0.664579093, -7.25146236e-08, -0.747217953, -5.81386246e-08, 1, -4.53373907e-08, 0.747217953, 1.33119427e-08, -0.664579093)
end)

arenateleport:AddTooltip("Will teleport you on top of the arena!")

local radioteleport = TeleportsLeftGroup:AddButton('Radio Tower', function()
    tp(-941.407898, 817.999329, 266.546112, -0.52188611, -5.98270278e-09, -0.853015184, -9.15749876e-09, 1, -1.4109145e-09, 0.853015184, 7.07514891e-09, -0.52188611)
end)

radioteleport:AddTooltip("Will teleport you on the radio tower!")

local ccgteleport = TeleportsLeftGroup:AddButton('CCG Top', function()
    tp(-1396.38123, 1244.74756, 303.301483, 0.0277165025, -6.45417799e-08, 0.999615848, 6.13011811e-12, 1, 6.45664144e-08, -0.999615848, -1.78342741e-09, 0.0277165025)
end)

-- AUTOFARM TAB END


Library:Notify("Thank you for using our script!")

--Library:SetWatermarkVisibility(true)
--Library:SetWatermark(scriptversion)

Library.KeybindFrame.Visible = false;

Library:OnUnload(function()
    Library.Unloaded = true
end)

-- UI Settings

local WaterMaerkOptions = Tabs['UI Settings']:AddRightGroupbox('Settings')
WaterMaerkOptions:AddToggle('enablewatermark', {
    Text = 'Show watermark',
    Default = true, -- Default value (true / false)
    Tooltip = 'Will determine if it shows or not the watermark!', -- Information shown when you hover over the toggle
})
WaterMaerkOptions:AddToggle('showKeybindsTgl', {
    Text = 'Show Keybinds',
    Default = true
})
Toggles.showKeybindsTgl:OnChanged(function()
    Library.KeybindFrame.Visible = Toggles.showKeybindsTgl.Value
end)


Toggles.enablewatermark:OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.enablewatermark.Value)
    if Toggles.enablewatermark.Value == true then
        Library:Notify("Watermark has been enabled!")
    elseif Toggles.enablewatermark.Value == false then
        Library:Notify("Watermark has been disabled!")
    end
end)

local date_table = os.date("!*t")
local month = tostring(date_table.month)
local day = tostring(date_table.day)
local year = tostring(date_table.year)

local date = day.."/"..month.."/"..year

WaterMaerkOptions:AddToggle('showwatermarkdate', {
    Text = "Show Date in watermark",
    Default = true,
    Tooltip = "Will show you the current date in the script watermark!"
})

Toggles.showwatermarkdate:OnChanged(function()
    if Toggles.enablewatermark.Value == true and Toggles.showwatermarkdate.Value == true then
        Library:SetWatermark(scriptversion..' | '..'UID: '..uid..' | '..date)
    elseif Toggles.showwatermarkdate.Value == false then
        Library:SetWatermark(scriptversion..' | '..'UID: '..uid)
    end
end)

WaterMaerkOptions:AddButton('Unload', function() Library:Unload() end)
WaterMaerkOptions:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'K', NoUI = true, Text = 'Menu keybind' })




Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('RGK')
SaveManager:SetFolder('RGK/Ro-Ghoul')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
ThemeManager:ApplyToTab(Tabs['UI Settings'])

function RandomNumberRange(a)
	return math.random(-a * 100, a * 100) / 100
end

function RandomVectorRange(a, b, c)
	return Vector3.new(RandomNumberRange(a), RandomNumberRange(b), RandomNumberRange(c))
end

getgenv().DesyncTypes = {}
local LagTick = 0

game:GetService("RunService").Heartbeat:Connect(function()
    if Toggles.gmToggle.Value then
        pcall(function()
            getgenv().DesyncTypes[1] = LocalPlayer.Character.HumanoidRootPart.CFrame
            getgenv().DesyncTypes[2] = LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity
            local SpoofThis = LocalPlayer.Character.HumanoidRootPart.CFrame
            SpoofThis = SpoofThis * CFrame.new(Vector3.new(0, 0, 0))
            SpoofThis = SpoofThis * CFrame.Angles(math.rad(RandomNumberRange(180)), math.rad(RandomNumberRange(180)), math.rad(RandomNumberRange(180)))
            LocalPlayer.Character.HumanoidRootPart.CFrame = SpoofThis
            LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(1, 1, 1) * 16384
            game:GetService("RunService").RenderStepped:Wait()
            LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().DesyncTypes[1]
            LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = getgenv().DesyncTypes[2]
        end)
    end
end)

workspace.ChildAdded:Connect(function(kd)
    if table.find(playerstable, kd.Name) then
        if Toggles.chamsTgl.Value and kd.Name ~= LocalPlayer.Name and kd.Parent == workspace then
            local cham = Instance.new('Highlight', kd)
            cham.Name = 'chem'
            cham.Enabled = Toggles.chamsTgl.Value
            cham.OutlineColor = Options.Chams_Outline.Value
            cham.FillColor = Options.Chams_Fill.Value
        end
    end
end)

loadstring(game:HttpGet('https://raw.githubusercontent.com/xlISInner/hooks/main/Hooks/rghooks/hook.lua'))()
