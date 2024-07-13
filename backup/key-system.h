gethui = gethui or function()
	return game:FindFirstChild('CoreGui') or game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

local Destroy = game.Destroy
local TweenService = game:GetService('TweenService')

return function(Title,Powered)
	local KeySystem = {
		ActivateStatus = nil,
		Request = false
	}

	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Frame_2 = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local DropShadow = Instance.new("ImageLabel")
	local HubTitle = Instance.new("TextLabel")
	local Frame_3 = Instance.new("Frame")
	local UIGradient_2 = Instance.new("UIGradient")
	local Enter = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadow_2 = Instance.new("ImageLabel")
	local TextBox = Instance.new("TextBox")
	local Frame_4 = Instance.new("Frame")
	local UIGradient_3 = Instance.new("UIGradient")
	local GetKey = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local DropShadow_3 = Instance.new("ImageLabel")
	local Button = Instance.new("TextButton")
	local Activate = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local DropShadow_4 = Instance.new("ImageLabel")
	local Button_2 = Instance.new("TextButton")
	local CR = Instance.new("TextLabel")
	local Load = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local LoadUI = Instance.new("UIGradient")

	ScreenGui.Parent = gethui()
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

	Frame.Parent = ScreenGui
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0.100000001, 240, 0.100000001, 140)
	Frame.BackgroundTransparency = 1
	TweenService:Create(Frame,TweenInfo.new(0.2),{Size = UDim2.new(0.100000001, 250, 0.100000001, 150),BackgroundTransparency = 0}):Play()
	
	local GUICorner = Instance.new("UICorner",Frame)
	GUICorner.CornerRadius = UDim.new(0.5,0)
	TweenService:Create(GUICorner,TweenInfo.new(1,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{CornerRadius = UDim.new(0,3)}):Play()
	
	Frame_2.Parent = Frame
	Frame_2.AnchorPoint = Vector2.new(0, 1)
	Frame_2.BackgroundColor3 = Color3.fromRGB(0, 122, 204)
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0, 0, 1, 0)
	Frame_2.Size = UDim2.new(1, 0, 0.0500000007, 0)
	Frame_2.ZIndex = 2
	Frame_2.BackgroundTransparency = 1

	TweenService:Create(Frame_2,TweenInfo.new(0.35),{BackgroundTransparency = 0}):Play()
	UIGradient.Rotation = 90
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.89, 1.00), NumberSequenceKeypoint.new(0.9, 0.00), NumberSequenceKeypoint.new(1.00, 0.00)}
	UIGradient.Parent = Frame_2

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Frame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6014261993"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	TweenService:Create(DropShadow,TweenInfo.new(0.5),{ImageTransparency = 0.5}):Play()

	HubTitle.Name = "HubTitle"
	HubTitle.Parent = Frame
	HubTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HubTitle.BackgroundTransparency = 1.000
	HubTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HubTitle.BorderSizePixel = 0
	HubTitle.Position = UDim2.new(0.0274649821, 0, 0.0304612704, 0)
	HubTitle.Size = UDim2.new(0.619719863, 0, 0.0695387498, 0)
	HubTitle.Font = Enum.Font.GothamBold
	HubTitle.Text = Title or "BEDOL HUB"
	HubTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	HubTitle.TextScaled = true
	HubTitle.TextSize = 14.000
	HubTitle.TextWrapped = true
	HubTitle.TextXAlignment = Enum.TextXAlignment.Left
	HubTitle.TextTransparency = 1

	TweenService:Create(HubTitle,TweenInfo.new(0.4),{TextTransparency = 0}):Play()

	Frame_3.Parent = Frame
	Frame_3.AnchorPoint = Vector2.new(0.5, 1)
	Frame_3.BackgroundColor3 = Color3.fromRGB(0, 122, 204)
	Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(0.5, 0, 0.147, 0)
	Frame_3.Size = UDim2.new(1, 0, 0.0500000007, 0)
	Frame_3.ZIndex = 2
	Frame_3.BackgroundTransparency = 1

	TweenService:Create(Frame_3,TweenInfo.new(0.35),{BackgroundTransparency = 0}):Play()
	UIGradient_2.Rotation = 90
	UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.41, 1.00), NumberSequenceKeypoint.new(0.415, 0.00), NumberSequenceKeypoint.new(0.55, 0.00), NumberSequenceKeypoint.new(0.56, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_2.Parent = Frame_3

	Enter.Name = "Enter"
	Enter.Parent = Frame
	Enter.AnchorPoint = Vector2.new(0.5, 0.5)
	Enter.BackgroundColor3 = Color3.fromRGB(45, 45, 48)
	Enter.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Enter.BorderSizePixel = 0
	Enter.Position = UDim2.new(0.5, 0, 0.284999996, 0)
	Enter.Size = UDim2.new(0.800000012, 0, 0.109999999, 0)
	Enter.ZIndex = 3

	UICorner.CornerRadius = UDim.new(0, 2)
	UICorner.Parent = Enter

	DropShadow_2.Name = "DropShadow"
	DropShadow_2.Parent = Enter
	DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow_2.BackgroundColor3 = Color3.fromRGB(0, 122, 204)
	DropShadow_2.BackgroundTransparency = 1.000
	DropShadow_2.BorderSizePixel = 0
	DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow_2.Size = UDim2.new(1, 34, 1, 34)
	DropShadow_2.ZIndex = 2
	DropShadow_2.Image = "rbxassetid://6014261993"
	DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow_2.ImageTransparency = 0.500
	DropShadow_2.ScaleType = Enum.ScaleType.Slice
	DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)
	DropShadow_2.ImageTransparency = 1

	TweenService:Create(DropShadow_2,TweenInfo.new(0.5),{ImageTransparency = 0.5}):Play()

	TextBox.Parent = Enter
	TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextBox.Size = UDim2.new(0.949999988, 0, 0.699999988, 0)
	TextBox.ZIndex = 4
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.SourceSansBold
	TextBox.PlaceholderColor3 = Color3.fromRGB(62, 62, 66)
	TextBox.PlaceholderText = "Enter"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true
	TextBox.TextTransparency = 1

	TweenService:Create(TextBox,TweenInfo.new(0.4),{TextTransparency = 0.120}):Play()

	TextBox.FocusLost:Connect(function()
		TweenService:Create(DropShadow_2,TweenInfo.new(0.1),{
			ImageColor3 = Color3.fromRGB(0, 0, 0)
		}):Play()
	end)

	TextBox.Focused:Connect(function()
		TweenService:Create(DropShadow_2,TweenInfo.new(0.1),{
			ImageColor3 = Color3.fromRGB(0, 153, 255)
		}):Play()
	end)

	Frame_4.Parent = Enter
	Frame_4.BackgroundColor3 = Color3.fromRGB(0, 122, 204)
	Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_4.BorderSizePixel = 0
	Frame_4.Size = UDim2.new(0.0500000007, 0, 1, 0)
	Frame_4.ZIndex = 6
	Frame_4.BackgroundTransparency = 1
	TweenService:Create(Frame_4,TweenInfo.new(0.35),{BackgroundTransparency = 0}):Play()

	UIGradient_3.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.18, 0.00), NumberSequenceKeypoint.new(0.19, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_3.Parent = Frame_4

	GetKey.Name = "GetKey"
	GetKey.Parent = Frame
	GetKey.AnchorPoint = Vector2.new(0.5, 0.5)
	GetKey.BackgroundColor3 = Color3.fromRGB(37, 37, 38)
	GetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetKey.BorderSizePixel = 0
	GetKey.Position = UDim2.new(0.25, 0, 0.600000024, 0)
	GetKey.Size = UDim2.new(0.300000012, 0, 0.125, 0)
	GetKey.ZIndex = 4

	UICorner_2.CornerRadius = UDim.new(0, 2)
	UICorner_2.Parent = GetKey

	DropShadow_3.Name = "DropShadow"
	DropShadow_3.Parent = GetKey
	DropShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow_3.BackgroundColor3 = Color3.fromRGB(0, 122, 204)
	DropShadow_3.BackgroundTransparency = 1.000
	DropShadow_3.BorderSizePixel = 0
	DropShadow_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow_3.Size = UDim2.new(1, 34, 1, 34)
	DropShadow_3.ZIndex = 2
	DropShadow_3.Image = "rbxassetid://6014261993"
	DropShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow_3.ImageTransparency = 0.500
	DropShadow_3.ScaleType = Enum.ScaleType.Slice
	DropShadow_3.SliceCenter = Rect.new(49, 49, 450, 450)
	DropShadow_3.ImageTransparency = 1
	TweenService:Create(DropShadow_3,TweenInfo.new(0.5),{ImageTransparency = 0.5}):Play()

	Button.Name = "Button"
	Button.Parent = GetKey
	Button.AnchorPoint = Vector2.new(0.5, 0.5)
	Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundTransparency = 1.000
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.5, 0, 0.5, 0)
	Button.Size = UDim2.new(0.899999976, 0, 0.550000012, 0)
	Button.ZIndex = 6
	Button.Font = Enum.Font.GothamBold
	Button.Text = "GET KEY"
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.TextScaled = true
	Button.TextSize = 14.000
	Button.TextWrapped = true
	Button.TextTransparency = 1

	TweenService:Create(Button,TweenInfo.new(0.4),{TextTransparency = 0}):Play()

	Button.MouseButton1Down:Connect(function()
		TweenService:Create(DropShadow_3,TweenInfo.new(0.2),{
			ImageColor3 = Color3.fromRGB(0, 153, 255)
		}):Play()
	end)

	Button.MouseButton1Up:Connect(function()
		TweenService:Create(DropShadow_3,TweenInfo.new(0.2),{
			ImageColor3 = Color3.fromRGB(0,0,0)
		}):Play()
	end)

	Activate.Name = "Activate"
	Activate.Parent = Frame
	Activate.AnchorPoint = Vector2.new(0.5, 0.5)
	Activate.BackgroundColor3 = Color3.fromRGB(37, 37, 38)
	Activate.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Activate.BorderSizePixel = 0
	Activate.Position = UDim2.new(0.75, 0, 0.600000024, 0)
	Activate.Size = UDim2.new(0.300000012, 0, 0.125, 0)
	Activate.ZIndex = 4

	UICorner_3.CornerRadius = UDim.new(0, 2)
	UICorner_3.Parent = Activate

	DropShadow_4.Name = "DropShadow"
	DropShadow_4.Parent = Activate
	DropShadow_4.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow_4.BackgroundColor3 = Color3.fromRGB(0, 122, 204)
	DropShadow_4.BackgroundTransparency = 1.000
	DropShadow_4.BorderSizePixel = 0
	DropShadow_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow_4.Size = UDim2.new(1, 34, 1, 34)
	DropShadow_4.ZIndex = 2
	DropShadow_4.Image = "rbxassetid://6014261993"
	DropShadow_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow_4.ImageTransparency = 0.500
	DropShadow_4.ScaleType = Enum.ScaleType.Slice
	DropShadow_4.SliceCenter = Rect.new(49, 49, 450, 450)
	DropShadow_4.ImageTransparency = 1

	TweenService:Create(DropShadow_4,TweenInfo.new(0.5),{ImageTransparency = 0.5}):Play()

	Button_2.Name = "Button"
	Button_2.Parent = Activate
	Button_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button_2.BackgroundTransparency = 1.000
	Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button_2.BorderSizePixel = 0
	Button_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Button_2.Size = UDim2.new(0.899999976, 0, 0.550000012, 0)
	Button_2.ZIndex = 6
	Button_2.Font = Enum.Font.GothamBold
	Button_2.Text = "ACTIVATE"
	Button_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button_2.TextScaled = true
	Button_2.TextSize = 14.000
	Button_2.TextWrapped = true
	Button_2.TextTransparency = 1

	TweenService:Create(Button_2,TweenInfo.new(0.4),{TextTransparency = 0}):Play()


	Button_2.MouseButton1Down:Connect(function()
		TweenService:Create(DropShadow_4,TweenInfo.new(0.2),{
			ImageColor3 = Color3.fromRGB(0, 153, 255)
		}):Play()
	end)

	Button_2.MouseButton1Up:Connect(function()
		TweenService:Create(DropShadow_4,TweenInfo.new(0.2),{
			ImageColor3 = Color3.fromRGB(0,0,0)
		}):Play()
	end)

	CR.Name = "CR"
	CR.Parent = Frame
	CR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CR.BackgroundTransparency = 1.000
	CR.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CR.BorderSizePixel = 0
	CR.Position = UDim2.new(0.0270000007, 0, 0.949999988, 0)
	CR.Size = UDim2.new(0.619719863, 0, 0.0390774943, 0)
	CR.Font = Enum.Font.GothamBold
	CR.Text = Powered or "Powered By PandaAuth"
	CR.TextColor3 = Color3.fromRGB(255, 255, 255)
	CR.TextScaled = true
	CR.TextSize = 14.000
	CR.TextTransparency = 0.500
	CR.TextWrapped = true
	CR.TextXAlignment = Enum.TextXAlignment.Left
	CR.TextTransparency = 1

	TweenService:Create(CR,TweenInfo.new(0.4),{TextTransparency = 0.5}):Play()

	Load.Name = "Load"
	Load.Parent = Frame
	Load.AnchorPoint = Vector2.new(0.5, 0.5)
	Load.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Load.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Load.BorderSizePixel = 0
	Load.Position = UDim2.new(0.5, 0, 0.435000002, 0)
	Load.Size = UDim2.new(0.800000012, 0, 0.100000001, 0)

	UICorner_4.CornerRadius = UDim.new(0, 2)
	UICorner_4.Parent = Load

	LoadUI.Offset = Vector2.new(-0.699999988, 0)
	LoadUI.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.40, 1.00), NumberSequenceKeypoint.new(0.41, 0.00), NumberSequenceKeypoint.new(0.60, 0.00), NumberSequenceKeypoint.new(0.61, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	LoadUI.Name = "LoadUI"
	LoadUI.Parent = Load

	local function HideUI(speed)

		for i,v in ipairs(ScreenGui:GetDescendants()) do task.wait()
			pcall(function()
				TweenService:Create(v,TweenInfo.new(speed),{
					TextTransparency = 1,
					BackgroundTransparency = 1,
					TextStrokeTransparency = 1
				}):Play()
			end)

			pcall(function()
				TweenService:Create(v,TweenInfo.new(speed),{
					BackgroundTransparency = 1,
					ImageTransparency = 1
				}):Play()
			end)

			pcall(function()
				TweenService:Create(v,TweenInfo.new(speed),{
					BackgroundTransparency = 1,
					ImageTransparency = 1
				}):Play()
			end)

			pcall(function()
				TweenService:Create(v,TweenInfo.new(speed),{
					BackgroundTransparency = 1,
				}):Play()
			end)
		end
		
		TweenService:Create(GUICorner,TweenInfo.new(1,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{CornerRadius = UDim.new(0.5,0)}):Play()
	end

	function KeySystem:GetKey(func)
		Button.MouseButton1Click:Connect(func)
	end

	function KeySystem:Delete()
		TweenService:Create(Frame,TweenInfo.new(0.255),{Size = UDim2.new(0.100000001, 230, 0.100000001, 130)}):Play()
		
		HideUI(0.25)

		task.delay(1.5,function()
			Destroy(ScreenGui)
		end)
	end


	function KeySystem:Activate(func)
		Button_2.MouseButton1Click:Connect(function()
			if KeySystem.Request then
				return
			else
				KeySystem.Request = true
			end


			if func(TextBox.Text) then

				KeySystem.Request = false

				task.cancel(KeySystem.Task)

				KeySystem:Delete()
				return true
			end

			TextBox.Text = ''

			KeySystem.Request = false
		end)
	end

	KeySystem.Task = task.spawn(function()
		local LoopedTask = tick()
		local loadtime = 1

		while true do task.wait()
			if KeySystem.Request then
				if tick() > LoopedTask then
					LoopedTask = tick() + loadtime
					LoadUI.Offset = Vector2.new(-0.699999988, 0)

					TweenService:Create(LoadUI,TweenInfo.new(loadtime,Enum.EasingStyle.Linear),{
						Offset = Vector2.new(0.6, 0)
					}):Play()
				end
			else
				TweenService:Create(LoadUI,TweenInfo.new(0.1),{
					Offset = Vector2.new(-0.699999988, 0)
				}):Play()
			end
		end
	end)

	return KeySystem
end
