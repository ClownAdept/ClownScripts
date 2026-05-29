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

	local camera = workspace.CurrentCamera
	local defaultFOV = camera.FieldOfView

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

		if value then
			camera.FieldOfView = defaultFOV
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

				if gui and gui:FindFirstChild("UnitInventory") then
					gui.UnitInventory.Visible = false
				end

				local lighting = game:GetService("Lighting")

				for _, effect in ipairs(lighting:GetChildren()) do
					if effect:IsA("BlurEffect") then
						effect.Enabled = false
					end
				end

				camera.FieldOfView = defaultFOV
			end

			task.wait(0.1)

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

	-- BANNERS SECTION
	local BannerSection = Tabs.Main:AddSection("Banners")

	local summonAmount = 1
	local summonBanner = "MainUnitShop"
	local summonSellOptions = {
		Legendary = false,
		Common = false,
		Mythic = false,
		Epic = false,
		Rare = false
	}

	BannerSection:AddInput("SummonAmount", {
		Title = "Summon Amount",
		Default = "1",
		Placeholder = "Enter amount",
		Numeric = true,
		Finished = false,
		Callback = function(value)
			summonAmount = tonumber(value) or 1
		end
	})

	BannerSection:AddDropdown("BannerType", {
		Title = "Banner",
		Values = {"MainUnitShop", "AdvancedUnitShop"},
		Multi = false,
		Default = 1,
		Callback = function(value)
			summonBanner = value
		end
	})

	BannerSection:AddDropdown("AutoSell", {
		Title = "Auto Sell",
		Values = {"Legendary", "Common", "Mythic", "Epic", "Rare"},
		Multi = true,
		Default = {},
		Callback = function(value)
			summonSellOptions = {
				Legendary = value.Legendary or false,
				Common = value.Common or false,
				Mythic = value.Mythic or false,
				Epic = value.Epic or false,
				Rare = value.Rare or false
			}
		end
	})

	BannerSection:AddButton({
		Title = "Summon Selected",
		Callback = function()
			local args = {
				summonBanner,
				summonAmount,
				{
					Legendary = summonSellOptions.Legendary,
					Common = summonSellOptions.Common,
					Mythic = summonSellOptions.Mythic,
					Epic = summonSellOptions.Epic,
					Rare = summonSellOptions.Rare
				}
			}

			game:GetService("ReplicatedStorage"):WaitForChild("BuyUnit"):InvokeServer(unpack(args))
		end
	})
end

-- MERCHANT DATA FUNCTION
local function getMerchantWebhookData()
	local player = game:GetService("Players").LocalPlayer

	local merchantFrame = player.PlayerGui.Main.MerchantShop.MainFrame.CurrentOffers.ScrollingFrame
	local inventoryFrame = player.PlayerGui.Main.UnitInventory.MainFrame.InventoryFrame

	local itemFrames = {
		inventoryFrame.ItemsScrollingFrame,
		inventoryFrame.UnitScrollingFrame
	}

	local rewards = {}

	for i = 1, 5 do
		local offer = merchantFrame:FindFirstChild("Offer_" .. i)

		if offer then
			local icon = offer:FindFirstChild("UnitIcon")
			local amountLabel = offer:FindFirstChild("UnitAmount")

			if icon and amountLabel then
				local imageId = icon.Image
				local amount = amountLabel.Text

				local foundName = "Unknown Item"
				local totalOwned = "0"

				for _, folder in ipairs(itemFrames) do
					for _, item in ipairs(folder:GetChildren()) do
						if item:IsA("TextButton") then
							local unitIcon = item:FindFirstChild("UnitIcon")

							if unitIcon and unitIcon.Image == imageId then
								foundName = item.Name

								local totalLabel = item:FindFirstChild("UnitAmount")
								if totalLabel then
									totalOwned = totalLabel.Text
								end

								break
							end
						end
					end
				end

				table.insert(rewards,
					"+ " .. amount .. " " .. foundName .. " (total: " .. totalOwned .. ")"
				)
			end
		end
	end

	local timerText = player.PlayerGui.Main.MerchantShop.MainFrame.Timer.Text
	timerText = timerText:gsub("Resets in:%s*", "")

	local username = player.Name
	local displayname = player.DisplayName

	local description =
		"**Player Infos**\n" ..
		"User : " .. displayname .. " (@" .. username .. ")\n\n" ..
		"**Merchant Rewards**\n" ..
		table.concat(rewards, "\n") ..
		"\n\n**Merchant Reset in " .. timerText .. "**\n\n" ..
		"ClownHub - Time (" .. os.date("%H:%M:%S") .. ")"

	return description
end


-- WEBHOOK TAB
do
	_G.WebhookEnabled = false
	_G.DarkAuraWebhook = false
	_G.WebhookURL = ""

	local HttpService = game:GetService("HttpService")
	local Players = game:GetService("Players")

	local requestfunc = http_request or request or syn.request

	local function sendWebhook(title, description)
		if not _G.WebhookEnabled then return end
		if not _G.WebhookURL or _G.WebhookURL == "" then return end

		local data = {
			content = "",
			embeds = {{
				title = title,
				description = description,
				color = 65280
			}}
		}

		local encoded = HttpService:JSONEncode(data)

		pcall(function()
			requestfunc({
				Url = _G.WebhookURL,
				Method = "POST",
				Headers = {
					["Content-Type"] = "application/json"
				},
				Body = encoded
			})
		end)
	end

	-- INPUT
	Tabs.Webhook:AddInput("WebhookURL", {
		Title = "Webhook URL",
		Default = "",
		Placeholder = "Discord Webhook URL",
		Numeric = false,
		Finished = false,
		Callback = function(value)
			_G.WebhookURL = value
		end
	})

	local webhookToggle = Tabs.Webhook:AddToggle("WebhookEnabled", {
		Title = "Enable Webhooks",
		Default = false
	})

	webhookToggle:OnChanged(function(value)
		_G.WebhookEnabled = value
	end)

	local darkAuraToggle = Tabs.Webhook:AddToggle("DarkAuraWebhook", {
		Title = "Dark Aura",
		Default = false
	})

	darkAuraToggle:OnChanged(function(value)
		_G.DarkAuraWebhook = value
	end)

	local lastDarkAura = nil

	local function getDarkAuraAmount()
		local player = Players.LocalPlayer
		local pg = player:FindFirstChild("PlayerGui")
		if not pg then return nil end

		local ui = pg:FindFirstChild("OnScreen")
		if not ui then return nil end

		local sidebar = ui:FindFirstChild("Sidebar")
		if not sidebar then return nil end

		local frames = sidebar:FindFirstChild("CurrencyFrames")
		if not frames then return nil end

		local darkAura = frames:FindFirstChild("DarkAura")
		if not darkAura then return nil end

		return darkAura:FindFirstChild("Amount")
	end

	task.spawn(function()
		while true do
			task.wait(1)

			if Fluent and Fluent.Unloaded then break end
			if not _G.WebhookEnabled or not _G.DarkAuraWebhook then continue end

			local amountLabel = getDarkAuraAmount()
			if not amountLabel then continue end

			local text = tostring(amountLabel.Text or "")
			local cleaned = string.gsub(text, "%D", "")
			local currentAmount = tonumber(cleaned) or 0

			if lastDarkAura == nil then
				lastDarkAura = currentAmount

				sendWebhook(
					"🖤 Dark Aura Tracker Started",
					"Current Total: " .. currentAmount
				)

				continue
			end

			if currentAmount ~= lastDarkAura then
				local gained = currentAmount - lastDarkAura

				if gained > 0 then
					sendWebhook(
						"🖤 Dark Aura Gained",
						"Amount Gained: " .. gained ..
						"\nCurrent Total: " .. currentAmount
					)
				end

				lastDarkAura = currentAmount
			end
		end
	end)

	Tabs.Webhook:AddButton({
		Title = "Test Webhook",
		Callback = function()
			sendWebhook(
				"Webhook Connected",
				"Idle Defense webhook successfully connected."
			)
		end
	})
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
