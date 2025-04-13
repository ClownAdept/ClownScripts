local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🤡💀   Clown's Arcane Lineage", "Ocean")

-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewToggle("Auto Dodge", "", function(state)
    if state then
        _G.autododge = true
        while _G.autododge == true do
            local args = {
                [1] = {
                    [1] = true,
                    [2] = true
                },
                [2] = "DodgeMinigame"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Information"):WaitForChild("RemoteFunction"):FireServer(unpack(args))
            wait(.1)
        end
    else
        _G.autododge = false
    end
end)

MainSection:NewToggle("Auto Block", "", function(state)
    if state then
        _G.autoblock = true
        while _G.autoblock == true do
            local args = {
                [1] = {
                    [1] = true,
                    [2] = false
                },
                [2] = "DodgeMinigame"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Information"):WaitForChild("RemoteFunction"):FireServer(unpack(args))
            wait(.1)
        end
    else
        _G.autoblock = false
    end
end)

local weapontypes = {"Dagger", "Magic", "Fist", "Spear", "Sword"}

MainSection:NewDropdown("Select Weapon Type", "QTE Type", weapontypes, function(currentOption)
    _G.qtetype = currentOption
end)

MainSection:NewToggle("Auto QTE", "", function(state)
    if state then
        _G.autoqte = true
        while _G.autoqte == true do
            local args = {
                [1] = true,
                [2] = _G.qtetype .. "QTE"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Information"):WaitForChild("RemoteFunction"):FireServer(unpack(args))

            local player = game.Players.LocalPlayer
            local qtePath = player:WaitForChild("PlayerGui"):WaitForChild("Combat"):FindFirstChild(_G.qtetype .. "QTE")
            if qtePath then
                qtePath.Visible = false
                for _, child in ipairs(qtePath:GetDescendants()) do
                    if child:IsA("GuiObject") then
                        child.Visible = false
                    end
                end
            end
            wait(.1)
        end
    else
        _G.autoqte = false
    end
end)

local PlayerMovement = Main:NewSection("Player Movement")

PlayerMovement:NewToggle("Unlimited Jumps", "It litterally does what the name says...", function(state)
    if state then
        _G.InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if _G.InfiniteJumpEnabled == true then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
    else
        _G.InfiniteJumpEnabled = false
    end
end)
-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
-- Autofarm
local Autofarm = Window:NewTab("Auto Farms")
local AutofarmSection = Autofarm:NewSection("Auto Farm")
local attackOptions = {}

local function populateAttackOptions()
    local player = game.Players.LocalPlayer
    local scrollingFrame = player:WaitForChild("PlayerGui"):WaitForChild("Combat"):WaitForChild("ActionBG"):WaitForChild("AttacksPage"):WaitForChild("Attack"):WaitForChild("ScrollingFrame")
    table.clear(attackOptions)
    if scrollingFrame then
        for _, child in ipairs(scrollingFrame:GetChildren()) do
            if child:IsA("TextButton") then
                table.insert(attackOptions, child.Name)
            end
        end
    else
        warn("ScrollingFrame not found!")
    end
end

local attack1Dropdown = AutofarmSection:NewDropdown("Attack 1", "Select your first attack", attackOptions, function(currentOption)
    _G.attack1 = currentOption
end)

local attack2Options = {"Meditate", "Guard"}
local attack2Dropdown = AutofarmSection:NewDropdown("Attack 2", "Select your second attack", attack2Options, function(currentOption)
    _G.attack2 = currentOption
end)


local function refreshAttackDropdowns()
    populateAttackOptions()
    attack1Dropdown:Refresh(attackOptions)
end

local function monitorScrollingFrame()
    local player = game.Players.LocalPlayer
    local scrollingFrame = player:WaitForChild("PlayerGui"):WaitForChild("Combat"):WaitForChild("ActionBG"):WaitForChild("AttacksPage"):WaitForChild("Attack"):WaitForChild("ScrollingFrame")

    if scrollingFrame then
        scrollingFrame.ChildAdded:Connect(function()
            refreshAttackDropdowns()
        end)

        scrollingFrame.ChildRemoved:Connect(function()
            refreshAttackDropdowns()
        end)
    end
end


refreshAttackDropdowns()
monitorScrollingFrame()

local function getPlayerBattle()
    local player = game.Players.LocalPlayer
    local fightsFolder = game:GetService("ReplicatedStorage"):WaitForChild("Fights")
    for _, battle in ipairs(fightsFolder:GetChildren()) do
        local team1 = battle:FindFirstChild("Team1")
        if team1 then
            for _, member in ipairs(team1:GetChildren()) do
                if member.Name == player.Name then
                    return battle
                end
            end
        end
    end
    return nil
end

local priorityList = {
    "Grass Spirit", "Zombie Mushroom", "Slime", "Thief", "Goblin", "Star Slime",
    "Sand Elemental", "Desert Bandit", "Stray Sandstorm", "Sand Golem", "Night Raider",
    "Magma Golem", "Lava Crab", "Fog Spirit", "Venom Shroom", "Cursed Corpse", "Cess Horror",
    "Sentient Darkness", "Fog", "Shadeblade", "Sheea Elementalist", "Sheea Paladin",
    "Sheea Saint", "Frosted Slime", "Joyous Spirit", "King Slime", "Yar'thul, the Blazing Dragon",
    "Thorian, the Rotten", "Metrom's Vessel", "Seraphon", "Arkhaia"
}

local function findTarget()
    local battle = getPlayerBattle()
    if not battle then
        return nil
    end
    local opposingTeam = battle:FindFirstChild("Team2")
    if not opposingTeam then
        return nil
    end
    for _, name in ipairs(priorityList) do
        local target = opposingTeam:FindFirstChild(name)
        if target then
            return target.Name
        end
    end
    return nil
end

AutofarmSection:NewToggle("Auto Attack", "Uses attack 1 & 2 from above", function(state)
    _G.autoattack = state
    if _G.autoattack then
        while _G.autoattack == true do
            local battle = getPlayerBattle()
            if not battle then
                wait(1)
                continue
            end
            local currentTurn = battle:FindFirstChild("CurrentTurn")
            local player = game.Players.LocalPlayer
            if currentTurn and tostring(currentTurn.Value):match("^%s*(.-)%s*$") == tostring(player.Name):match("^%s*(.-)%s*$") then
                wait(1)
                local targetName = findTarget()
                if not targetName then
                    wait(1)
                    continue
                end

                -- First attack
                local attack1Success = false
                if _G.attack1 and _G.attack1 ~= "" then
                    local args = {
                        [1] = "Attack",
                        [2] = _G.attack1,
                        [3] = {
                            ["Attacking"] = workspace:WaitForChild("Living"):WaitForChild(targetName)
                        }
                    }
                    local success, err = pcall(function()
                        game:GetService("ReplicatedStorage"):WaitForChild("PlayerTurnInput"):InvokeServer(unpack(args))
                    end)
                    if success then
                        attack1Success = true
                        wait(0.5) -- Small delay between attacks
                    end
                end

                -- Second attack
                if attack1Success and _G.attack2 and _G.attack2 ~= "" then
                    local args = {
                        [1] = _G.attack2,
                        [2] = false
                    }
                    pcall(function()
                        game:GetService("ReplicatedStorage"):WaitForChild("PlayerTurnInput"):InvokeServer(unpack(args))
                    end)
                end
            end
            wait(.1)
        end
    else
        _G.autoattack = false
    end
end)

-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
-- Settings
local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Settings")

SettingsSection:NewKeybind("Hide GUI", "KeybindInfo", Enum.KeyCode.K, function()
    Library:ToggleUI()
end)

SettingsSection:NewButton("Rejoin", "Teleports you to the location you choose", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
end)

SettingsSection:NewButton("Server hop", "Teleports you to the location you choose", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)

