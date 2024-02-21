--[[
local BiohazardUI = loadstring(game:HttpGet('https://raw.githubusercontent.com/3345-c-a-t-s-u-s/New-C4-Remote.lua/main/Biohazard.s'))()
local HubIcon = 'http://www.roblox.com/asset/?id=16456736411'
local Noitify = BiohazardUI:Notification()

BiohazardUI:Loader(HubIcon,'BIOHAZARD')

local Window = BiohazardUI.new('BIOHAZARD',HubIcon)
local ExampleTab = Window:Tab('Example Tab','earth')

ExampleTab:AddLabel('/// Example \\\\\\','center')

ExampleTab:AddButton('Button',function()
	Noitify.new('Notification: '..tostring(math.random(5,10000)),1)
	print('button')
end)

ExampleTab:AddSlider('Slider',0,100,5,function(value)
	print(value)
end)

ExampleTab:AddToggle('Toggle',false,function(value)
	print(value)
end)

ExampleTab:AddDropdown('Dropdown',{1,2,3,4},2,function(value)
	print(value)
end)
]]

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CoreGui = game:FindFirstChild('CoreGui') or LocalPlayer.PlayerGui
local TextService = game:GetService('TextService')
local Biohazard = {
	Icons = "https://raw.githubusercontent.com/evoincorp/lucideblox/master/src/modules/util/icons.json",
	MainColor = Color3.fromRGB(255, 0, 4),
	ColorOnIcon = false,
	Size = UDim2.new(0.100000001, 350, 0.100000001, 250),
	VersionUI = '1.0p'
}

function Signal(Table,Target:{{Name:string,Func:FunctionalTest}})
	Table = Table or {}

	for i,v in ipairs(Target) do
		Table[v.Name] = function(...)


			return v['Func'](...)
		end 
	end 

	return Table
end

local function cretate_button(asd)
	local button=Instance.new('TextButton')
	button.Size=UDim2.new(1,0,1,0)
	button.BackgroundTransparency=1
	button.TextTransparency=1
	button.Text=""
	button.Parent=asd
	button.ZIndex=5000
	return button
end

local function CalculateDistance<Info...>(pointA, pointB)
	return math.sqrt(((pointB.X - pointA.X) ^ 2) + ((pointB.Y - pointA.Y) ^ 2))
end

function Create_Ripple<Effect...>(Parent : Frame, ___)
	Parent.ClipsDescendants = true
	local ripple = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ef=Instance.new("UIStroke")
	ripple.Active = false
	ripple.Name = "ripple"
	ripple.Parent = Parent
	ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ripple.ZIndex = Parent.ZIndex or 7
	ripple.AnchorPoint = Vector2.new(0.5, 0.5)
	ripple.Size = UDim2.new(0,0,0,0)
	ripple.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ef.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
	ef.Color=Color3.fromRGB(255, 255, 255)
	ef.Thickness=2
	ef.Parent=ripple
	ef.Transparency=1

	TweenService:Create(ef,TweenInfo.new(0.1),{Transparency=0}):Play()

	UICorner.CornerRadius = UDim.new(0.25, 0)
	UICorner.Parent = ripple

	local buttonAbsoluteSize = Parent.AbsoluteSize
	local buttonAbsolutePosition = Parent.AbsolutePosition

	local mouseAbsolutePosition = Vector2.new(Mouse.X, Mouse.Y)
	local mouseRelativePosition = (mouseAbsolutePosition - buttonAbsolutePosition)

	ripple.BackgroundTransparency = 0.84
	ripple.Position = UDim2.new(0, mouseRelativePosition.X, 0, mouseRelativePosition.Y)
	ripple.Parent = Parent

	local topLeft = CalculateDistance(mouseRelativePosition, Vector2.new(0, 0))
	local topRight = CalculateDistance(mouseRelativePosition, Vector2.new(buttonAbsoluteSize.X, 0))
	local bottomRight = CalculateDistance(mouseRelativePosition, buttonAbsoluteSize)
	local bottomLeft = CalculateDistance(mouseRelativePosition, Vector2.new(0, buttonAbsoluteSize.Y))

	local Size_UP = UDim2.new(50,0,50,0)

	TweenService:Create(ripple,TweenInfo.new(2),{Size = Size_UP,BackgroundTransparency = 1}):Play()

	game:GetService('Debris'):AddItem(ripple,2.2)
end


local function GetImageData(name:string,image:ImageLabel)
	name = name or "ADS"

	if name:find('rbxassetid://') or name:find('http://www.roblox.com/asset/?id=') or name:find('http://www.roblox.com/') then
		image.Image = name
		image.ImageRectOffset = Vector2.new(0,0)
		image.ImageRectSize = Vector2.new(0,0)
		image.ImageColor3 = Color3.fromRGB(255,255,255)
		return
	end

	name = name:lower()
	local NigImage = "rbxassetid://3926305904"
	image.Position = UDim2.new(0.1,0,0.45,0)

	if Biohazard.ColorOnIcon then
		image.ImageColor3 = Biohazard.MainColor
	else
		image.ImageColor3 = Color3.fromRGB(255,255,255)
	end

	if name == "ads" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(205,565)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "list" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(485,205)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "folder" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(805,45)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "earth" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(604,324)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "locked" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(524, 644)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "home" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(964, 205)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "setting" then
		image.Image = "rbxassetid://3515393063"
		image.ImageRectOffset = Vector2.new(0, 0)
		image.ImageRectSize = Vector2.new(0,0)
	end

	if name == "user" then
		image.Image = "rbxassetid://10494577250"
		image.ImageRectOffset = Vector2.new(0, 0)
		image.ImageRectSize = Vector2.new(0,0)
	end
end

function Biohazard.new(UITitle:string,IconId:string)
	local WindowSelf = {
		Keybind = Enum.KeyCode.X,
		Gui = true,
		TabInfo = {},
		DropdownSize = 5,
	}
	
	WindowSelf.ToggleCallback = function() end
	
	local function scrolling_connect(scrollframe:ScrollingFrame)
		return coroutine.wrap(function()
			local addres = WindowSelf.DropdownSize * 31
			local UIListLayout:UIListLayout = scrollframe:WaitForChild('UIListLayout',9999999)
			scrollframe.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + addres)

			UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
				addres = WindowSelf.DropdownSize * 31
				scrollframe.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + addres)
			end)
		end)()
	end

	local BiohazardUI = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadowHolder = Instance.new("Frame")
	local DropShadow = Instance.new("ImageLabel")
	local HeadFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Logo = Instance.new("ImageLabel")
	local Frame_2 = Instance.new("Frame")
	local Black = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local Frame_3 = Instance.new("Frame")
	local Black_2 = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local Frame_4 = Instance.new("Frame")
	local Black_3 = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local MainFrame = Instance.new("Frame")
	local Buttons = Instance.new("Frame")
	local UICorner_6 = Instance.new("UICorner")
	local Buttonsscroll = Instance.new("ScrollingFrame") scrolling_connect(Buttonsscroll)
	local UIListLayout = Instance.new("UIListLayout")
	local Tabs = Instance.new("Frame")

	task.spawn(function()
		local UICorner = Instance.new("UICorner")
		Tabs.Name = "Tabs"
		Tabs.Parent = MainFrame
		Tabs.AnchorPoint = Vector2.new(0, 0.5)
		Tabs.BackgroundColor3 = Color3.fromRGB(23, 25, 27)
		Tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tabs.BorderSizePixel = 0
		Tabs.Position = UDim2.new(0.286560923, 0, 0.5, 0)
		Tabs.Size = UDim2.new(0.713, 0, 0.980000019, 0)
		Tabs.ZIndex = 4
		Tabs.BackgroundTransparency = 1
		TweenService:Create(Tabs,TweenInfo.new(2),{BackgroundTransparency = 0}):Play()


		UICorner.CornerRadius = UDim.new(0, 2)
		UICorner.Parent = Tabs
	end)

	local UICorner_7 = Instance.new("UICorner")
	local ToggleFunctions = function(Val)
		if Val then
			TweenService:Create(Frame,TweenInfo.new(0.1),{Size = UDim2.new(0.1, 350,0.1, 250),Position = UDim2.new(0.5,0,0.5,0)}):Play()
		else
			TweenService:Create(Frame,TweenInfo.new(0.1),{Size = UDim2.new(0.1, 250,0,0)}):Play()
		end
		
		if WindowSelf.ToggleCallback then
			pcall(WindowSelf.ToggleCallback,Val)
		end
	end

	Frame:GetPropertyChangedSignal('Size'):Connect(function()
		if Frame.Size == UDim2.new(0,0,0,0) or Frame.Size.Y.Scale <= 0 then
			Frame.Visible = false
		else
			Frame.Visible = true
		end
	end)

	BiohazardUI:GetPropertyChangedSignal('Enabled'):Connect(function()
		BiohazardUI.Enabled = true
	end)

	task.spawn(function()
		task.wait(2)
		if UserInputService.TouchEnabled then
			local CloseUI = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local DropShadow = Instance.new("ImageLabel")
			local Logo = Instance.new("ImageLabel")

			CloseUI.Name = "CloseUI"
			CloseUI.Parent = BiohazardUI
			CloseUI.BackgroundColor3 = Color3.fromRGB(35, 39, 42)
			CloseUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
			CloseUI.BorderSizePixel = 0
			CloseUI.Position = UDim2.new(0.895390034, 0, 0.192441061, 0)
			CloseUI.Size = UDim2.new(0, 0, 0, 0)
			CloseUI.SizeConstraint = Enum.SizeConstraint.RelativeYY
			CloseUI.ZIndex = 100
			CloseUI.AnchorPoint = Vector2.new(0.5,0.5)
			CloseUI.Active = true

			TweenService:Create(CloseUI,TweenInfo.new(0.2),{Size = UDim2.new(0.100000001, 0, 0.100000001, 0)}):Play()
			UICorner.CornerRadius = UDim.new(0, 3)
			UICorner.Parent = CloseUI

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = CloseUI
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 47, 1, 47)
			DropShadow.ZIndex = 99
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 1
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			TweenService:Create(DropShadow,TweenInfo.new(1),{ImageTransparency = 0.5}):Play()

			Logo.Name = "Logo"
			Logo.Parent = CloseUI
			Logo.AnchorPoint = Vector2.new(0.5, 0.5)
			Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Logo.BackgroundTransparency = 1.000
			Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Logo.BorderSizePixel = 0
			Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
			Logo.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
			Logo.SizeConstraint = Enum.SizeConstraint.RelativeYY
			Logo.ZIndex = 101
			Logo.Image = IconId or "rbxassetid://16435136751"
			Logo.Transparency = 1

			TweenService:Create(Logo,TweenInfo.new(1),{ImageTransparency = 0}):Play()
			CloseUI.MouseEnter:Connect(function()
				TweenService:Create(CloseUI,TweenInfo.new(0.1),{Size = UDim2.new(0.095, 0, 0.095, 0)}):Play()
			end)

			CloseUI.MouseLeave:Connect(function()
				TweenService:Create(CloseUI,TweenInfo.new(0.1),{Size = UDim2.new(0.1, 0, 0.1, 0)}):Play()
			end)

			local Button = cretate_button(CloseUI)
			Button.MouseButton1Click:Connect(function()
				TweenService:Create(CloseUI,TweenInfo.new(0.1),{Size = UDim2.new(0.100000001, 0, 0.100000001, 0)}):Play()
				WindowSelf.Gui = not WindowSelf.Gui
				ToggleFunctions(WindowSelf.Gui)
			end)

			local dragToggle = nil
			local dragSpeed = 0.1
			local dragStart = nil
			local startPos = nil

			local function updateInput(input)
				local delta = input.Position - dragStart
				local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
					startPos.Y.Scale, startPos.Y.Offset + delta.Y)
				game:GetService('TweenService'):Create(CloseUI, TweenInfo.new(dragSpeed), {Position = position}):Play()
			end

			Button.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
					dragToggle = true
					dragStart = input.Position
					startPos = CloseUI.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle = false
						end
					end)
				end
			end)

			UserInputService.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					if dragToggle then
						updateInput(input)
					end
				end
			end)
		end
	end)

	BiohazardUI.Name = "Biohazard_"..tostring(math.random(1,1000))
	BiohazardUI.Parent = CoreGui
	BiohazardUI.ResetOnSpawn = false
	BiohazardUI.IgnoreGuiInset = true
	BiohazardUI.ResetOnSpawn = false

	Frame.Parent = BiohazardUI
	Frame.Active = true
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(35, 39, 42)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0,0,0,0)

	TweenService:Create(Frame,TweenInfo.new(1,Enum.EasingStyle.Quint),{Size = Biohazard.Size}):Play()
	UICorner.CornerRadius = UDim.new(0, 2)
	UICorner.Parent = Frame

	DropShadowHolder.Name = "DropShadowHolder"
	DropShadowHolder.Parent = Frame
	DropShadowHolder.BackgroundTransparency = 1.000
	DropShadowHolder.BorderSizePixel = 0
	DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
	DropShadowHolder.ZIndex = 0

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = DropShadowHolder
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 1
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	TweenService:Create(DropShadow,TweenInfo.new(2),{ImageTransparency = 0.5}):Play()


	HeadFrame.Name = "HeadFrame"
	HeadFrame.Parent = Frame
	HeadFrame.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
	HeadFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HeadFrame.BorderSizePixel = 0
	HeadFrame.Size = UDim2.new(1, 0, 0.0649999976, 0)
	HeadFrame.ZIndex = 2
	HeadFrame.BackgroundTransparency = 1
	TweenService:Create(HeadFrame,TweenInfo.new(2),{BackgroundTransparency = 0}):Play()



	UICorner_2.CornerRadius = UDim.new(0, 2)
	UICorner_2.Parent = HeadFrame

	Title.Name = "Title"
	Title.Parent = HeadFrame
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.524549246, 0, 0.500000417, 0)
	Title.Size = UDim2.new(0.925901651, 0, 0.75, 0)
	Title.ZIndex = 3
	Title.Font = Enum.Font.Code
	Title.Text = UITitle or "Biohazard"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.TextTransparency = 1

	TweenService:Create(Title,TweenInfo.new(2),{TextTransparency = 0}):Play()

	Logo.Name = "Logo"
	Logo.Parent = HeadFrame
	Logo.AnchorPoint = Vector2.new(0.5, 0.5)
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Logo.BorderSizePixel = 0
	Logo.Position = UDim2.new(0.0250000004, 0, 0.5, 0)
	Logo.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
	Logo.SizeConstraint = Enum.SizeConstraint.RelativeYY
	Logo.ZIndex = 5
	Logo.Image = IconId or "rbxassetid://16435136751"
	Logo.ImageTransparency = 1

	TweenService:Create(Logo,TweenInfo.new(2),{ImageTransparency = 0}):Play()

	Frame_2.Parent = Frame
	Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_2.BackgroundColor3 = Biohazard.MainColor
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.5, 0, 0.975000024, 0)
	Frame_2.Size = UDim2.new(0.949999988, 0, 0.00300000003, 0)
	Frame_2.ZIndex = 2

	Frame_2.BackgroundTransparency = 1
	TweenService:Create(Frame_2,TweenInfo.new(3),{BackgroundTransparency = 0}):Play()

	Black.Name = "Black"
	Black.Parent = Frame_2
	Black.AnchorPoint = Vector2.new(0.5, 0.5)
	Black.BackgroundColor3 = Color3.fromRGB(23, 25, 27)
	Black.BackgroundTransparency = 0.900
	Black.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Black.BorderSizePixel = 0
	Black.Position = UDim2.new(0.5, 0, 0.5, 0)
	Black.Size = UDim2.new(1, 3, 1, 3)

	Black.BackgroundTransparency = 1
	TweenService:Create(Black,TweenInfo.new(3),{BackgroundTransparency = 0.95}):Play()


	UICorner_3.CornerRadius = UDim.new(0, 2)
	UICorner_3.Parent = Black

	Frame_3.Parent = Frame
	Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_3.BackgroundColor3 = Biohazard.MainColor
	Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(0.284636676, 0, 0.534389138, 0)
	Frame_3.Size = UDim2.new(0, 1, 0.884000003, 0)
	Frame_3.ZIndex = 2

	Frame_3.BackgroundTransparency = 1
	TweenService:Create(Frame_3,TweenInfo.new(3),{BackgroundTransparency = 0}):Play()


	Black_2.Name = "Black"
	Black_2.Parent = Frame_3
	Black_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Black_2.BackgroundColor3 = Color3.fromRGB(23, 25, 27)
	Black_2.BackgroundTransparency = 0.900
	Black_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Black_2.BorderSizePixel = 0
	Black_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Black_2.Size = UDim2.new(1, 8, 1, 8)

	Black_2.BackgroundTransparency = 1
	TweenService:Create(Black_2,TweenInfo.new(2),{BackgroundTransparency = 0.95}):Play()


	UICorner_4.CornerRadius = UDim.new(0, 2)
	UICorner_4.Parent = Black_2

	Frame_4.Parent = Frame
	Frame_4.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_4.BackgroundColor3 = Biohazard.MainColor
	Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_4.BorderSizePixel = 0
	Frame_4.Position = UDim2.new(0.497768253, 0, 0.09096466, 0)
	Frame_4.Size = UDim2.new(0.949999988, 0, 0.00249999994, 0)
	Frame_4.ZIndex = 2

	Frame_4.BackgroundTransparency = 1
	TweenService:Create(Frame_4,TweenInfo.new(2),{BackgroundTransparency = 0}):Play()


	Black_3.Name = "Black"
	Black_3.Parent = Frame_4
	Black_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Black_3.BackgroundColor3 = Color3.fromRGB(23, 25, 27)
	Black_3.BackgroundTransparency = 0.900
	Black_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Black_3.BorderSizePixel = 0
	Black_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	Black_3.Size = UDim2.new(1, 3, 1, 3)

	Black_3.BackgroundTransparency = 1
	TweenService:Create(Black_3,TweenInfo.new(2),{BackgroundTransparency = 0.95}):Play()


	UICorner_5.CornerRadius = UDim.new(0, 2)
	UICorner_5.Parent = Black_3

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Frame
	MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainFrame.BackgroundTransparency = 1.000
	MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.ClipsDescendants = true
	MainFrame.Position = UDim2.new(0.022317443, 0, 0.0974649191, 0)
	MainFrame.Size = UDim2.new(0.950450897, 0, 0.871034861, 0)
	MainFrame.ZIndex = 3



	Buttons.Name = "Buttons"
	Buttons.Parent = MainFrame
	Buttons.AnchorPoint = Vector2.new(0, 0.5)
	Buttons.BackgroundColor3 = Color3.fromRGB(23, 25, 27)
	Buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Buttons.BorderSizePixel = 0
	Buttons.ClipsDescendants = true
	Buttons.Position = UDim2.new(0.00300000003, 0, 0.5, 0)
	Buttons.Size = UDim2.new(0.261000007, 0, 0.980000019, 0)
	Buttons.ZIndex = 4
	Buttons.BackgroundTransparency = 1
	TweenService:Create(Buttons,TweenInfo.new(2),{BackgroundTransparency = 0}):Play()


	UICorner_6.CornerRadius = UDim.new(0, 2)
	UICorner_6.Parent = Buttons

	Buttonsscroll.Name = "Buttons.scroll"
	Buttonsscroll.Parent = Buttons
	Buttonsscroll.Active = true
	Buttonsscroll.AnchorPoint = Vector2.new(0.5, 0.5)
	Buttonsscroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Buttonsscroll.BackgroundTransparency = 1.000
	Buttonsscroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Buttonsscroll.BorderSizePixel = 0
	Buttonsscroll.ClipsDescendants = false
	Buttonsscroll.Position = UDim2.new(0.5, 0, 0.5, 0)
	Buttonsscroll.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
	Buttonsscroll.ZIndex = 5
	Buttonsscroll.ScrollBarThickness = 0

	UIListLayout.Parent = Buttonsscroll
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)

	function WindowSelf:Tab(TabName:string,IconType:string)
		local TabSelf = {}
		local Tabscroll = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		scrolling_connect(Tabscroll)
		Tabscroll.Name = "Tab.scroll"
		Tabscroll.Parent = Tabs
		Tabscroll.Active = true
		Tabscroll.AnchorPoint = Vector2.new(0.5, 0.5)
		Tabscroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tabscroll.BackgroundTransparency = 1.000
		Tabscroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tabscroll.BorderSizePixel = 0
		Tabscroll.ClipsDescendants = false
		Tabscroll.Position = UDim2.new(0.5, 0, 0.5, 0)
		Tabscroll.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
		Tabscroll.ZIndex = 5
		Tabscroll.ScrollBarThickness = 0

		UIListLayout.Parent = Tabscroll
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 4)

		local TabButton = Instance.new("Frame")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local UICorner = Instance.new("UICorner")
		local Icon = Instance.new("ImageLabel")
		local Title = Instance.new("TextLabel")

		TabButton.Name = "TabButton"
		TabButton.Parent = Buttonsscroll
		TabButton.BackgroundColor3 = Color3.fromRGB(35, 39, 42)
		TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabButton.BorderSizePixel = 0
		TabButton.Size = UDim2.new(1, 0, 0.5, 0)
		TabButton.ZIndex = 6

		UIAspectRatioConstraint.Parent = TabButton
		UIAspectRatioConstraint.AspectRatio = 5.000
		UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

		UICorner.CornerRadius = UDim.new(0, 3)
		UICorner.Parent = TabButton

		Icon.Name = "Icon"
		Icon.Parent = TabButton
		Icon.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon.BackgroundTransparency = 1.000
		Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon.BorderSizePixel = 0
		Icon.Position = UDim2.new(0.100000001, 0, 0.5, 0)
		Icon.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
		Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
		Icon.ZIndex = 7
		Icon.Image = "rbxassetid://3926305904"
		Icon.ImageColor3 = Biohazard.MainColor
		Icon.ImageRectOffset = Vector2.new(205, 565)
		Icon.ImageRectSize = Vector2.new(35, 35)

		if IconType then
			GetImageData(IconType,Icon)
		end

		Title.Name = "Title"
		Title.Parent = TabButton
		Title.AnchorPoint = Vector2.new(0.5, 0.5)
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(2.13193798, 0, 0.5, 0)
		Title.Size = UDim2.new(3.79999995, 0, 0.540000021, 0)
		Title.ZIndex = 7
		Title.Font = Enum.Font.Code
		Title.Text = TabName or "Example"
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left

		local function TabValue(value)
			if value then
				Tabscroll.Visible = true
				TweenService:Create(TabButton,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(44, 47, 51)}):Play()
			else
				TweenService:Create(TabButton,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(35, 39, 42)}):Play()
				Tabscroll.Visible = false
			end
		end

		TabValue(not WindowSelf.TabInfo[1])

		table.insert(WindowSelf.TabInfo,{
			callback = TabValue,
			Frame = Tabscroll
		})

		cretate_button(TabButton).MouseButton1Click:Connect(function()
			Create_Ripple(TabButton)
			for i,v in ipairs(WindowSelf.TabInfo) do
				if v.Frame == Tabscroll then
					v.callback(true)
				else
					v.callback(false)
				end
			end
		end)

		function TabSelf:AddLabel(TextString:string,TextEnum)
			local Label = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local Text = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")

			Label.Name = "Label"
			Label.Parent = Tabscroll
			Label.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
			Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Label.BorderSizePixel = 0
			Label.Size = UDim2.new(0.980000019, 0, 0.5, 0)
			Label.ZIndex = 9

			UIAspectRatioConstraint.Parent = Label
			UIAspectRatioConstraint.AspectRatio = 10.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			Text.Name = "Text"
			Text.Parent = Label
			Text.AnchorPoint = Vector2.new(0.5, 0.5)
			Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Text.BackgroundTransparency = 1.000
			Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Text.BorderSizePixel = 0
			Text.Position = UDim2.new(0.5, 0, 0.5, 0)
			Text.Size = UDim2.new(0.949999988, 0, 0.5, 0)
			Text.ZIndex = 9
			Text.Font = Enum.Font.Code
			Text.TextColor3 = Color3.fromRGB(255, 255, 255)
			Text.TextScaled = true
			Text.TextSize = 14.000
			Text.TextWrapped = true
			Text.TextXAlignment = Enum.TextXAlignment.Left
			Text.Text = TextString

			if TextEnum then
				if typeof(TextEnum) == 'EnumItem' then
					Text.TextXAlignment = Enum.TextXAlignment.TextEnum
				else
					TextEnum = TextEnum:lower()

					if TextEnum:find('left') then
						Text.TextXAlignment = Enum.TextXAlignment.Left
					end

					if TextEnum:find('right') then
						Text.TextXAlignment = Enum.TextXAlignment.Right
					end

					if TextEnum:find('center') then
						Text.TextXAlignment = Enum.TextXAlignment.Center
					end
				end
			end
			UICorner.CornerRadius = UDim.new(0, 3)
			UICorner.Parent = Label

			return Signal({},{
				{
					Name = 'Text',
					Func = function(val)
						Text.Text = val
					end,
				}
			})
		end

		function TabSelf:AddToggle(ToggleString:string,Default:boolean,callback)

			callback = callback or function() end

			local Toggle = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local Text = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local System = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local Item = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local DropShadow = Instance.new("ImageLabel")
			local UICorner_4 = Instance.new("UICorner")


			Toggle.Name = "Toggle"
			Toggle.Parent = Tabscroll
			Toggle.BackgroundColor3 = Color3.fromRGB(35, 39, 42)
			Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Toggle.BorderSizePixel = 0
			Toggle.Size = UDim2.new(0.980000019, 0, 0.5, 0)
			Toggle.ZIndex = 9

			UIAspectRatioConstraint.Parent = Toggle
			UIAspectRatioConstraint.AspectRatio = 10.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			Text.Name = "Text"
			Text.Parent = Toggle
			Text.AnchorPoint = Vector2.new(0.5, 0.5)
			Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Text.BackgroundTransparency = 1.000
			Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Text.BorderSizePixel = 0
			Text.Position = UDim2.new(0.425716013, 0, 0.499999851, 0)
			Text.Size = UDim2.new(0.801432073, 0, 0.5, 0)
			Text.ZIndex = 9
			Text.Font = Enum.Font.Code
			Text.Text = ToggleString or "Toggle"
			Text.TextColor3 = Color3.fromRGB(255, 255, 255)
			Text.TextScaled = true
			Text.TextSize = 14.000
			Text.TextWrapped = true
			Text.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0, 3)
			UICorner.Parent = Toggle

			System.Name = "System"
			System.Parent = Toggle
			System.AnchorPoint = Vector2.new(0, 0.5)
			System.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
			System.BorderColor3 = Color3.fromRGB(0, 0, 0)
			System.BorderSizePixel = 0
			System.Position = UDim2.new(0.872761369, 0, 0.499999851, 0)
			System.Size = UDim2.new(0.100000001, 0, 0.5, 0)
			System.ZIndex = 11

			UICorner_2.Parent = System

			Item.Name = "Item"
			Item.Parent = System
			Item.AnchorPoint = Vector2.new(0.5, 0.5)
			Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Item.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Item.BorderSizePixel = 0
			Item.Position = UDim2.new(0.25, 0, 0.5, 0)
			Item.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
			Item.SizeConstraint = Enum.SizeConstraint.RelativeYY
			Item.ZIndex = 12

			if Biohazard.ColorOnIcon then
				Item.BackgroundColor3 = Biohazard.MainColor
			end

			UICorner_3.CornerRadius = UDim.new(0.5, 0)
			UICorner_3.Parent = Item

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = System
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 15, 1, 15)
			DropShadow.ZIndex = 10
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.750
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			UICorner_4.CornerRadius = UDim.new(0, 2)
			UICorner_4.Parent = DropShadow

			local function SystemToggle(value)

				if value then
					TweenService:Create(Item,TweenInfo.new(0.25),{Position = UDim2.new(0.75,0,0.5,0)}):Play()
				else
					TweenService:Create(Item,TweenInfo.new(0.25),{Position = UDim2.new(0.25,0,0.5,0)}):Play()
				end

				task.spawn(function()
					TweenService:Create(Item,TweenInfo.new(0.25),{Size = UDim2.new(0.65, 0, 0.65, 0)}):Play()
					task.wait(0.1)
					TweenService:Create(Item,TweenInfo.new(0.25),{Size = UDim2.new(0.899999976, 0, 0.899999976, 0)}):Play()
				end)
			end

			SystemToggle(Default)

			cretate_button(Toggle).MouseButton1Click:Connect(function()
				Default = not Default
				Create_Ripple(Toggle)
				SystemToggle(Default)
				callback(Default)
			end)

			return Signal({},{
				{
					Name = 'Text',
					Func = function(val)
						Text.Text = val
					end,
				},
				{
					Name = 'Value',
					Func = function(new)
						Default = new
					end,
				},
				{
					Name = 'GetValue',
					Func = function(new)
						return Default
					end,
				}
			})
		end

		function TabSelf:AddButton(ButtonString:string,callback)
			local Button = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local Text = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local Icon = Instance.new("ImageLabel")

			Button.Name = "Button"
			Button.Parent = Tabscroll
			Button.BackgroundColor3 = Color3.fromRGB(35, 39, 42)
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(0.980000019, 0, 0.5, 0)
			Button.ZIndex = 9

			UIAspectRatioConstraint.Parent = Button
			UIAspectRatioConstraint.AspectRatio = 10.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			Text.Name = "Text"
			Text.Parent = Button
			Text.AnchorPoint = Vector2.new(0.5, 0.5)
			Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Text.BackgroundTransparency = 1.000
			Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Text.BorderSizePixel = 0
			Text.Position = UDim2.new(0.5, 0, 0.5, 0)
			Text.Size = UDim2.new(0.949999988, 0, 0.5, 0)
			Text.ZIndex = 9
			Text.Font = Enum.Font.Code
			Text.Text = ButtonString or "Button"
			Text.TextColor3 = Color3.fromRGB(255, 255, 255)
			Text.TextScaled = true
			Text.TextSize = 14.000
			Text.TextWrapped = true
			Text.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0, 3)
			UICorner.Parent = Button

			Icon.Name = "Icon"
			Icon.Parent = Button
			Icon.AnchorPoint = Vector2.new(0.5, 0.5)
			Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Icon.BackgroundTransparency = 1.000
			Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Icon.BorderSizePixel = 0
			Icon.Position = UDim2.new(0.935000002, 0, 0.5, 0)
			Icon.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
			Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
			Icon.ZIndex = 10
			Icon.Image = "rbxassetid://7734010488"

			if Biohazard.ColorOnIcon then
				Icon.ImageColor3 = Biohazard.MainColor
			end

			cretate_button(Button).MouseButton1Click:Connect(function()
				Create_Ripple(Button)
				if callback then
					callback()
				end
			end)

			return Signal({},{
				{
					Name = 'Text',
					Func = function(val)
						Text.Text = val
					end,
				},
				{
					Name = 'Fire',
					Func = function(...)
						return callback(...)
					end,
				}
			})
		end

		function TabSelf:AddSlider(SliderString:string,Min:number,Max:number,Default:number,callback)
			Min = Min or 1
			Max = Max or 100
			Default = Default or Min

			local Slider = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local Text = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local System = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local ItemNumber = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local DropShadow = Instance.new("ImageLabel")
			local NumberText = Instance.new("TextLabel")

			Slider.Name = "Slider"
			Slider.Parent = Tabscroll
			Slider.BackgroundColor3 = Color3.fromRGB(35, 39, 42)
			Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Slider.BorderSizePixel = 0
			Slider.Size = UDim2.new(0.980000019, 0, 0.5, 0)
			Slider.ZIndex = 9

			UIAspectRatioConstraint.Parent = Slider
			UIAspectRatioConstraint.AspectRatio = 10.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			Text.Name = "Text"
			Text.Parent = Slider
			Text.AnchorPoint = Vector2.new(0.5, 0.5)
			Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Text.BackgroundTransparency = 1.000
			Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Text.BorderSizePixel = 0
			Text.Position = UDim2.new(0.26742056, 0, 0.499999851, 0)
			Text.Size = UDim2.new(0.484841138, 0, 0.5, 0)
			Text.ZIndex = 9
			Text.Font = Enum.Font.Code
			Text.Text = SliderString or "Slider"
			Text.TextColor3 = Color3.fromRGB(255, 255, 255)
			Text.TextScaled = true
			Text.TextSize = 14.000
			Text.TextWrapped = true
			Text.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0, 3)
			UICorner.Parent = Slider

			System.Name = "System"
			System.Parent = Slider
			System.AnchorPoint = Vector2.new(0, 0.5)
			System.BackgroundColor3 = Color3.fromRGB(23, 25, 27)
			System.BorderColor3 = Color3.fromRGB(0, 0, 0)
			System.BorderSizePixel = 0
			System.Position = UDim2.new(0.53990823, 0, 0.499999851, 0)
			System.Size = UDim2.new(0.432853252, 0, 0.5, 0)
			System.ZIndex = 11

			UICorner_2.CornerRadius = UDim.new(0, 3)
			UICorner_2.Parent = System

			ItemNumber.Name = "ItemNumber"
			ItemNumber.Parent = System
			ItemNumber.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
			ItemNumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ItemNumber.BorderSizePixel = 0
			ItemNumber.Size = UDim2.new(0.552143693, 0, 1, 0)
			ItemNumber.ZIndex = 13

			UICorner_3.CornerRadius = UDim.new(0, 3)
			UICorner_3.Parent = ItemNumber

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = System
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 17, 1, 17)
			DropShadow.ZIndex = 10
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.750
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			NumberText.Name = "NumberText"
			NumberText.Parent = System
			NumberText.AnchorPoint = Vector2.new(0.5, 0.5)
			NumberText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NumberText.BackgroundTransparency = 1.000
			NumberText.BorderColor3 = Color3.fromRGB(0, 0, 0)
			NumberText.BorderSizePixel = 0
			NumberText.Position = UDim2.new(0.5, 0, 0.5, 0)
			NumberText.Size = UDim2.new(1, 0, 0.649999976, 0)
			NumberText.ZIndex = 13
			NumberText.Font = Enum.Font.Code
			NumberText.Text = tostring(Default)..'/'..tostring(Max)
			NumberText.TextColor3 = Color3.fromRGB(255, 255, 255)
			NumberText.TextScaled = true
			NumberText.TextSize = 14.000
			NumberText.TextWrapped = true

			if Biohazard.ColorOnIcon then
				NumberText.TextColor3 = Biohazard.MainColor
			end

			local Size = UDim2.fromScale(Default / Max, 1)
			ItemNumber.Size = Size

			local IsTouched = false

			local function update(Input)
				local SizeScale = math.clamp((((Input.Position.X) - System.AbsolutePosition.X) / System.AbsoluteSize.X), 0, 1)
				local Valuea = math.floor(((Max - Min) * SizeScale) + Min)
				local Size = UDim2.fromScale(SizeScale, 1)
				NumberText.Text = tostring(Valuea)..'/'..tostring(Max)
				TweenService:Create(ItemNumber,TweenInfo.new(0.1),{Size = Size}):Play()
				Default = Valuea
				callback(Valuea)
			end

			System.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					IsTouched = true
					Create_Ripple(Slider)
					update(Input)
				end
			end)

			System.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					IsTouched = false
				end
			end)

			UserInputService.InputChanged:Connect(function(Input)
				if IsTouched then
					if (Input.UserInputType==Enum.UserInputType.MouseMovement or Input.UserInputType==Enum.UserInputType.Touch)  then
						update(Input)
					end
				end
			end)

			return Signal({},{
				{
					Name = 'Text',
					Func = function(val)
						Text.Text = val
					end,
				},
				{
					Name = 'Value',
					Func = function(new)
						Default = new
						NumberText.Text = tostring(Default)..'/'..tostring(Max)
						local Size = UDim2.fromScale(Default / Max, 1)
						ItemNumber.Size = Size
					end,
				},
				{
					Name = 'GetValue',
					Func = function(new)
						return Default
					end,
				}
			})
		end

		function TabSelf:AddDropdown(DropdownString:string,Info:{string},Defalut:Instance,callback)
			Info = Info or {}
			local Dropdown = Instance.new("Frame")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local Text = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local System = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local NumberText = Instance.new("TextLabel")
			local DropShadow = Instance.new("ImageLabel")
			local Scroll = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local ScrollingFrame = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")


			Dropdown.Name = "Dropdown"
			Dropdown.Parent = Tabscroll
			Dropdown.BackgroundColor3 = Color3.fromRGB(35, 39, 42)
			Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Dropdown.BorderSizePixel = 0
			Dropdown.Size = UDim2.new(0.980000019, 0, 0.5, 0)
			Dropdown.ZIndex = 9

			UIAspectRatioConstraint.Parent = Dropdown
			UIAspectRatioConstraint.AspectRatio = 10.000
			UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

			Text.Name = "Text"
			Text.Parent = Dropdown
			Text.AnchorPoint = Vector2.new(0.5, 0.5)
			Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Text.BackgroundTransparency = 1.000
			Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Text.BorderSizePixel = 0
			Text.Position = UDim2.new(0.377191305, 0, 0.499999851, 0)
			Text.Size = UDim2.new(0.704382658, 0, 0.5, 0)
			Text.ZIndex = 9
			Text.Font = Enum.Font.Code
			Text.Text = DropdownString or "Dropdown"
			Text.TextColor3 = Color3.fromRGB(255, 255, 255)
			Text.TextScaled = true
			Text.TextSize = 14.000
			Text.TextWrapped = true
			Text.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0, 3)
			UICorner.Parent = Dropdown

			System.Name = "System"
			System.Parent = Dropdown
			System.AnchorPoint = Vector2.new(0, 0.5)
			System.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
			System.BorderColor3 = Color3.fromRGB(0, 0, 0)
			System.BorderSizePixel = 0
			System.Position = UDim2.new(0.743532062, 0, 0.499999851, 0)
			System.Size = UDim2.new(0.229229435, 0, 0.5, 0)
			System.ZIndex = 11

			UICorner_2.CornerRadius = UDim.new(0, 3)
			UICorner_2.Parent = System

			NumberText.Name = "NumberText"
			NumberText.Parent = System
			NumberText.AnchorPoint = Vector2.new(0.5, 0.5)
			NumberText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NumberText.BackgroundTransparency = 1.000
			NumberText.BorderColor3 = Color3.fromRGB(0, 0, 0)
			NumberText.BorderSizePixel = 0
			NumberText.Position = UDim2.new(0.5, 0, 0.5, 0)
			NumberText.Size = UDim2.new(1, 0, 0.649999976, 0)
			NumberText.ZIndex = 13
			NumberText.Font = Enum.Font.Code
			NumberText.Text = (Defalut and tostring(Defalut)) or "NONE"
			NumberText.TextColor3 = Color3.fromRGB(255, 255, 255)
			NumberText.TextScaled = true
			NumberText.TextSize = 14.000
			NumberText.TextWrapped = true

			if Biohazard.ColorOnIcon then
				NumberText.TextColor3 = Biohazard.MainColor
			end

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = System
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 17, 1, 17)
			DropShadow.ZIndex = 10
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.750
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			Scroll.Name = "Scroll"
			Scroll.Parent = Dropdown
			Scroll.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
			Scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Scroll.BorderSizePixel = 0
			Scroll.ClipsDescendants = true
			Scroll.Position = UDim2.new(0.713464558, 0, 0.990451217, 0)
			Scroll.Size = UDim2.fromScale(0.285826445,0) --UDim2.new(0.285826445, 0, 3.22374511, 0)
			Scroll.Visible = false
			Scroll.ZIndex = 25

			UICorner_3.CornerRadius = UDim.new(0, 3)
			UICorner_3.Parent = Scroll

			scrolling_connect(ScrollingFrame)
			ScrollingFrame.Parent = Scroll
			ScrollingFrame.Active = true
			ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ScrollingFrame.BackgroundTransparency = 1.000
			ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ScrollingFrame.BorderSizePixel = 0
			ScrollingFrame.ClipsDescendants = false
			ScrollingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
			ScrollingFrame.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
			ScrollingFrame.ZIndex = 26
			ScrollingFrame.ScrollBarThickness = 0

			UIListLayout.Parent = ScrollingFrame
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 4)

			Scroll:GetPropertyChangedSignal('Size'):Connect(function()
				if Scroll.Size.Y.Scale <= 0.05 then
					Scroll.Visible = false
				else
					Scroll.Visible = true
				end
			end)

			local function GetButton()

				local Button = Instance.new("TextButton")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local UICorner = Instance.new("UICorner")

				Button.Name = "Button"
				Button.BackgroundColor3 = Color3.fromRGB(23, 25, 27)
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel = 0
				Button.Size = UDim2.new(1, 0, 0.5, 0)
				Button.ZIndex = 6000
				Button.Font = Enum.Font.Code
				Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				Button.TextScaled = true
				Button.TextSize = 14.000
				Button.TextWrapped = true
				Button.Active = true
				
				if Biohazard.ColorOnIcon then
					Button.TextColor3 = Biohazard.MainColor
				end

				UIAspectRatioConstraint.Parent = Button
				UIAspectRatioConstraint.AspectRatio = 4.500
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				UICorner.CornerRadius = UDim.new(0, 3)
				UICorner.Parent = Button

				return Button
			end

			local function LoadItems()
				for i,v in ipairs(ScrollingFrame:GetChildren()) do
					if v:IsA('TextButton') then
						v:Destroy()
					end
				end

				for i,v in ipairs(Info) do
					local Button = GetButton()
					Button.Text = tostring(v)
					Button.Parent = ScrollingFrame
					Button.MouseButton1Click:Connect(function()
						Create_Ripple(Button)

						Defalut = v
						NumberText.Text = (Defalut and tostring(Defalut)) or "NONE"
						if callback then
							callback(Defalut)
						end
					end)
				end
			end

			LoadItems()

			local ScrollValueBoolean = false
			local function ScrollValue(va)
				if va then
					TweenService:Create(Scroll,TweenInfo.new(0.2),{Size = UDim2.new(0.285826445, 0, WindowSelf.DropdownSize / 1.15, 0)}):Play()
				else
					TweenService:Create(Scroll,TweenInfo.new(0.2),{Size = UDim2.new(0.285826445, 0, 0, 0)}):Play()
				end
			end

			ScrollValue(ScrollValueBoolean)

			cretate_button(System).MouseButton1Click:Connect(function()
				ScrollValueBoolean = not ScrollValueBoolean
				ScrollValue(ScrollValueBoolean)
				Create_Ripple(System)
			end)

			return Signal({},{
				{
					Name = 'Text',
					Func = function(val)
						Text.Text = val
					end,
				},
				{
					Name = 'Value',
					Func = function(new)
						Defalut = new 
						NumberText.Text = (Defalut and tostring(Defalut)) or "NONE"
					end,
				},
				{
					Name = 'GetValue',
					Func = function(new)
						return Defalut
					end,
				}
			})
		end
		return TabSelf
	end
	
	function WindowSelf:ScreenGUI()
		return Biohazard
	end
	
	local dragToggle = nil
	local dragSpeed = 0.1
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(Frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	HeadFrame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)

	UserInputService.InputBegan:Connect(function(ker)
		if ker.KeyCode == WindowSelf.Keybind then
			WindowSelf.Gui = not WindowSelf.Gui
			ToggleFunctions(WindowSelf.Gui)
		end
	end)
	
	
	
	return WindowSelf
end

function Biohazard:Loader(LogoId:string,TitleString:string,Time:number)
	Time = Time or 1.5
	local Biohazard_Loader = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Effect1 = Instance.new("UIGradient")
	local EffectShadow = Instance.new("ImageLabel")
	local Effect1_2 = Instance.new("UIGradient")
	local Logo = Instance.new("ImageLabel")
	local Frame_2 = Instance.new("Frame")
	local Black = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")


	Biohazard_Loader.Name = "Biohazard_Loader"..tostring(math.random(10,1000))
	Biohazard_Loader.Parent = CoreGui
	Biohazard_Loader.ResetOnSpawn = false
	Biohazard_Loader.IgnoreGuiInset = true
	Biohazard_Loader.ResetOnSpawn = false

	Frame.Parent = Biohazard_Loader
	Frame.Active = true
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(35, 39, 42)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0.100000001, 200, 0.100000001, 150)

	UICorner.CornerRadius = UDim.new(0, 2)
	UICorner.Parent = Frame

	Effect1.Offset = Vector2.new(0, -3)
	Effect1.Rotation = 45
	Effect1.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	Effect1.Name = "Effect1"
	Effect1.Parent = Frame

	EffectShadow.Name = "EffectShadow"
	EffectShadow.Parent = Frame
	EffectShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	EffectShadow.BackgroundTransparency = 1.000
	EffectShadow.BorderSizePixel = 0
	EffectShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	EffectShadow.Size = UDim2.new(1, 47, 1, 47)
	EffectShadow.ZIndex = 0
	EffectShadow.Image = "rbxassetid://6015897843"
	EffectShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	EffectShadow.ImageTransparency = 0.500
	EffectShadow.ScaleType = Enum.ScaleType.Slice
	EffectShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	Effect1_2.Offset = Vector2.new(0, -3)
	Effect1_2.Rotation = 45
	Effect1_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	Effect1_2.Name = "Effect1"
	Effect1_2.Parent = EffectShadow

	Logo.Name = "Logo"
	Logo.Parent = Frame
	Logo.AnchorPoint = Vector2.new(0.5, 0.5)
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Logo.BorderSizePixel = 0
	Logo.Position = UDim2.new(0.5, 0, 0.295, 0)
	Logo.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
	Logo.SizeConstraint = Enum.SizeConstraint.RelativeYY
	Logo.ZIndex = 5
	Logo.Image = LogoId or "rbxassetid://16435139396"
	Logo.ImageTransparency = 1

	Frame_2.Parent = Frame
	Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_2.BackgroundColor3 = Biohazard.MainColor
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.497768223, 0, 0.577289701, 0)
	Frame_2.Size = UDim2.new(0.949999988, 0, 0.00249999994, 0)
	Frame_2.ZIndex = 2
	Frame_2.BackgroundTransparency = 1

	Black.Name = "Black"
	Black.Parent = Frame_2
	Black.AnchorPoint = Vector2.new(0.5, 0.5)
	Black.BackgroundColor3 = Color3.fromRGB(23, 25, 27)
	Black.BackgroundTransparency = 0.900
	Black.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Black.BorderSizePixel = 0
	Black.Position = UDim2.new(0.5, 0, 0.5, 0)
	Black.Size = UDim2.new(1, 3, 1, 3)

	UICorner_2.CornerRadius = UDim.new(0, 2)
	UICorner_2.Parent = Black

	Title.Name = "Title"
	Title.Parent = Frame
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.499401599, 0, 0.670551062, 0)
	Title.Size = UDim2.new(0.929254532, 0, 0.0911022052, 0)
	Title.ZIndex = 3
	Title.Font = Enum.Font.Code
	Title.Text = TitleString or "Biohazard"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextTransparency = 1

	if Biohazard.ColorOnIcon then
		Title.TextColor3 = Biohazard.MainColor
	end

	TweenService:Create(Effect1,TweenInfo.new(1),{Offset = Vector2.new(0, 3)}):Play()
	TweenService:Create(Effect1_2,TweenInfo.new(1),{Offset = Vector2.new(0, 3)}):Play()
	TweenService:Create(Logo,TweenInfo.new(1.5),{ImageTransparency = 0}):Play()
	TweenService:Create(Frame_2,TweenInfo.new(1.6),{BackgroundTransparency = 0}):Play()
	TweenService:Create(Black,TweenInfo.new(1.7),{BackgroundTransparency = 0.9}):Play()
	TweenService:Create(Title,TweenInfo.new(1.8),{TextTransparency = 0}):Play()

	task.wait(2 + Time)

	TweenService:Create(Effect1,TweenInfo.new(2),{Offset = Vector2.new(0, -3)}):Play()
	TweenService:Create(Effect1_2,TweenInfo.new(2),{Offset = Vector2.new(0, -3)}):Play()
	TweenService:Create(Logo,TweenInfo.new(1.75),{ImageTransparency = 1}):Play()
	TweenService:Create(Frame_2,TweenInfo.new(1.5),{BackgroundTransparency = 1}):Play()
	TweenService:Create(Black,TweenInfo.new(1.5),{BackgroundTransparency = 1}):Play()
	TweenService:Create(Title,TweenInfo.new(1.7),{TextTransparency = 1}):Play()

	task.wait(2 + Time / 2)

	Biohazard_Loader:Destroy()
end

function Biohazard:Notification()
	local ScreenGui = Instance.new("ScreenGui")
	local Notify = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")

	ScreenGui.Parent = CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.IgnoreGuiInset = false
	ScreenGui.ResetOnSpawn = false

	Notify.Name = "Notify"
	Notify.Parent = ScreenGui
	Notify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Notify.BackgroundTransparency = 1.000
	Notify.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Notify.BorderSizePixel = 0
	Notify.Position = UDim2.new(0.00775709189, 0, 0.0173370857, 0)
	Notify.Size = UDim2.new(0.300000042, 0, 0.629403591, 0)

	UIListLayout.Parent = Notify
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 3)

	return Signal({},{
		{
			Name = 'new',
			Func = function(TextString:string,Time:number)
				task.spawn(function()
					Time = Time or 3

					local Notification = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local MainColorFrame = Instance.new("Frame")
					local UICorner_2 = Instance.new("UICorner")
					local Text = Instance.new("TextLabel")

					Notification.Name = "Notification"
					Notification.Parent = Notify
					Notification.BackgroundColor3 = Color3.fromRGB(35, 39, 42)
					Notification.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Notification.BorderSizePixel = 0
					Notification.ClipsDescendants = true
					Notification.Size = UDim2.new(0, 0, 0.0700000003, 0)
					Notification.ZIndex = 2
					Notification.BackgroundTransparency = 0

					UICorner.CornerRadius = UDim.new(0, 3)
					UICorner.Parent = Notification

					MainColorFrame.Name = "MainColorFrame"
					MainColorFrame.Parent = Notification
					MainColorFrame.AnchorPoint = Vector2.new(0, 1)
					MainColorFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
					MainColorFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					MainColorFrame.BorderSizePixel = 0
					MainColorFrame.Position = UDim2.new(0, 0, 1, 0)
					MainColorFrame.Size = UDim2.new(1, 0, 0, 2)
					MainColorFrame.BackgroundTransparency = 1

					UICorner_2.CornerRadius = UDim.new(0, 3)
					UICorner_2.Parent = MainColorFrame

					Text.Name = "Text"
					Text.Parent = Notification
					Text.AnchorPoint = Vector2.new(0.5, 0)
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Text.BorderSizePixel = 0
					Text.Position = UDim2.new(0.5, 0, 0.118000001, 0)
					Text.Size = UDim2.new(0.949999988, 0, 0.699999988, 0)
					Text.ZIndex = 4
					Text.Font = Enum.Font.Code
					Text.Text = TextString or "Notification"
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextScaled = true
					Text.TextSize = 14.000
					Text.TextWrapped = true
					Text.TextXAlignment = Enum.TextXAlignment.Left
					Text.TextTransparency = 1

					TweenService:Create(Text,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
						TextTransparency = 0
					}):Play()

					TweenService:Create(MainColorFrame,TweenInfo.new(0.4),{
						BackgroundTransparency = 0
					}):Play()


					local TextSize = TextService:GetTextSize(Text.Text,Text.TextSize / 1.5,Text.Font,Vector2.new(math.huge,math.huge))

					TweenService:Create(Notification,TweenInfo.new(0.35,Enum.EasingStyle.Back),{
						BackgroundTransparency = 0,
						Size = UDim2.new(0,TextSize.X + 21,0.07,0)
					}):Play()

					task.wait(Time + 1.2)

					TweenService:Create(Notification,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{
						BackgroundTransparency = 1,
						Size = UDim2.new(0,0,0.07,0)
					}):Play()

					TweenService:Create(MainColorFrame,TweenInfo.new(0.4),{
						BackgroundTransparency = 1
					}):Play()

					TweenService:Create(Text,TweenInfo.new(0.1256),{
						TextTransparency = 1
					}):Play()

					task.wait(0.5)

					TweenService:Create(Notification,TweenInfo.new(0.4),{
						BackgroundTransparency = 1,
						Size = UDim2.new(0,0,-0.01,0)
					}):Play()

					task.wait(0.4)
					Notification:Destroy()
				end)
			end,
		}
	})
end

return Biohazard
