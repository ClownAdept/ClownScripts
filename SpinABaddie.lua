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
            local current = main.Dice.title.Text
            if current ~= "" then
                owned[current] = true
            end
            local bestOwnedDice = "Basic Dice"
            for _, diceData in ipairs(priorityList) do
                if owned[diceData.Name] then
                    bestOwnedDice = diceData.Name
                    break
                end
            end
            if SpinMode == 1 then
                if eventActive then
                    updateDice:FireServer(bestOwnedDice)
                else
                    updateDice:FireServer("Basic Dice")
                end
            elseif SpinMode == 2 then
                updateDice:FireServer(bestOwnedDice)
            elseif SpinMode == 3 then
                updateDice:FireServer("Basic Dice")
            end
            pcall(function()
                main.Dice.RollState:InvokeServer()
            end)
            task.wait(0.1)
        end
    end)()
end



local SpinMode
local SpinMode = 1
local function setupSpinToggle()
    local UIS = game:GetService("UserInputService")
    local StarterGui = game:GetService("StarterGui")
    local modes = {"EVENT ONLY", "BEST", "NONE"}
    UIS.InputBegan:Connect(function(input, processed)
        if processed then return end
        if input.KeyCode == Enum.KeyCode.K then
            SpinMode += 1
            if SpinMode > #modes then
                SpinMode = 1
            end
            StarterGui:SetCore("SendNotification", {
                Title = "Spin Mode",
                Text = modes[SpinMode],
                Icon = "rbxassetid://9137879702",
                Duration = 3
            })
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





coroutine.wrap(notification)()
coroutine.wrap(runNoNoti)()
coroutine.wrap(runWheelSpin)()
coroutine.wrap(runEventRoll)()
coroutine.wrap(setupSpinToggle)()
coroutine.wrap(autobuydice)()
coroutine.wrap(autobuypotions)()
coroutine.wrap(autoClaimQuests)()
