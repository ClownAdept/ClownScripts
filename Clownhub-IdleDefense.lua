local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "⚔️ Idle Defense Hub " .. Fluent.Version,
    SubTitle = "by Clown",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Webhook = Window:AddTab({ Title = "Webhook", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- MAIN TAB
do
-- MAIN TAB
do
    -- Auto AFK Toggle
    local antiAfkToggle = Tabs.Main:AddToggle("AntiAFK", {
        Title = "Anti AFK",
        Default = false
    })

    antiAfkToggle:OnChanged(function(value)
        _G.antiafk = value

        if value then
            task.spawn(function()
                while _G.antiafk do
                    task.wait(1)

                    local success, getconnectionsfunc = pcall(function()
                        return getconnections or get_signal_cons
                    end)

                    if success and getconnectionsfunc then
                        for _, conn in pairs(getconnectionsfunc(game:GetService("Players").LocalPlayer.Idled)) do
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
            end)
        end
    end)

	-- Auto Merchant Toggle
	local merchantToggle = Tabs.Main:AddToggle("AutoMerchant", {
		Title = "Auto Merchant",
		Default = false
	})

	merchantToggle:OnChanged(function(value)
		_G.AutoMerchant = value
	end)

	local blacklistedImages = {
		["rbxassetid://136259324663314"] = true,
		["rbxassetid://108036697189924"] = true,
		["rbxassetid://98041689648216"] = true
	}

	task.spawn(function()
		while true do
			if _G.AutoMerchant then
				local player = game:GetService("Players").LocalPlayer

				pcall(function()
					fireproximityprompt(workspace.Map.Scripted.MerchantPrompt.ProximityPrompt)
				end)

				task.wait(0.5)

				local offersFolder = player.PlayerGui.Main.MerchantShop.MainFrame.CurrentOffers.ScrollingFrame

				for i = 1, 5 do
					local offer = offersFolder:FindFirstChild("Offer_" .. i)

					if offer then
						local icon = offer:FindFirstChild("UnitIcon")

						if icon and icon:IsA("ImageLabel") then
							local image = icon.Image

							if not blacklistedImages[image] then
								pcall(function()
									game:GetService("ReplicatedStorage"):WaitForChild("BuyMerchantItem"):InvokeServer(i)
								end)
							end
						end
					end
				end
			end

			task.wait(0.5)

			if Fluent.Unloaded then
				break
			end
		end
	end)

		-- Hide Merchant Toggle
	local hideMerchantToggle = Tabs.Main:AddToggle("HideMerchant", {
		Title = "Hide Merchant",
		Default = false
	})

	hideMerchantToggle:OnChanged(function(value)
		_G.HideMerchant = value

		local player = game:GetService("Players").LocalPlayer
		local gui = player.PlayerGui:FindFirstChild("Main")

		if gui and gui:FindFirstChild("MerchantShop") then
			gui.MerchantShop.Visible = not value
		end

		local lighting = game:GetService("Lighting")

		for _, effect in ipairs(lighting:GetChildren()) do
			if effect:IsA("BlurEffect") then
				effect.Enabled = not value
			end
		end
	end)

	task.spawn(function()
		while true do
			if _G.HideMerchant then
				local player = game:GetService("Players").LocalPlayer
				local gui = player.PlayerGui:FindFirstChild("Main")

				if gui and gui:FindFirstChild("MerchantShop") then
					gui.MerchantShop.Visible = false
				end

				local lighting = game:GetService("Lighting")

				for _, effect in ipairs(lighting:GetChildren()) do
					if effect:IsA("BlurEffect") then
						effect.Enabled = false
					end
				end
			end

			task.wait(0.2)

			if Fluent.Unloaded then
				break
			end
		end
	end)

	-- Auto Claim Daily Reward Toggle
	local dailyRewardToggle = Tabs.Main:AddToggle("AutoClaimDailyReward", {
		Title = "Auto Claim Daily Reward",
		Default = false
	})

	dailyRewardToggle:OnChanged(function(value)
		_G.AutoClaimDailyReward = value
	end)

	task.spawn(function()
		while true do
			if _G.AutoClaimDailyReward then
				pcall(function()
					game:GetService("ReplicatedStorage"):WaitForChild("ClaimDailyReward"):FireServer()
				end)
			end

			task.wait(5)

			if Fluent.Unloaded then
				break
			end
		end
	end)
end
end

-- WEBHOOK TAB
do

end

-- SETTINGS TAB
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
