return function()
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local UICorner = Instance.new("UICorner")
	local DropShadow = Instance.new("ImageLabel")
	local Title = Instance.new("TextLabel")
	local Frame_2 = Instance.new("Frame")
	local Enter = Instance.new("TextBox")
	local UICorner_2 = Instance.new("UICorner")
	local DropShadow_2 = Instance.new("ImageLabel")
	local GetKey = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local DropShadow_3 = Instance.new("ImageLabel")
	local CheckKey = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local DropShadow_4 = Instance.new("ImageLabel")
	local JoinDiscord = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local DropShadow_5 = Instance.new("ImageLabel")
	local Frame_3 = Instance.new("Frame")
	local UIGradient_2 = Instance.new("UIGradient")
	local UICorner_6 = Instance.new("UICorner")
	local Title_2 = Instance.new("TextLabel")
	local Frame_4 = Instance.new("Frame")
	local description = Instance.new("TextLabel")

	ScreenGui.Parent = game:FindFirstChild('CoreGui') game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

	Frame.Parent = ScreenGui
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0.100000001, 200, 0.100000001, 150)
	Frame.ZIndex = 3

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(21, 21, 21)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(44, 44, 44))}
	UIGradient.Rotation = -40
	UIGradient.Parent = Frame

	UICorner.Parent = Frame

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Frame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	Title.Name = "Title"
	Title.Parent = Frame
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.5, 0, 0.0949999988, 0)
	Title.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
	Title.ZIndex = 4
	Title.Font = Enum.Font.GothamBold
	Title.Text = "Key System"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	Frame_2.Parent = Title
	Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_2.BackgroundTransparency = 0.500
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.5, 0, 1.25, 0)
	Frame_2.Size = UDim2.new(0.800000012, 0, 0.0500000007, 0)
	Frame_2.ZIndex = 5

	Enter.Name = "Enter"
	Enter.Parent = Frame
	Enter.AnchorPoint = Vector2.new(0.5, 0.5)
	Enter.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
	Enter.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Enter.BorderSizePixel = 0
	Enter.Position = UDim2.new(0.5, 0, 0.349999994, 0)
	Enter.Size = UDim2.new(0.850000024, 0, 0.100000001, 0)
	Enter.ZIndex = 5
	Enter.ClearTextOnFocus = false
	Enter.Font = Enum.Font.GothamBold
	Enter.PlaceholderText = "Enter Key"
	Enter.Text = ""
	Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
	Enter.TextSize = 14.000
	Enter.TextTransparency = 0.100
	Enter.TextWrapped = true

	UICorner_2.CornerRadius = UDim.new(0, 3)
	UICorner_2.Parent = Enter

	DropShadow_2.Name = "DropShadow"
	DropShadow_2.Parent = Enter
	DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow_2.BackgroundTransparency = 1.000
	DropShadow_2.BorderSizePixel = 0
	DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow_2.Size = UDim2.new(1, 30, 1, 30)
	DropShadow_2.ZIndex = 4
	DropShadow_2.Image = "rbxassetid://6015897843"
	DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow_2.ImageTransparency = 0.750
	DropShadow_2.ScaleType = Enum.ScaleType.Slice
	DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)

	GetKey.Name = "GetKey"
	GetKey.Parent = Frame
	GetKey.AnchorPoint = Vector2.new(0.5, 0.5)
	GetKey.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	GetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetKey.BorderSizePixel = 0
	GetKey.Position = UDim2.new(0.5, 0, 0.649999976, 0)
	GetKey.Size = UDim2.new(0.400000006, 0, 0.100000001, 0)
	GetKey.ZIndex = 5
	GetKey.Font = Enum.Font.GothamBold
	GetKey.Text = "GET KEY"
	GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	GetKey.TextScaled = true
	GetKey.TextSize = 14.000
	GetKey.TextTransparency = 0.600
	GetKey.TextWrapped = true

	UICorner_3.CornerRadius = UDim.new(0, 3)
	UICorner_3.Parent = GetKey

	DropShadow_3.Name = "DropShadow"
	DropShadow_3.Parent = GetKey
	DropShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow_3.BackgroundTransparency = 1.000
	DropShadow_3.BorderSizePixel = 0
	DropShadow_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow_3.Size = UDim2.new(1, 30, 1, 30)
	DropShadow_3.ZIndex = 4
	DropShadow_3.Image = "rbxassetid://6015897843"
	DropShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow_3.ImageTransparency = 0.750
	DropShadow_3.ScaleType = Enum.ScaleType.Slice
	DropShadow_3.SliceCenter = Rect.new(49, 49, 450, 450)

	CheckKey.Name = "CheckKey"
	CheckKey.Parent = Frame
	CheckKey.AnchorPoint = Vector2.new(0.5, 0.5)
	CheckKey.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	CheckKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CheckKey.BorderSizePixel = 0
	CheckKey.Position = UDim2.new(0.5, 0, 0.5, 0)
	CheckKey.Size = UDim2.new(0.400000006, 0, 0.100000001, 0)
	CheckKey.ZIndex = 5
	CheckKey.Font = Enum.Font.GothamBold
	CheckKey.Text = "VERIFY"
	CheckKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	CheckKey.TextScaled = true
	CheckKey.TextSize = 14.000
	CheckKey.TextTransparency = 0.600
	CheckKey.TextWrapped = true

	UICorner_4.CornerRadius = UDim.new(0, 3)
	UICorner_4.Parent = CheckKey

	DropShadow_4.Name = "DropShadow"
	DropShadow_4.Parent = CheckKey
	DropShadow_4.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow_4.BackgroundTransparency = 1.000
	DropShadow_4.BorderSizePixel = 0
	DropShadow_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow_4.Size = UDim2.new(1, 30, 1, 30)
	DropShadow_4.ZIndex = 4
	DropShadow_4.Image = "rbxassetid://6015897843"
	DropShadow_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow_4.ImageTransparency = 0.750
	DropShadow_4.ScaleType = Enum.ScaleType.Slice
	DropShadow_4.SliceCenter = Rect.new(49, 49, 450, 450)

	JoinDiscord.Name = "JoinDiscord"
	JoinDiscord.Parent = Frame
	JoinDiscord.AnchorPoint = Vector2.new(0.5, 0.5)
	JoinDiscord.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	JoinDiscord.BorderColor3 = Color3.fromRGB(0, 0, 0)
	JoinDiscord.BorderSizePixel = 0
	JoinDiscord.Position = UDim2.new(0.5, 0, 0.800000012, 0)
	JoinDiscord.Size = UDim2.new(0.400000006, 0, 0.100000001, 0)
	JoinDiscord.ZIndex = 5
	JoinDiscord.Font = Enum.Font.GothamBold
	JoinDiscord.Text = "DISCORD"
	JoinDiscord.TextColor3 = Color3.fromRGB(255, 255, 255)
	JoinDiscord.TextScaled = true
	JoinDiscord.TextSize = 14.000
	JoinDiscord.TextTransparency = 0.600
	JoinDiscord.TextWrapped = true

	UICorner_5.CornerRadius = UDim.new(0, 3)
	UICorner_5.Parent = JoinDiscord

	DropShadow_5.Name = "DropShadow"
	DropShadow_5.Parent = JoinDiscord
	DropShadow_5.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow_5.BackgroundTransparency = 1.000
	DropShadow_5.BorderSizePixel = 0
	DropShadow_5.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow_5.Size = UDim2.new(1, 30, 1, 30)
	DropShadow_5.ZIndex = 4
	DropShadow_5.Image = "rbxassetid://6015897843"
	DropShadow_5.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow_5.ImageTransparency = 0.750
	DropShadow_5.ScaleType = Enum.ScaleType.Slice
	DropShadow_5.SliceCenter = Rect.new(49, 49, 450, 450)

	Frame_3.Parent = Frame
	Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(1.32307696, 0, 0.500000119, 0)
	Frame_3.Size = UDim2.new(-0.0538461544, 200, 0.347258419, 150)
	Frame_3.ZIndex = 3

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(21, 21, 21)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(44, 44, 44))}
	UIGradient_2.Rotation = -40
	UIGradient_2.Parent = Frame_3

	UICorner_6.Parent = Frame_3

	Title_2.Name = "Title"
	Title_2.Parent = Frame_3
	Title_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.BackgroundTransparency = 1.000
	Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_2.BorderSizePixel = 0
	Title_2.Position = UDim2.new(0.5, 0, 0.0949999988, 0)
	Title_2.Size = UDim2.new(0.899999976, 0, 0.100000001, 0)
	Title_2.ZIndex = 4
	Title_2.Font = Enum.Font.GothamBold
	Title_2.Text = "Read"
	Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.TextScaled = true
	Title_2.TextSize = 14.000
	Title_2.TextWrapped = true
	Title_2.TextXAlignment = Enum.TextXAlignment.Left

	Frame_4.Parent = Title_2
	Frame_4.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_4.BackgroundTransparency = 0.500
	Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_4.BorderSizePixel = 0
	Frame_4.Position = UDim2.new(0.5, 0, 1.25, 0)
	Frame_4.Size = UDim2.new(1, 0, 0.0500000007, 0)
	Frame_4.ZIndex = 5

	description.Name = "description"
	description.Parent = Frame_3
	description.AnchorPoint = Vector2.new(0.5, 0.5)
	description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	description.BackgroundTransparency = 1.000
	description.BorderColor3 = Color3.fromRGB(0, 0, 0)
	description.BorderSizePixel = 0
	description.Position = UDim2.new(0.5, 0, 0.449999899, 0)
	description.Size = UDim2.new(0.899999976, 0, 0.500000119, 0)
	description.ZIndex = 4
	description.Font = Enum.Font.GothamBold
	description.Text = "1. DO NOT DOWNLOAD ANYTHING WHEN YOU ARE GETTING A KEY\n\n2. if it say \"Failed to elapse required time, session invalidated!. Please Refresh this Page to go back to main Checkpoint\" refresh page\n\n3. sometime Checking Key not working (you can click check key again to fix)"
	description.TextColor3 = Color3.fromRGB(255, 255, 255)
	description.TextScaled = true
	description.TextSize = 14.000
	description.TextWrapped = true
	description.TextXAlignment = Enum.TextXAlignment.Left

	return ScreenGui,CheckKey,GetKey,Enter
end
