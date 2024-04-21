return function(Title,Key,callback)
	local defalut = false
	local statsc = {}
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local UIGradient = Instance.new("UIGradient")
	local Button = Instance.new("TextButton")
	local Toggle = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local Keybind = Instance.new("TextLabel")

	ScreenGui.Parent = game:FindFirstChild('CoreGui') or game.Players.LocalPlayer.PlayerGui
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	
	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.364391148, 0, 0.328320801, 0)
	Frame.Size = UDim2.new(0.100000001, 50, 0.100000001, 15)
	Frame.Active = true
	
	UICorner.CornerRadius = UDim.new(0, 3)
	UICorner.Parent = Frame

	UIStroke.Color = Color3.fromRGB(255, 255, 255)
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Parent = Frame

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.49, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient.Rotation = -56
	UIGradient.Parent = UIStroke

	Button.Name = "Button"
	Button.Parent = Frame
	Button.AnchorPoint = Vector2.new(0.5, 0.5)
	Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundTransparency = 1.000
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.5, 0, 0.5, 0)
	Button.Size = UDim2.new(0.899999976, 0, 0.400000006, 0)
	Button.ZIndex = 2
	Button.Font = Enum.Font.GothamBold
	Button.Text = Title
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.TextScaled = true
	Button.TextSize = 14.000
	Button.TextWrapped = true

	Toggle.Name = "Toggle"
	Toggle.Parent = Frame
	Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
	Toggle.BackgroundColor3 = Color3.fromRGB(115, 0, 2)
	Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(0.5, 0, 0.850000024, 0)
	Toggle.Size = UDim2.new(0.800000012, 0, 0.100000001, 0)

	UICorner_2.CornerRadius = UDim.new(0, 2)
	UICorner_2.Parent = Toggle

	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_2.Parent = Toggle

	Keybind.Name = "Keybind"
	Keybind.Parent = Frame
	Keybind.AnchorPoint = Vector2.new(0.5, 0.5)
	Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Keybind.BackgroundTransparency = 1.000
	Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Keybind.BorderSizePixel = 0
	Keybind.Position = UDim2.new(0.5, 0, 0.100000001, 0)
	Keybind.Size = UDim2.new(0.899999976, 0, 0.100000001, 0)
	Keybind.Font = Enum.Font.SourceSans
	Keybind.Text = "Bind: "..tostring(Key.Name)
	Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
	Keybind.TextScaled = true
	Keybind.TextSize = 14.000
	Keybind.TextTransparency = 0.300
	Keybind.TextWrapped = true
	
	local function effect(val)
		if val then
			game:GetService('TweenService'):Create(Toggle,TweenInfo.new(0.1),{
				BackgroundColor3 = Color3.fromRGB(46, 197, 0)
			}):Play()
			
			game:GetService('TweenService'):Create(UIGradient,TweenInfo.new(0.3,Enum.EasingStyle.Back),{
				Rotation = 56
			}):Play()
		else
			game:GetService('TweenService'):Create(Toggle,TweenInfo.new(0.1),{
				BackgroundColor3 = Color3.fromRGB(115, 0, 2)
			}):Play()

			game:GetService('TweenService'):Create(UIGradient,TweenInfo.new(0.3,Enum.EasingStyle.Back),{
				Rotation = -56
			}):Play()
		end
	end
	
	effect(defalut)
	
	Button.MouseButton1Click:Connect(function()
		if not ScreenGui.Enabled  then
			return
		end
		defalut = not defalut
		effect(defalut)
		callback(defalut)
	end)
	
	function statsc:Set(v)
		ScreenGui.Enabled = v
	end
	
	function statsc:Value(v)
		defalut = v
		effect(defalut)
		callback(defalut)
	end
	
	local UIS = game:GetService('UserInputService')
	local frame = Frame
	local dragToggle = nil
	local dragSpeed = 0.1
	local dragStart = nil
	local startPos = nil
	
	UIS.InputBegan:Connect(function(k)
		if k.KeyCode == Key then
			if not ScreenGui.Enabled  then
				return
			end
			
			defalut = not defalut
			effect(defalut)
			callback(defalut)
		end
	end)
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
	return statsc
end
