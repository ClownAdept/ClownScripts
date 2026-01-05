-- 📢 Notification function
local function notification()
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Clown's EasyExec",
        Text = "Loaded: CandyFarm & Anti-AFK",
        Icon = "rbxassetid://9137879702",
        Duration = 10
    })
end



-- 🛡 Anti-AFK function
local function runAntiAFK()
    _G.antiafk = true 
    while _G.antiafk do
        wait(1)
        local success, getconnections = pcall(function()
            return getconnections or get_signal_cons
        end)

        if success and getconnections then
            for _, conn in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
                if conn.Disable then
                    conn:Disable()
                elseif conn.Disconnect then
                    conn:Disconnect()
                end
            end
        else
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:Connect(function()
                vu:CaptureController()
                vu:ClickButton2(Vector2.new())
            end)
        end
    end
end



-- 🎯 Candy TP
local function runCandyTP()
    while task.wait(0.2) do
        for _, v in pairs(workspace:GetChildren()) do
            -- Check if this is your Candy/Gift model
            if v.Name == "Candy" or v.Name == "Gift" then
                -- Find the hitbox inside it
                local hitbox = v:FindFirstChild("Hitbox") -- replace "Hitbox" with the actual part name
                if hitbox then
                    game.Players.LocalPlayer.Character:PivotTo(hitbox.CFrame)
                else
                    -- fallback: teleport to the model pivot
                    game.Players.LocalPlayer.Character:PivotTo(v:GetPivot())
                end
            end
        end
    end
end



-- 🎯 Difficulty select
local function runDifficultySelect()
    _G.diffselect = true 
    while _G.diffselect do
        local args = {
            "Pick",
            "Extreme"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GameModes"):WaitForChild("XMasDifficulties"):FireServer(unpack(args))
        wait(0.2)
    end
end




-- 🎯 AutoSkip
local function runAutoSkip()
    _G.autoskip = true 
    while _G.autoskip do
        local args = {
	        "Vote"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Upboard"):FireServer(unpack(args))
        wait(0.2)
    end
end



-- 🎯 gamespeed
local function rungamespeed()
    wait(10)
    local args = {
	"ChangeGameSpeed",
	3
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Upboard"):FireServer(unpack(args))
end



-- 🚀 Start both functions in parallel using coroutine.wrap
coroutine.wrap(runAntiAFK)()
coroutine.wrap(runCandyTP)()
coroutine.wrap(runDifficultySelect)()
coroutine.wrap(runAutoSkip)()
coroutine.wrap(rungamespeed)()
coroutine.wrap(notification)()
