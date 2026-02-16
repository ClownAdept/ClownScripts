local function notification()
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Clown's EasyExec",
        Text = "Loaded: Retro is a stinky jew",
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
            if eventActive then
                for _, diceData in ipairs(priorityList) do
                    if owned[diceData.Name] then
                        updateDice:FireServer(diceData.Name)
                        break
                    end
                end
            else
                updateDice:FireServer("Basic Dice")
            end
            pcall(function()
                main.Dice.RollState:InvokeServer()
            end)
            task.wait(0.1)
        end
    end)()
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







coroutine.wrap(notification)()
coroutine.wrap(runNoNoti)()
coroutine.wrap(runWheelSpin)()
coroutine.wrap(runEventRoll)()
coroutine.wrap(autobuydice)()
coroutine.wrap(autobuypotions)()
