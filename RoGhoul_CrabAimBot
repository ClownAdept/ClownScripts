------------{script}--------
--------{credit to 1_fo}----
----------{Made By ME}------
------{u shuld use WRD for this gui}----



local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local MAINlabel = Instance.new("TextLabel")
local aimbotWRDAPI = Instance.new("TextButton")
local aimbotanyAPI = Instance.new("TextButton")
local espanyAPI = Instance.new("TextButton")
local controlls = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 3
main.Position = UDim2.new(0.150851578, 0, 0.28323704, 0)
main.Size = UDim2.new(0, 240, 0, 247)
main.Active = true
main.Draggable = true

MAINlabel.Name = "MAIN label"
MAINlabel.Parent = main
MAINlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAINlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
MAINlabel.BorderSizePixel = 3
MAINlabel.Size = UDim2.new(0, 240, 0, 18)
MAINlabel.Font = Enum.Font.SourceSans
MAINlabel.Text = "peepRs aimbot gui"
MAINlabel.TextColor3 = Color3.fromRGB(0, 0, 0)
MAINlabel.TextScaled = true
MAINlabel.TextSize = 14.000
MAINlabel.TextWrapped = true

aimbotWRDAPI.Name = "keep sucking your god catsogze"
aimbotWRDAPI.Parent = main
aimbotWRDAPI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
aimbotWRDAPI.BorderColor3 = Color3.fromRGB(0, 0, 0)
aimbotWRDAPI.BorderSizePixel = 3
aimbotWRDAPI.Position = UDim2.new(0.0669399276, 0, 0.174089074, 0)
aimbotWRDAPI.Size = UDim2.new(0, 203, 0, 27)
aimbotWRDAPI.Font = Enum.Font.SourceSans
aimbotWRDAPI.Text = "keep sucking your god catsogze"
aimbotWRDAPI.TextColor3 = Color3.fromRGB(0, 0, 0)
aimbotWRDAPI.TextSize = 14.000
aimbotWRDAPI.TextWrapped = true
aimbotWRDAPI.MouseButton1Down:connect(function()
	local IgnorePlayersNamed = {NAME=true} -- Name = true or false
--[[
    [J] - To go down the list.
    [U] - To go up the list.
    [H] - To toggle that item in the list.
    [RMB] - To aim at your target using the current settings. (THIS UPDATES IN LIVE TIME SO YOU DON'T HAVE TO STOP AIMING FOR IT TO TAKE EFFECT)
--]]

	local services  = setmetatable({
		World   = game:GetService('Workspace');
		Players = game:GetService('Players');
		Input   = game:GetService('UserInputService');
		Run     = game:GetService('RunService');
		UI      = game:GetService('StarterGui');
	},{
		__index                 = function(tab,index)
			local serv
			local ran,err       = pcall(function() serv=game:service(index) end)
			if ran then
				tab[index]      = serv
				return serv
			end
		end
	})

	local cre = function(class,parent)
		local create = LoadLibrary('RbxUtility').Create
		return function(props)
			local inst = create(class)(props)
			inst.Parent = parent

			return inst
		end
	end

	local ResizeUI = function(ui,downscale,byclass)
		if not rawequal(ui['ClassName'],'ScrollingFrame') then print('This was mean\'t for scrolling frames.') return end

		local count = 0;   
		for __, asset in next, (ui:GetChildren()) do
			if rawequal(asset['ClassName'],byclass) then
				count = count + 1
			end
		end

		ui['CanvasSize'] = UDim2.new(ui.CanvasSize.X.Scale,ui.CanvasSize.X.Offset,ui.CanvasSize.Y.Scale,downscale*count)
	end

	local wfc, ffc, ffoc, cast, ray = services.World.WaitForChild, services.World.FindFirstChild, services.World.FindFirstChildOfClass, services.World.FindPartOnRayWithIgnoreList, Ray.new
	local wfcoc = function(p,class)
		local obj
		repeat services.Run.RenderStepped:wait()
			obj = p:FindFirstChildOfClass(class)
		until obj
		return obj
	end

	local Client = services.Players.LocalPlayer
	local ClientUI = wfc(Client,'PlayerGui')
	local ClientMouse = Client:GetMouse()
	local ClientModel = Client.Character or Client.CharacterAdded:wait()
	local ClientCamera = services.World.CurrentCamera
	local ClientHumanoid = wfcoc(ClientModel,'Humanoid')
	local ClientActiveUI;

	local status = {
		Enabled = false,
		TeamCheck = false,
		HeadsOnly = false,
		RayCheck = true,
		AutoAim = false,
	}

	local function toggle(button)
		local option, val = button['Text']:match('(.*):%s*(.*)')
		status[option] = not status[option]

		if status[option] then
			button.TextColor3 = Color3.fromRGB(0,255,0)
		else
			button.TextColor3 = Color3.fromRGB(255,0,0)
		end
		button.Text = option .. ': ' .. tostring(status[option])
	end

	local selection = {}
	local select_pos = 1
	local current_pos = 0
	local __ = function()
		if ffc(game.CoreGui, '___') then return end

		local GUI = cre('ScreenGui',game:GetService('CoreGui')){
			Name = '___';
		}

		local Frame = cre('ScrollingFrame',GUI){
			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			Name = 'Options',
			Position = UDim2.new(.8,0,.915,0),
			Size = UDim2.new(.2,0,0,30),
			ZIndex = 10,
			ClipsDescendants = true,
			CanvasSize = UDim2.new(0,0,0,0),
			ScrollBarThickness = 0,
			ScrollingEnabled = false,
		}

		local UILL = cre('UIListLayout',Frame){
			Name = 'LayoutHandler',
			FillDirection = 'Vertical',
			HorizontalAlignment = 'Center',
			SortOrder = 'LayoutOrder',
			VerticalAlignment = 'Top'
		}

		local Template = cre('TextButton',nil){
			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			Name = 'Template',
			Size = UDim2.new(.9,0,0,30),
			Font = 'SciFi',
			Text = '',
			TextColor3 = Color3.fromRGB(255,255,255),
			TextScaled = true,
			TextWrapped = true,
		}

		local TSC = cre('UISizeConstraint',Template){
			Name = 'TemplateSizeConstraint',       
			MaxSize = Vector2.new(math.huge,30),
		}

		Frame['ChildAdded']:connect(function()
			ResizeUI(Frame,30,'TextButton')
		end)

		local sel_pos = 0
		for option, val in next, status do
			local tp = Template:Clone()

			tp.Name = option
			tp.Text = option .. ': ' .. tostring(val)

			if status[option] then
				tp.TextColor3 = Color3.fromRGB(0,255,0)
			else
				tp.TextColor3 = Color3.fromRGB(255,0,0)
			end

			sel_pos = sel_pos + 1
			selection[sel_pos] = tp    
			tp.Parent = Frame
		end

		Frame.CanvasPosition = Vector2.new(0, current_pos)
		return Frame
	end

	Client['CharacterAdded']:connect(function(c)
		ClientModel = c
		ClientHumanoid = wfcoc(ClientModel,'Humanoid')
		ClientActiveUI.Parent.Parent = nil
		ClientActiveUI = coroutine.wrap(__)()
	end)
	ClientActiveUI = coroutine.wrap(__)()

	local right_down, keylogs, inputlogs = nil, {}, {}
	services.Input.InputBegan:connect(function(input, procc)
		keylogs[input.KeyCode],inputlogs[input.UserInputType] = true, true;

		if not ClientActiveUI then return end
		if keylogs[Enum.KeyCode.U] and current_pos >= 30 then
			select_pos = select_pos - 1
			current_pos = current_pos - 30
			ClientActiveUI.CanvasPosition = Vector2.new(0,current_pos)

		elseif keylogs[Enum.KeyCode.J] and current_pos < ClientActiveUI.CanvasSize.Y.Offset - 30 then
			select_pos = select_pos + 1    
			current_pos = current_pos + 30     
			ClientActiveUI.CanvasPosition = Vector2.new(0,current_pos)

		elseif keylogs[Enum.KeyCode.H] then
			if selection[select_pos] then
				toggle(selection[select_pos])
			end
		end
	end)
	services.Input.InputEnded:connect(function(input, procc)
		keylogs[input.KeyCode],inputlogs[input.UserInputType] = false, false;
	end)

	local function GetPlayerFromCharacter(mod)
		if not mod:IsA('Model') then return end

		for __, client in next, services.Players:GetPlayers() do
			if rawequal(string.lower(client['Name']):sub(1,#mod['Name']),mod['Name']:lower()) then
				return client, client['Name']
			end
		end    
		return nil, 'N/A'
	end

	local function Search()
		local t = {}   
		for __, child in next, services.World:GetChildren() do
			local UserFromCharacter = GetPlayerFromCharacter(child)
			if UserFromCharacter then
				if child:IsA('Model') and not rawequal(UserFromCharacter,Client) then
					local h = ffoc(child,'Humanoid')
					if h and h.Health > 0 then
						table.insert(t, {child,UserFromCharacter})
					end
				end
			end
		end
		return t
	end

	local function cast_ray(p0,p1,blacklist)
		local Part
		local __=0
		repeat
			__=__+1
			local cond=(p1-p0).magnitude < 999
			Part,p0=cast(workspace,ray(p0,cond and p1-p0 or (p1-p0).unit*999),blacklist)
			if Part then
				if Part.CanCollide==false or Part.Transparency==1 then
					blacklist[#blacklist+1]=Part
					Part=nil
				end
			elseif cond or __ > 15 then
				break
			end
		until Part
		return Part,p0
	end

	services.Run.RenderStepped:connect(function()
		local Storage = {}
		if status['Enabled'] and (inputlogs[Enum.UserInputType.MouseButton2] or status['AutoAim']) then
			Storage = Search()

			local dot, face = -1
			for __, info in next, (Storage) do
				local h = ffc(info[1],'Humanoid')
				local skip;

				if not inputlogs[Enum.UserInputType.MouseButton2] and not status['AutoAim'] then return end
				if not info[1] or not info[2] or IgnorePlayersNamed[info[2]['Name']] or ffoc(info[1],'ForceField') then skip = true end
				if not ffc(info[1],'HumanoidRootPart') then skip = true end

				if h and h['Health'] > 0 then
					if status['TeamCheck'] then
						if Client['TeamColor'] == info[2]['TeamColor'] then
							skip = true
						end
					end

					if not skip then
						local cc = ClientCamera.CFrame
						local pos = status['HeadsOnly'] and info[1]['HumanoidRootPart'].CFrame.p + Vector3.new(0,1.5,0) or info[1]['HumanoidRootPart'].Position
						local HitPart=cast_ray(cc.p,pos,{ClientCamera,ClientModel})

						if not (status['RayCheck'] and HitPart) or info[1]:IsAncestorOf(HitPart) then
							local m = (pos-cc.p).unit:Dot(cc.lookVector)
							if rawequal(m,m) and m > dot then
								dot, face= m, pos
							end
						end
					end
				end
			end
			if face then
				ClientCamera.CFrame = CFrame.new(ClientCamera.CFrame.p,face) * CFrame.new(0,0,0.5)
			end
		end
	end)
end)

aimbotanyAPI.Name = "aimbot any API"
aimbotanyAPI.Parent = main
aimbotanyAPI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
aimbotanyAPI.BorderColor3 = Color3.fromRGB(0, 0, 0)
aimbotanyAPI.BorderSizePixel = 3
aimbotanyAPI.Position = UDim2.new(0.0669399276, 0, 0.327935219, 0)
aimbotanyAPI.Size = UDim2.new(0, 203, 0, 27)
aimbotanyAPI.Font = Enum.Font.SourceSans
aimbotanyAPI.Text = "aimbot any API"
aimbotanyAPI.TextColor3 = Color3.fromRGB(0, 0, 0)
aimbotanyAPI.TextSize = 14.000
aimbotanyAPI.TextWrapped = true
aimbotanyAPI.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD Aimbot.txt"))()
end)

espanyAPI.Name = "catsogze is my god"
espanyAPI.Parent = main
espanyAPI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
espanyAPI.BorderColor3 = Color3.fromRGB(0, 0, 0)
espanyAPI.BorderSizePixel = 3
espanyAPI.Position = UDim2.new(0.0669399276, 0, 0.473684222, 0)
espanyAPI.Size = UDim2.new(0, 203, 0, 27)
espanyAPI.Font = Enum.Font.SourceSans
espanyAPI.Text = "catsogze is my god"
espanyAPI.TextColor3 = Color3.fromRGB(0, 0, 0)
espanyAPI.TextSize = 14.000
espanyAPI.TextWrapped = true
espanyAPI.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD ESP.txt"))()
end)

controlls.Name = "controlls"
controlls.Parent = main
controlls.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
controlls.BorderColor3 = Color3.fromRGB(0, 0, 0)
controlls.BorderSizePixel = 3
controlls.Position = UDim2.new(0.0669399276, 0, 0.64372468, 0)
controlls.Size = UDim2.new(0, 203, 0, 75)
controlls.Font = Enum.Font.SourceSans
controlls.Text = "aimbot WRD API controlls: h turn off and onn j down u up"
controlls.TextColor3 = Color3.fromRGB(0, 0, 0)
controlls.TextScaled = true
controlls.TextSize = 14.000
controlls.TextWrapped = true
controlls.TextXAlignment = Enum.TextXAlignment.Left
controlls.TextYAlignment = Enum.TextYAlignment.Top
