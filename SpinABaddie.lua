local function notification()
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Clown's EasyExec",
        Text = "Loaded: AutoBuy, AutoSpin(K toggle)",
        Icon = "rbxassetid://9137879702",
        Duration = 10
    })
end



local function runNoNoti()
    wait(1)
    local player = game:GetService("Players").LocalPlayer
    local gui = player:WaitForChild("PlayerGui")
    local botNot = gui:WaitForChild("bot_not")
    local frame = botNot:WaitForChild("Frame")
    frame.Visible = false
end



local function runWheelSpin()
    _G.WheelSpin = true
    while _G.WheelSpin do
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("spinrequest"):InvokeServer()
        wait(0.1)
    end
end



local function runEventRoll()
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
    _G.eventRoll = true
    coroutine.wrap(function()
        while _G.eventRoll do
            local main = player.PlayerGui.Main
            local weather = main.WeatherContainer.Frame
            local diceContainer = main.Dice.Container
            local rawTitle = weather.Title.Text or ""
            local timerText = weather.Timer.Text or ""
            local eventName = rawTitle:gsub("<[^>]+>", "")
            local eventActive = acceptableEvents[eventName] and timerText ~= "0:00"
            local priorityList = buildDicePriority()
            local owned = {}
            for _, d in ipairs(diceContainer:GetChildren()) do
                owned[d.Name] = true
            end
            local chosenDice = "Basic Dice"
            if _G.SpinMode == "NONE" then
                chosenDice = "Basic Dice"
            elseif _G.SpinMode == "BEST" then
                for _, diceData in ipairs(priorityList) do
                    if owned[diceData.Name] then
                        chosenDice = diceData.Name
                        break
                    end
                end
            elseif _G.SpinMode == "EVENT" then
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
            updateDice:FireServer(chosenDice)
            pcall(function()
                main.Dice.RollState:InvokeServer()
            end)
            task.wait(0.1)
        end
    end)()
end




local SpinMode = 1
local function setupSpinToggle()
    local UIS = game:GetService("UserInputService")
    _G.SpinMode = "NONE"
    local function notify(mode)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Spin Mode",
            Text = "Spin mode: " .. mode,
            Duration = 3
        })
    end
    UIS.InputBegan:Connect(function(input, processed)
        if processed then return end
        if input.KeyCode == Enum.KeyCode.K then
            if _G.SpinMode == "EVENT" then
                _G.SpinMode = "BEST"
            elseif _G.SpinMode == "BEST" then
                _G.SpinMode = "NONE"
            else
                _G.SpinMode = "EVENT"
            end
            notify(_G.SpinMode)
        end
    end)
end



local function runPotionManager()
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
    local function getOwnedPotions()
        local owned = {}
        local main = player.PlayerGui.Main
        local inventoryList = main.Backpack.Inventory.list
        local hotbar = main.Backpack.Hotbar
        local function scan(container, keyName)
            for _, child in ipairs(container:GetChildren()) do
                local label = child:FindFirstChild(keyName)
                if label and label:IsA("TextLabel") then
                    local name = cleanItemName(label.Text or "")
                    owned[name] = true
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
    local function equipAndUse(potionName)
        equipEvent:InvokeServer(potionName, true)
        task.wait(0.25)
        local character = player.Character or player.CharacterAdded:Wait()
        local tool = character:FindFirstChildOfClass("Tool")
        if tool then
            tool:Activate()
        end
        task.wait(0.4)
        equipEvent:InvokeServer(potionName, false)
    end
    _G.PotionMode = "NONE"
    coroutine.wrap(function()
        while true do
            local owned = getOwnedPotions()
            if _G.PotionMode == "NONE" then
            elseif _G.PotionMode == "CONSTANT" then
                for _, potionName in ipairs(targetPotions) do
                    if owned[potionName] and not isPotionActive(potionName) then
                        equipAndUse(potionName)
                        task.wait(0.5)
                    end
                end
            elseif _G.PotionMode == "ALWAYS" then
                for _, potionName in ipairs(targetPotions) do
                    if owned[potionName] then
                        equipAndUse(potionName)
                    end
                end
            end
            task.wait(1)
        end
    end)()
end



local function setupPotionToggle()
    local UIS = game:GetService("UserInputService")
    _G.PotionMode = "NONE"
    local function notify(mode)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Potion Mode",
            Text = "Potion mode: " .. mode,
            Duration = 3
        })
    end
    UIS.InputBegan:Connect(function(input, processed)
        if processed then return end
        if input.KeyCode == Enum.KeyCode.L then
            if _G.PotionMode == "ALWAYS" then
                _G.PotionMode = "NONE"
            elseif _G.PotionMode == "NONE" then
                _G.PotionMode = "CONSTANT"
            else
                _G.PotionMode = "ALWAYS"
            end
            notify(_G.PotionMode)
        end
    end)
end



local function autobuydice()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local player = Players.LocalPlayer
    local scrollingFrame = player.PlayerGui:WaitForChild("Main")
        :WaitForChild("Restock")
        :WaitForChild("ScrollingFrame")
    local buyEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("buy")
    local function getStock(text)
        local number = string.gsub(text, "[^%d]", "")
        return tonumber(number) or 0
    end
    while true do
        for _, dice in ipairs(scrollingFrame:GetChildren()) do
            if dice:IsA("GuiObject") and dice:FindFirstChild("stock") then
                local stockLabel = dice.stock
                if stockLabel:IsA("TextLabel") then
                    local stockAmount = getStock(stockLabel.Text)
                    if stockAmount > 0 then
                        buyEvent:InvokeServer(dice.Name, stockAmount, "dice")
                        task.wait(0.2)
                    end
                end
            end
        end
        task.wait(2)
    end
end



local function autobuypotions()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local player = Players.LocalPlayer
    local scrollingFrame = player.PlayerGui:WaitForChild("Main")
        :WaitForChild("Potions")
        :WaitForChild("ScrollingFrame")
    local buyEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("buy")
    local function getStock(text)
        local number = string.gsub(text, "[^%d]", "")
        return tonumber(number) or 0
    end
    while true do
        for _, potion in ipairs(scrollingFrame:GetChildren()) do
            if potion:IsA("GuiObject") and potion:FindFirstChild("stock") then 
                local stockLabel = potion.stock
                if stockLabel:IsA("TextLabel") then
                    local stockAmount = getStock(stockLabel.Text)
                    if stockAmount > 0 then
                        buyEvent:InvokeServer(potion.Name, stockAmount, "potion")
                        task.wait(0.2)
                    end
                end
            end
        end
        task.wait(2)
    end
end



local function autoClaimQuests()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local player = Players.LocalPlayer
    local questRemote = ReplicatedStorage:WaitForChild("Events"):WaitForChild("QuestRemote")
    local questFrame = player.PlayerGui.Main.Quests.ScrollingFrame
    local function parseProgress(text)
        local current, total = string.match(text, "(%d+)%s*/%s*(%d+)")
        return tonumber(current), tonumber(total)
    end
    while true do
        for _, quest in ipairs(questFrame:GetChildren()) do
            if quest:IsA("GuiObject") and quest.Name:match("^Quest_%d+$") then
                local countLabel = quest:FindFirstChild("Count")
                if countLabel and countLabel:IsA("TextLabel") then
                    local current, total = parseProgress(countLabel.Text)
                    if current and total and current == total then
                        local questNumber = tonumber(quest.Name:match("%d+"))
                        if questNumber then
                            questRemote:InvokeServer("ClaimReward", questNumber)
                            task.wait(0.2)
                        end
                    end
                end
            end
        end
        task.wait(2)
    end
end



local function runEquipBest()
    _G.Equipbest = true
    while _G.Equipbest do
        wait(300)
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlaceBestBaddies"):InvokeServer()
    end
end



local function runMerchantTempAuto()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local player = Players.LocalPlayer
    local merchantBuy = ReplicatedStorage:WaitForChild("Events"):WaitForChild("MerchantBuy")
    _G.merchantAuto = true
    coroutine.wrap(function()
        while _G.merchantAuto do
            local outer = workspace:FindFirstChild("Nullity")
            local merchant = outer and outer:FindFirstChild("Nullity")
            local hrp = merchant and merchant:FindFirstChild("HumanoidRootPart")
            local prompt = hrp and hrp:FindFirstChildOfClass("ProximityPrompt")
            if prompt then
                pcall(function()
                    fireproximityprompt(prompt)
                end)
            end
            task.wait(5)
        end
    end)()
    coroutine.wrap(function()
        while _G.merchantAuto do
            local shop = player.PlayerGui:FindFirstChild("Main")
                and player.PlayerGui.Main:FindFirstChild("MerchantShop")
            local offers = shop and shop:FindFirstChild("ScrollingFrame")
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
                                for _ = 1, stock do
                                    pcall(function()
                                        merchantBuy:InvokeServer(i)
                                    end)
                                    task.wait(0.12)
                                end
                            end
                        end
                    end
                end
            end
            task.wait(0.6)
        end
    end)()
end



wait(15)
coroutine.wrap(runEquipBest)()
coroutine.wrap(notification)()
coroutine.wrap(runNoNoti)()
coroutine.wrap(runWheelSpin)()
coroutine.wrap(runEventRoll)()
coroutine.wrap(setupSpinToggle)()
coroutine.wrap(runPotionManager)()
coroutine.wrap(setupPotionToggle)()
coroutine.wrap(autobuydice)()
coroutine.wrap(autobuypotions)()
coroutine.wrap(autoClaimQuests)()
coroutine.wrap(runMerchantTempAuto)()
