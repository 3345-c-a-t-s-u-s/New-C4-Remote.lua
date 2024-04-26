gethui = gethui or function()
	return game:FindFirstChild('CoreGui') or game.Players.LocalPlayer:WaitForChild("PlayerGui")
end
local TweenService = game:GetService('TweenService')

return function(Title,Powered)
	local tback = {
		ActivateStatus = nil
	}
	local IsActivate = false
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadow = Instance.new("ImageLabel")
	local Right = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local Left = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIGradient_2 = Instance.new("UIGradient")
	local Top = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local UIGradient_3 = Instance.new("UIGradient")
	local Bottom = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local UIGradient_4 = Instance.new("UIGradient")
	local UIGradient_5 = Instance.new("UIGradient")
	local ImageLabel = Instance.new("ImageLabel")
	local ScriptHub = Instance.new("TextLabel")
	local ScriptHub_2 = Instance.new("TextLabel")
	local EnterKey = Instance.new("TextBox")
	local UICorner_6 = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local UIGradient_6 = Instance.new("UIGradient")
	local Activate = Instance.new("TextButton")
	local UICorner_7 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local UIGradient_7 = Instance.new("UIGradient")
	local GetKey = Instance.new("TextButton")
	local UICorner_8 = Instance.new("UICorner")
	local UIStroke_3 = Instance.new("UIStroke")
	local UIGradient_8 = Instance.new("UIGradient")
	local Loader = Instance.new("Frame")
	local Log1 = Instance.new("Frame")
	local UICorner_9 = Instance.new("UICorner")
	local UIListLayout = Instance.new("UIListLayout")
	local Log2 = Instance.new("Frame")
	local UICorner_10 = Instance.new("UICorner")
	local Log3 = Instance.new("Frame")
	local UICorner_11 = Instance.new("UICorner")

	ScreenGui.Parent = gethui()
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ResetOnSpawn = false
	
	Frame.Parent = ScreenGui
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(131, 61, 0)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, -1.5, 0)
	Frame.Size = UDim2.new(0.100000001, 325, 0.0500000007, 250)
	TweenService:Create(Frame,TweenInfo.new(1),{Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
	
	UICorner.CornerRadius = UDim.new(0, 3)
	UICorner.Parent = Frame

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Frame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.49655053, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	Right.Name = "Right"
	Right.Parent = Frame
	Right.AnchorPoint = Vector2.new(1, 0.5)
	Right.BackgroundColor3 = Color3.fromRGB(255, 72, 0)
	Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Right.BorderSizePixel = 0
	Right.Position = UDim2.new(1, 0, 0.5, 0)
	Right.Size = UDim2.new(0.00499999989, 0, 1, 0)

	UICorner_2.CornerRadius = UDim.new(0.5, 0)
	UICorner_2.Parent = Right

	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(1.00, 0.00)}
	UIGradient.Parent = Right

	Left.Name = "Left"
	Left.Parent = Frame
	Left.AnchorPoint = Vector2.new(0, 0.5)
	Left.BackgroundColor3 = Color3.fromRGB(255, 72, 0)
	Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Left.BorderSizePixel = 0
	Left.Position = UDim2.new(0, 0, 0.5, 0)
	Left.Size = UDim2.new(0.00499999989, 0, 1, 0)

	UICorner_3.CornerRadius = UDim.new(0.5, 0)
	UICorner_3.Parent = Left

	UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_2.Parent = Left

	Top.Name = "Top"
	Top.Parent = Frame
	Top.BackgroundColor3 = Color3.fromRGB(255, 72, 0)
	Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Top.BorderSizePixel = 0
	Top.Size = UDim2.new(1, 0, 0.00999999978, 0)

	UICorner_4.CornerRadius = UDim.new(0.5, 0)
	UICorner_4.Parent = Top

	UIGradient_3.Rotation = 90
	UIGradient_3.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_3.Parent = Top

	Bottom.Name = "Bottom"
	Bottom.Parent = Frame
	Bottom.AnchorPoint = Vector2.new(0, 1)
	Bottom.BackgroundColor3 = Color3.fromRGB(255, 72, 0)
	Bottom.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Bottom.BorderSizePixel = 0
	Bottom.Position = UDim2.new(0, 0, 1, 0)
	Bottom.Size = UDim2.new(1, 0, 0.00999999978, 0)

	UICorner_5.CornerRadius = UDim.new(0.5, 0)
	UICorner_5.Parent = Bottom

	UIGradient_4.Rotation = -90
	UIGradient_4.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_4.Parent = Bottom

	UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(68, 68, 68)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient_5.Rotation = -93
	UIGradient_5.Parent = Frame

	ImageLabel.Parent = Frame
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.964999974, 0, 0.0500000007, 0)
	ImageLabel.Size = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.Image = "rbxassetid://7743878857"

	ScriptHub.Name = "ScriptHub"
	ScriptHub.Parent = Frame
	ScriptHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScriptHub.BackgroundTransparency = 1.000
	ScriptHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScriptHub.BorderSizePixel = 0
	ScriptHub.Position = UDim2.new(0.0203896686, 0, 0.0241462048, 0)
	ScriptHub.Size = UDim2.new(0.50000006, 0, 0.0853484944, 0)
	ScriptHub.Font = Enum.Font.GothamBold
	ScriptHub.RichText = true
	ScriptHub.Text = Title or "BEDOL <font color=\"rgb(255, 64, 0)\">HUB</font>"
	ScriptHub.TextColor3 = Color3.fromRGB(255, 255, 255)
	ScriptHub.TextScaled = true
	ScriptHub.TextSize = 14.000
	ScriptHub.TextWrapped = true
	ScriptHub.TextXAlignment = Enum.TextXAlignment.Left

	ScriptHub_2.Name = "ScriptHub"
	ScriptHub_2.Parent = Frame
	ScriptHub_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScriptHub_2.BackgroundTransparency = 1.000
	ScriptHub_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScriptHub_2.BorderSizePixel = 0
	ScriptHub_2.Position = UDim2.new(0.649999976, 0, 0.954999983, 0)
	ScriptHub_2.Size = UDim2.new(0.341413736, 0, 0.0267076455, 0)
	ScriptHub_2.Font = Enum.Font.GothamBold
	ScriptHub_2.Text = Powered or "Powered By Panda"
	ScriptHub_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	ScriptHub_2.TextScaled = true
	ScriptHub_2.TextSize = 14.000
	ScriptHub_2.TextWrapped = true
	ScriptHub_2.TextXAlignment = Enum.TextXAlignment.Right

	EnterKey.Name = "EnterKey"
	EnterKey.Parent = Frame
	EnterKey.AnchorPoint = Vector2.new(0.5, 0.5)
	EnterKey.BackgroundColor3 = Color3.fromRGB(45, 0, 1)
	EnterKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
	EnterKey.BorderSizePixel = 0
	EnterKey.Position = UDim2.new(0.5, 0, 0.300000012, 0)
	EnterKey.Size = UDim2.new(0.699999988, 0, 0.100000001, 0)
	EnterKey.Font = Enum.Font.GothamBold
	EnterKey.PlaceholderColor3 = Color3.fromRGB(107, 107, 107)
	EnterKey.PlaceholderText = "Enter Key"
	EnterKey.Text = ""
	EnterKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	EnterKey.TextSize = 14.000
	EnterKey.TextWrapped = true

	UICorner_6.CornerRadius = UDim.new(0, 3)
	UICorner_6.Parent = EnterKey

	UIStroke.Color = Color3.fromRGB(255, 72, 0)
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Parent = EnterKey

	UIGradient_6.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.20, 1.00), NumberSequenceKeypoint.new(0.50, 1.00), NumberSequenceKeypoint.new(0.80, 1.00), NumberSequenceKeypoint.new(1.00, 0.00)}
	UIGradient_6.Parent = UIStroke

	Activate.Name = "Activate"
	Activate.Parent = Frame
	Activate.AnchorPoint = Vector2.new(0.5, 0.5)
	Activate.BackgroundColor3 = Color3.fromRGB(113, 17, 0)
	Activate.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Activate.BorderSizePixel = 0
	Activate.Position = UDim2.new(0.498414129, 0, 0.496722966, 0)
	Activate.Size = UDim2.new(0.5, 0, 0.100000001, 0)
	Activate.Font = Enum.Font.GothamBold
	Activate.Text = "Activate"
	Activate.TextColor3 = Color3.fromRGB(255, 255, 255)
	Activate.TextSize = 14.000

	UICorner_7.CornerRadius = UDim.new(0, 3)
	UICorner_7.Parent = Activate

	UIStroke_2.Color = Color3.fromRGB(255, 72, 0)
	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_2.Parent = Activate

	UIGradient_7.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.20, 1.00), NumberSequenceKeypoint.new(0.50, 1.00), NumberSequenceKeypoint.new(0.80, 1.00), NumberSequenceKeypoint.new(1.00, 0.00)}
	UIGradient_7.Parent = UIStroke_2

	GetKey.Name = "GetKey"
	GetKey.Parent = Frame
	GetKey.AnchorPoint = Vector2.new(0.5, 0.5)
	GetKey.BackgroundColor3 = Color3.fromRGB(113, 17, 0)
	GetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetKey.BorderSizePixel = 0
	GetKey.Position = UDim2.new(0.498414129, 0, 0.645049989, 0)
	GetKey.Size = UDim2.new(0.5, 0, 0.100000001, 0)
	GetKey.Font = Enum.Font.GothamBold
	GetKey.Text = "Get Key"
	GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	GetKey.TextSize = 14.000

	UICorner_8.CornerRadius = UDim.new(0, 3)
	UICorner_8.Parent = GetKey

	UIStroke_3.Color = Color3.fromRGB(255, 72, 0)
	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_3.Parent = GetKey

	UIGradient_8.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.20, 1.00), NumberSequenceKeypoint.new(0.50, 1.00), NumberSequenceKeypoint.new(0.80, 1.00), NumberSequenceKeypoint.new(1.00, 0.00)}
	UIGradient_8.Parent = UIStroke_3

	Loader.Name = "Loader"
	Loader.Parent = Frame
	Loader.AnchorPoint = Vector2.new(0.5, 0.5)
	Loader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Loader.BackgroundTransparency = 1.000
	Loader.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Loader.BorderSizePixel = 0
	Loader.Position = UDim2.new(0.5, 0, 0.400000006, 0)
	Loader.Size = UDim2.new(0.699999988, 0, 0.0500000007, 0)

	Log1.Name = "Log1"
	Log1.Parent = Loader
	Log1.BackgroundColor3 = Color3.fromRGB(158, 158, 158)
	Log1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Log1.BorderSizePixel = 0
	Log1.SizeConstraint = Enum.SizeConstraint.RelativeYY

	UICorner_9.CornerRadius = UDim.new(0, 3)
	UICorner_9.Parent = Log1

	UIListLayout.Parent = Loader
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 15)

	Log2.Name = "Log2"
	Log2.Parent = Loader
	Log2.BackgroundColor3 = Color3.fromRGB(158, 158, 158)
	Log2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Log2.BorderSizePixel = 0
	Log2.SizeConstraint = Enum.SizeConstraint.RelativeYY

	UICorner_10.CornerRadius = UDim.new(0, 3)
	UICorner_10.Parent = Log2

	Log3.Name = "Log3"
	Log3.Parent = Loader
	Log3.BackgroundColor3 = Color3.fromRGB(158, 158, 158)
	Log3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Log3.BorderSizePixel = 0
	Log3.SizeConstraint = Enum.SizeConstraint.RelativeYY

	UICorner_11.CornerRadius = UDim.new(0, 3)
	UICorner_11.Parent = Log3
	
	function tback:GetKey(func)
		GetKey.MouseButton1Click:Connect(func)
	end
	
	function tback:Delete()
		local vc = TweenService:Create(Frame,TweenInfo.new(1),{Position = UDim2.new(0.5, 0, 1.5, 0)})
		vc:Play()
		vc.Completed:Connect(function()ScreenGui:Destroy()end)
	end
	
	
	function tback:Activate(func)
		
		Activate.MouseButton1Click:Connect(function()
			if string.len(EnterKey.Text) <= 0 or tback.ActivateStatus == "Success" then
				
				return
			end
			
			IsActivate = true
			
			if func(EnterKey.Text) then
				IsActivate = false
				
				tback.ActivateStatus = "Success"
				
				task.wait(3)
				
				task.cancel(tback.Task)
				tback:Delete()
				return
			else
				tback.ActivateStatus = "Failed"
				
				task.delay(1,function()
					if IsActivate == false then
						tback.ActivateStatus = nil
					end
				end)
			end
			
			
			IsActivate = false
		end)
	end
	
	tback.Task = task.spawn(function()
		local atlog = Log1
		local atdelay = false
		local debugs = false
		
		while true do task.wait()
			if IsActivate then
				if debugs then
					debugs = false
					TweenService:Create(Log1,TweenInfo.new(0.4,Enum.EasingStyle.Back),{
						Size = UDim2.fromScale(0.8,0.8),
						BackgroundColor3 = Color3.fromRGB(158, 158, 158)
					}):Play()
					TweenService:Create(Log2,TweenInfo.new(0.4,Enum.EasingStyle.Back),{
						Size = UDim2.fromScale(0.8,0.8),
						BackgroundColor3 = Color3.fromRGB(158, 158, 158)
					}):Play()
					TweenService:Create(Log3,TweenInfo.new(0.4,Enum.EasingStyle.Back),{
						Size = UDim2.fromScale(0.8,0.8),
						BackgroundColor3 = Color3.fromRGB(158, 158, 158)
					}):Play()
					
					atlog = Log1
				end
				
				if atlog then
					if not atdelay then
						atdelay = true
						
						local myc = atlog
						TweenService:Create(myc,TweenInfo.new(1,Enum.EasingStyle.Back),{
							Size = UDim2.fromScale(1.25,1.5),
							BackgroundColor3 = Color3.fromRGB(202, 202, 202)
						}):Play()
						
						task.delay(0.8,function()
							TweenService:Create(myc,TweenInfo.new(0.45),{
								Size = UDim2.fromScale(0.8,0.8),
								BackgroundColor3 = Color3.fromRGB(158, 158, 158)
							}):Play()
						end)
						
						task.delay(0.5,function()
							if atlog == Log1 then
								atlog = Log2
							elseif atlog == Log2 then
								atlog = Log3
							elseif atlog == Log3 then
								atlog = Log1
								task.wait(0.4)
							end
							
							atdelay = false
						end)
					end
				end
				
				TweenService:Create(Activate,TweenInfo.new(0.4),{
					Position = UDim2.new(0.498, 0,0.6, 0)
				}):Play()

				TweenService:Create(GetKey,TweenInfo.new(0.4),{
					Position = UDim2.new(0.503, 0,0.759, 0)
				}):Play()

				TweenService:Create(Loader,TweenInfo.new(0.4),{
					Position = UDim2.new(0.5, 0,0.448, 0)
				}):Play()
				
			else
				
				debugs = true
				
				if not tback.ActivateStatus then
					TweenService:Create(Log1,TweenInfo.new(.4),{
						Size = UDim2.fromScale(0,0),
						BackgroundColor3 = Color3.fromRGB(158, 158, 158)
					}):Play()
					TweenService:Create(Log2,TweenInfo.new(.4),{
						Size = UDim2.fromScale(0,0),
						BackgroundColor3 = Color3.fromRGB(158, 158, 158)
					}):Play()
					TweenService:Create(Log3,TweenInfo.new(0.4),{
						Size = UDim2.fromScale(0,0),
						BackgroundColor3 = Color3.fromRGB(158, 158, 158)
					}):Play()

					TweenService:Create(Activate,TweenInfo.new(0.4),{
						Position = UDim2.new(0.498414129, 0, 0.496722966, 0)
					}):Play()

					TweenService:Create(GetKey,TweenInfo.new(0.4),{
						Position = UDim2.new(0.498414129, 0, 0.645049989, 0)
					}):Play()

					TweenService:Create(Loader,TweenInfo.new(0.4),{
						Position = UDim2.new(0.5, 0, 0.400000006, 0)
					}):Play()
				else
					
					TweenService:Create(Activate,TweenInfo.new(0.4),{
						Position = UDim2.new(0.498, 0,0.6, 0)
					}):Play()

					TweenService:Create(GetKey,TweenInfo.new(0.4),{
						Position = UDim2.new(0.503, 0,0.759, 0)
					}):Play()

					TweenService:Create(Loader,TweenInfo.new(0.4),{
						Position = UDim2.new(0.5, 0,0.448, 0)
					}):Play()
					
					if tback.ActivateStatus == "Success" then
						TweenService:Create(Log1,TweenInfo.new(.4),{
							Size = UDim2.fromScale(1,1),
							BackgroundColor3 = Color3.fromRGB(43, 214, 0)
						}):Play()
						TweenService:Create(Log2,TweenInfo.new(.4),{
							Size = UDim2.fromScale(1,1),
							BackgroundColor3 = Color3.fromRGB(43, 214, 0)
						}):Play()
						TweenService:Create(Log3,TweenInfo.new(0.4),{
							Size = UDim2.fromScale(1,1),
							BackgroundColor3 = Color3.fromRGB(43, 214, 0)
						}):Play()
					elseif tback.ActivateStatus == "Failed"  then
						
						TweenService:Create(Log1,TweenInfo.new(.4),{
							Size = UDim2.fromScale(1,1),
							BackgroundColor3 = Color3.fromRGB(214, 0, 4)
						}):Play()
						TweenService:Create(Log2,TweenInfo.new(.4),{
							Size = UDim2.fromScale(1,1),
							BackgroundColor3 = Color3.fromRGB(214, 0, 4)
						}):Play()
						TweenService:Create(Log3,TweenInfo.new(0.4),{
							Size = UDim2.fromScale(1,1),
							BackgroundColor3 = Color3.fromRGB(214, 0, 4)
						}):Play()
					end
				end
			end
		end
	end)
	
	return tback
end
