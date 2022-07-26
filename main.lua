--[[
Name: apoc2_esp.lua
Desc: Apocalypse Rising 2 ESP

Author: thee.
Date: 7/25/2022
--]]

-- Services:
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local localPlayer = game.Players.LocalPlayer

-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
--local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Top = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Toggle = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local Exit = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local UICornerOverlayE = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Settings = Instance.new("Frame")
local Greetings = Instance.new("Frame")
local Welcome = Instance.new("TextLabel")
local Username = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local Buttons = Instance.new("Frame")
local ESP = Instance.new("Frame")
local Media = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Icon = Instance.new("ImageLabel")
local UIListLayout = Instance.new("UIListLayout")
local Button = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local ESPFrame = Instance.new("Frame")
local ToggleESP = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UICorner_6 = Instance.new("UICorner")
local ESPSettings = Instance.new("Frame")
local SquadOnly = Instance.new("Frame")
local Checkbox = Instance.new("ImageButton")
local UIListLayout_2 = Instance.new("UIListLayout")
local Label_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Frame.Position = UDim2.new(0.39940387, 0, 0.199312732, 0)
Frame.Size = UDim2.new(0, 268, 0, 349)
Frame.ZIndex = 2

--UIAspectRatioConstraint.Parent = Frame
--UIAspectRatioConstraint.AspectRatio = 0.768
--UIAspectRatioConstraint.AspectType = Enum.AspectType.FitWithinMaxSize
--UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Width

Top.Name = "Top"
Top.Parent = Frame
Top.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(1, 0, 0, 30)
Top.ZIndex = 2

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Top

Toggle.Name = "Toggle"
Toggle.Parent = Top
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0, 5, 0, 5)
Toggle.Size = UDim2.new(0, 20, 0, 20)
Toggle.SizeConstraint = Enum.SizeConstraint.RelativeYY
Toggle.ZIndex = 2
Toggle.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = Toggle

Exit.Name = "Exit"
Exit.Parent = Toggle
Exit.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
Exit.BackgroundTransparency = 1.000
Exit.Size = UDim2.new(1, 0, 1, 0)
Exit.Image = "http://www.roblox.com/asset/?id=6031094678"
Exit.ImageTransparency = 1.000
Exit.ScaleType = Enum.ScaleType.Fit

UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = Exit

UICornerOverlayE.Name = "UICornerOverlayE"
UICornerOverlayE.Parent = Top
UICornerOverlayE.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
UICornerOverlayE.BorderSizePixel = 0
UICornerOverlayE.Position = UDim2.new(0, 0, 0.5, 0)
UICornerOverlayE.Size = UDim2.new(1, 0, 0.5, 0)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.GothamBlack
Title.Text = "Apocalypse Rising 2 Utilities"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000

Settings.Name = "Settings"
Settings.Parent = Top
Settings.AnchorPoint = Vector2.new(0, 1)
Settings.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Settings.BackgroundTransparency = 1.000
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0, 0, 1, 0)
Settings.Size = UDim2.new(1, 0, 1, -30)

Greetings.Name = "Greetings"
Greetings.Parent = Settings
Greetings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Greetings.BackgroundTransparency = 1.000
Greetings.Size = UDim2.new(0.5, 0, 0.100000001, 0)

Welcome.Name = "Welcome"
Welcome.Parent = Greetings
Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Welcome.BackgroundTransparency = 1.000
Welcome.Size = UDim2.new(1, 0, 0.5, 0)
Welcome.Font = Enum.Font.GothamBold
Welcome.Text = "Welcome back,"
Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
Welcome.TextScaled = true
Welcome.TextSize = 14.000
Welcome.TextTransparency = 1.000
Welcome.TextWrapped = true
Welcome.TextXAlignment = Enum.TextXAlignment.Left

Username.Name = "Username"
Username.Parent = Greetings
Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Username.BackgroundTransparency = 1.000
Username.Position = UDim2.new(0, 0, 0.5, 0)
Username.Size = UDim2.new(1, 0, 0.5, 0)
Username.Font = Enum.Font.Gotham
Username.Text = "OnlyTwentyCharacters"
Username.TextColor3 = Color3.fromRGB(255, 255, 255)
Username.TextScaled = true
Username.TextSize = 14.000
Username.TextTransparency = 1.000
Username.TextWrapped = true
Username.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = Settings
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 5)

Buttons.Name = "Buttons"
Buttons.Parent = Settings
Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Buttons.BackgroundTransparency = 1.000
Buttons.ClipsDescendants = true
Buttons.Position = UDim2.new(0, 0, 0.100000001, 0)
Buttons.Size = UDim2.new(1, 0, 0.899999976, 0)

ESP.Name = "ESP"
ESP.Parent = Buttons
ESP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESP.BackgroundTransparency = 1.000
ESP.Position = UDim2.new(-1, 0, 0, 0)
ESP.Size = UDim2.new(1, 0, 0.100000001, 0)

Media.Name = "Media"
Media.Parent = ESP
Media.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Media.BackgroundTransparency = 1.000
Media.Size = UDim2.new(1, 0, 1, 0)

Label.Name = "Label"
Label.Parent = Media
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.LayoutOrder = 1
Label.Size = UDim2.new(0.899999976, 0, 1, 0)
Label.Font = Enum.Font.GothamMedium
Label.Text = "ESP"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextSize = 14.000
Label.TextWrapped = true
Label.TextXAlignment = Enum.TextXAlignment.Left

Icon.Name = "Icon"
Icon.Parent = Media
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.Size = UDim2.new(1, 0, 1, 0)
Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
Icon.Image = "http://www.roblox.com/asset/?id=6034684937"

UIListLayout.Parent = Media
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

Button.Name = "Button"
Button.Parent = ESP
Button.Active = false
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Selectable = false
Button.Size = UDim2.new(1, 0, 1, 0)
Button.Font = Enum.Font.GothamMedium
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 14.000
Button.TextWrapped = true
Button.TextXAlignment = Enum.TextXAlignment.Left

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = Frame

ESPFrame.Name = "ESPFrame"
ESPFrame.Parent = Frame
ESPFrame.AnchorPoint = Vector2.new(0, 1)
ESPFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPFrame.BackgroundTransparency = 1.000
ESPFrame.Position = UDim2.new(0, 0, 1, 0)
ESPFrame.Size = UDim2.new(1, 0, 1, -30)

ToggleESP.Name = "ToggleESP"
ToggleESP.Parent = ESPFrame
ToggleESP.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleESP.BackgroundColor3 = Color3.fromRGB(93, 33, 33)
ToggleESP.Position = UDim2.new(0.5, 0, 0.100000001, 0)
ToggleESP.Size = UDim2.new(0.400000006, 0, 0.100000001, 0)

TextButton.Parent = ToggleESP
TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.5, 0, 0.5, -3)
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.GothamMedium
TextButton.Text = "Enable"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 24.000
TextButton.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 6)
UICorner_5.Parent = TextButton

UICorner_6.CornerRadius = UDim.new(0, 6)
UICorner_6.Parent = ToggleESP

ESPSettings.Name = "ESPSettings"
ESPSettings.Parent = ESPFrame
ESPSettings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPSettings.BackgroundTransparency = 1.000
ESPSettings.Position = UDim2.new(0, 0, 0.150000006, 10)
ESPSettings.Size = UDim2.new(1, 0, 0.5, 0)

SquadOnly.Name = "SquadOnly"
SquadOnly.Parent = ESPSettings
SquadOnly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SquadOnly.BackgroundTransparency = 1.000
SquadOnly.Size = UDim2.new(1, 0, 0.200000003, 0)

Checkbox.Name = "Checkbox"
Checkbox.Parent = SquadOnly
Checkbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Checkbox.BackgroundTransparency = 1.000
Checkbox.Size = UDim2.new(1, 0, 1, 0)
Checkbox.SizeConstraint = Enum.SizeConstraint.RelativeYY
Checkbox.Image = "http://www.roblox.com/asset/?id=6031068433"
Checkbox.ScaleType = Enum.ScaleType.Slice

UIListLayout_2.Parent = SquadOnly
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_2.Padding = UDim.new(0, 10)

Label_2.Name = "Label"
Label_2.Parent = SquadOnly
Label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_2.BackgroundTransparency = 1.000
Label_2.Size = UDim2.new(0.400000006, 0, 1, 0)
Label_2.Font = Enum.Font.GothamMedium
Label_2.Text = "Squad Only"
Label_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Label_2.TextScaled = true
Label_2.TextSize = 20.000
Label_2.TextWrapped = true
Label_2.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:

local function ORTMZRE_fake_script() -- Toggle.LocalScript 
	local script = Instance.new('LocalScript', Toggle)

	local player = game.Players.LocalPlayer

	local main = script.Parent.Parent.Parent
	local top = main.Top
	local overlay = top.UICornerOverlayE

	local open = false
	local cooldown = false

	local settingsFrame = top.Settings
	local greetings = settingsFrame.Greetings
	local buttons = settingsFrame.Buttons

	local playerThumbnail = game.Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)

	script.Parent.Image = playerThumbnail
	settingsFrame.Greetings.Username.Text = player.Name

	local function animateLabel(label: TextLabel, transparency: number, yield: number)
		TweenService:Create(
			label,
			TweenInfo.new(0.5),
			{TextTransparency = transparency or 0}
		):Play()
		wait(yield or 0)
	end

	local function toggle()
		if not cooldown then
			cooldown = true
			if not open then
				open = true
				top:TweenSize(UDim2.new(1, 0, 1, 0), 1, 5, 0.75, false)
				TweenService:Create(
					overlay, 
					TweenInfo.new(0.5), 
					{BackgroundTransparency = 1}
				):Play()

				wait(0.5)

				animateLabel(greetings:WaitForChild("Welcome"), 0.1)
				animateLabel(greetings:WaitForChild("Username"))

				for _, button in pairs(buttons:GetChildren()) do
					if button:IsA("Frame") then
						button:TweenPosition(UDim2.new(0, 0, button.Position.Y.Scale, 0))
						wait(0.1)
					end
				end
			elseif open then
				open = false

				TweenService:Create(
					script.Parent.Exit,
					TweenInfo.new(0.2),
					{
						BackgroundTransparency = 1,
						ImageTransparency = 1
					}
				):Play()

				for _, button in pairs(buttons:GetChildren()) do
					if button:IsA("Frame") then
						button:TweenPosition(UDim2.new(-1, 0, button.Position.Y.Scale, 0))
						wait(0.1)
					end
				end

				animateLabel(greetings:WaitForChild("Username"), 1, 0.1)
				animateLabel(greetings:WaitForChild("Welcome"), 1)

				wait(0.5)

				top:TweenSize(UDim2.new(1, 0, 0, 30), 1, 5, 0.75, false)
				TweenService:Create(
					overlay, 
					TweenInfo.new(0.5), 
					{BackgroundTransparency = 0}
				):Play()
			end
			wait(1)
			cooldown = false
		end
	end

	script.Parent.MouseButton1Up:Connect(toggle)

	script.Parent.MouseEnter:Connect(function()
		if open then
			TweenService:Create(
				script.Parent.Exit,
				TweenInfo.new(0.2),
				{
					BackgroundTransparency = 0,
					ImageTransparency = 0
				}
			):Play()
		end
	end)

	script.Parent.MouseLeave:Connect(function()
		TweenService:Create(
			script.Parent.Exit,
			TweenInfo.new(0.2),
			{
				BackgroundTransparency = 1,
				ImageTransparency = 1
			}
		):Play()
	end)

	buttons.ESP.Button.MouseButton1Up:Connect(function()
		main.ESPFrame.Visible = true

		if open then
			toggle()
		end
	end)
end
coroutine.wrap(ORTMZRE_fake_script)()
local function GCXTE_fake_script() -- Buttons.LocalScript 
	local script = Instance.new('LocalScript', Buttons)

	for _, item in pairs(script.Parent:GetChildren()) do
		if item:IsA("Frame") then
			local button: TextButton = item:WaitForChild("Button")

			button.MouseEnter:Connect(function()
				TweenService:Create(item, TweenInfo.new(0.1), {BackgroundTransparency = 0.95}):Play()
			end)

			button.MouseLeave:Connect(function()
				TweenService:Create(item, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
			end)
		end
	end
end
coroutine.wrap(GCXTE_fake_script)()

-- main esp

local espEnabled = false
local squadOnly = false

local onCharacterAdded = {}
local onCharacterRemoving = {}
local squads = {}
local espFolder = Instance.new("Folder", game:GetService("CoreGui"))

local function returnDist(targetPlayer: Player)
	return targetPlayer:DistanceFromCharacter(localPlayer.Character.PrimaryPart.Position)
end

local function createESP(player, isSquad)
	if player.Name == localPlayer.Name then return end
	local character = player.Character
	
	if character then
		if not espFolder:FindFirstChild(player.Name) then
			local playerEsp = Instance.new("Folder", espFolder)
			playerEsp.Name = player.Name

			local highlight = Instance.new("Highlight", playerEsp)
			highlight.Adornee = character
			highlight.FillColor = table.find(squads, player.Name) and Color3.fromRGB(8, 177, 255) or Color3.fromRGB(255, 0, 0)
			highlight.FillTransparency = 0.75
			highlight.OutlineTransparency = 0.5

			local billboard = Instance.new("BillboardGui", playerEsp)
			billboard.AlwaysOnTop = true
			billboard.Adornee = character:WaitForChild("Head")
			billboard.ExtentsOffsetWorldSpace = Vector3.new(0, 0.5, 0)
			billboard.StudsOffset = Vector3.new(0, 1, 0)
			billboard.StudsOffsetWorldSpace = Vector3.new(0, 2, 0)
			billboard.AlwaysOnTop = true
			billboard.Size = UDim2.new(0, 5, 0, 5)

			local frame = Instance.new("Frame", billboard)
			frame.ZIndex = 10
			frame.BackgroundTransparency = 1
			frame.Size = UDim2.new(1, 0, 1, 0)

			local name = Instance.new("TextLabel", frame)
			name.ZIndex = 10
			name.Text = player.Name
			name.BackgroundTransparency = 1
			name.Position = UDim2.new(0, 0, 0, -45)
			name.Size = UDim2.new(1, 0, 10, 0)
			name.TextColor3 = table.find(squads, player.Name) and Color3.fromRGB(8, 177, 255) or Color3.fromRGB(255, 255, 255)
			name.Font = Enum.Font.GothamBold
			name.TextSize = 13
			name.TextStrokeTransparency = 0.5

			local health = Instance.new("TextLabel", frame)
			health.Name = "Health"
			health.ZIndex = 10
			health.Text = "Health: nil"
			health.BackgroundTransparency = 1
			health.Position = UDim2.new(0, 0, 0, -32)
			health.Size = UDim2.new(1, 0, 10, 0)
			health.TextColor3 = Color3.fromRGB(255, 255, 255)
			health.Font = Enum.Font.Gotham
			health.TextSize = 13
			health.TextStrokeTransparency = 0.5

			local distance = Instance.new("TextLabel", frame)
			distance.Name = "Distance"
			distance.ZIndex = 10
			distance.Text = "Distance: 0 studs"
			distance.BackgroundTransparency = 1
			distance.Position = UDim2.new(0, 0, 0, -18)
			distance.Size = UDim2.new(1, 0, 10, 0)
			distance.TextColor3 = Color3.fromRGB(255, 255, 255)
			distance.Font = Enum.Font.Gotham
			distance.TextSize = 13
			distance.TextStrokeTransparency = 0.5
		end
	else
		print("Could not find character for", player.Name)
	end

	if not onCharacterAdded[player.Name] then
		onCharacterAdded[player.Name] = player.CharacterAdded:Connect(function(character)
			if table.find(squads, player.Name) then
				createESP(player, true)
			else
				createESP(player)
			end
		end)
	end

	if not onCharacterRemoving[player.Name] then
		onCharacterRemoving[player.Name] = player.CharacterRemoving:Connect(function()
			local playerFolder = espFolder:FindFirstChild(player.Name) 
			
			if playerFolder then
				playerFolder:Destroy()
			end
		end)
	end
end

local function cleanESP()
	for _,v in pairs(espFolder:GetChildren()) do
		v:Destroy()
	end

	for n,v in pairs(onCharacterAdded) do
		v:Disconnect()
		onCharacterAdded[n] = nil
	end

	for n,v in pairs(onCharacterRemoving) do
		v:Disconnect()
		onCharacterAdded[n] = nil
	end

	onCharacterAdded = {}
	onCharacterRemoving = {}
end

local function loadESP()
	cleanESP()
	
	for _,v in pairs(game.Players:GetPlayers()) do
		if squadOnly then
			if table.find(squads, v.Name) then
				createESP(v, true)
			end
		else
			createESP(v)
		end
	end
	
	RunService:BindToRenderStep("updateESP", Enum.RenderPriority.First.Value, function()
		for _, folder in pairs(espFolder:GetChildren()) do
			local billboard = folder:FindFirstChild("BillboardGui")
			
			if billboard then
				local health = billboard.Frame.Health
				local distance = billboard.Frame.Distance

				local targetPlayer = game.Players:FindFirstChild(folder.Name)
				local character = localPlayer.Character
				
				
				if character then
					local humanoid = character:FindFirstChildOfClass("Humanoid")

					if humanoid then
						if humanoid.Health > 0 then
							health.Text = string.format("Health: %d", humanoid.Health)
							distance.Text = string.format("Distance: %d studs", returnDist(targetPlayer))
						end
					end
				end
			end
		end
	end)

end

local function OIWOJJY_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), 1, 5, 0.1)
	end)

	script.Parent.MouseButton1Up:Connect(function()
		script.Parent:TweenPosition(UDim2.new(0.5, 0, 0.5, -3), 1, 5, 0.1, true)

		if not espEnabled then
			espEnabled = true
			script.Parent.BackgroundColor3 = Color3.fromRGB(49, 208, 57)
			script.Parent.Parent.BackgroundColor3 = Color3.fromRGB(32, 93, 35)
			script.Parent.Text = "Disable"

			if game.PlaceId == 863266079 then
				local scrollingFrame = localPlayer.PlayerGui:WaitForChild("Interface Main"):WaitForChild("PlayerList"):WaitForChild("MainList"):WaitForChild("SquadList"):WaitForChild("ScrollingFrame")

				for _, v in pairs(scrollingFrame:GetChildren()) do
					if v.Name == "SquadTemplate" then
						local squadTemplate = v

						for _, b in pairs(squadTemplate:GetChildren()) do
							if b.Name == "NameButton" then
								for _, n in pairs(b.NameLabelBin:GetChildren()) do
									if n.Name == "NameLabel" then
										if not table.find(squads, n.Text) then
											table.insert(squads, n.Text)
										end
									end
								end
							end
						end
					end
				end
			end
			loadESP()
		else
			cleanESP()
			
			espEnabled = false
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
			script.Parent.Parent.BackgroundColor3 = Color3.fromRGB(93, 33, 33)
			script.Parent.Text = "Enable"
			squads = {}

			RunService:UnbindFromRenderStep("updateESP")
		end
	end)

	script.Parent.MouseLeave:Connect(function()
		script.Parent:TweenPosition(UDim2.new(0.5, 0, 0.5, -3), 1, 5, 0.1, true)
	end)
end
coroutine.wrap(OIWOJJY_fake_script)()

Checkbox.MouseButton1Up:Connect(function()
	if not squadOnly then
		squadOnly = true
		Checkbox.Image = "http://www.roblox.com/asset/?id=6031068426"

		if espEnabled then
			loadESP()
		end
	else
		squadOnly = false
		Checkbox.Image = "http://www.roblox.com/asset/?id=6031068433"

		if espEnabled then
			loadESP()
		end
	end
end)

-- Dragging (forked from SimpleSpy)
Top.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local lastPos = UserInputService.GetMouseLocation(UserInputService)
		local mainPos = Frame.AbsolutePosition
		local offset = (mainPos - lastPos) + Vector2.new(0, 36)
		local currentPos = offset + lastPos
		RunService.BindToRenderStep(RunService, "drag", 1, function()
			local newPos = UserInputService.GetMouseLocation(UserInputService)
			if newPos ~= lastPos then
				local currentX = (offset + newPos).X
				local currentY = (offset + newPos).Y
				local viewportSize = workspace.CurrentCamera.ViewportSize
				if
					(currentX < 0 and currentX < currentPos.X)
					or (
						currentX > (viewportSize.X - (Frame.AbsoluteSize.X))
							and currentX > currentPos.X
					)
				then
					if currentX < 0 then
						currentX = 0
					else
						currentX = viewportSize.X - (Frame.AbsoluteSize.X)
					end
				end
				if
					(currentY < 0 and currentY < currentPos.Y)
					or (
						currentY > (viewportSize.Y - (Frame.AbsoluteSize.Y))
							and currentY > currentPos.Y
					)
				then
					if currentY < 0 then
						currentY = 0
					else
						currentY = viewportSize.Y - (Frame.AbsoluteSize.Y)
					end
				end
				currentPos = Vector2.new(currentX, currentY)
				lastPos = newPos
				TweenService.Create(
					TweenService,
					Frame,
					TweenInfo.new(0.1),
					{ Position = UDim2.new(0, currentPos.X, 0, currentPos.Y) }
				):Play()
			end
			-- if input.UserInputState ~= Enum.UserInputState.Begin then
			--     RunService.UnbindFromRenderStep(RunService, "drag")
			-- end
		end)
		UserInputService.InputEnded:Connect(function(inputE)
			if input == inputE then
				RunService:UnbindFromRenderStep("drag")
			end
		end)
	end
end)

game.Players.PlayerAdded:Connect(function(targetPlayer)
	if espEnabled then
		createESP(targetPlayer)
	end
end)

game.Players.PlayerRemoving:Connect(function(targetPlayer)
	local playerEsp = espFolder:FindFirstChild(targetPlayer.Name)
	local addedConnection = onCharacterAdded[targetPlayer.Name]
	local removingConnection = onCharacterRemoving[targetPlayer.Name]

	if playerEsp then
		playerEsp:Destroy()
	end

	if addedConnection then
		addedConnection:Disconnect()
		onCharacterAdded[targetPlayer.Name] = nil
	end

	if removingConnection then
		removingConnection:Disconnect()
		onCharacterRemoving[targetPlayer.Name] = nil
	end
end)
