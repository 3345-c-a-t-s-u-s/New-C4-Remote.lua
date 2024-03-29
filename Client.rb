--[[
Example:

	 Teleport:TelaportBypassed(target ? cframe | part |  model | vector3)
	 Teleport:Noclip(value ? bool)
	 Teleport:GetDistance(target ? vector3)
	 Teleport:PartPhysical(part ? part | instance)
]]
local Teleport = {Setting = {Speed = 90, MinDistance = 25}, Teleporting = {Target = Vector3.new()}}
local PartBackup = {}
local TweenService = game:GetService("TweenService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local SpawnTick = tick()

function Teleport:GetDistance(Main)
	local RootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	return (RootPart.Position - Main).Magnitude
end
function Teleport:PartPhysical(partP)
	partP.Velocity = Vector3.new()
end
function Teleport:Noclip(val)
	local Character = LocalPlayer.Character
	if not Character or Character:FindFirstChild("Humanoid").Health <= 0 then
		return
	end
	if val then
		for i, v in ipairs(Character:GetDescendants()) do
			if v:IsA("BasePart") then
				if not PartBackup[v] then
					PartBackup[v] = v.CanCollide
				end
				v.CanCollide = false
			end
		end
	else
		for i, v in ipairs(Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = PartBackup[v] or false
			end
		end
	end
end
function Teleport:TelaportBypassed(Target)

	if (tick() - SpawnTick) < 1 then
		return
	end

	local Position

	if typeof(Target) == "Instance" then
		if Target:IsA("Model") then
			Position = Target:GetPivot()
		end
		if Target:IsA("BasePart") then
			Position = Target.CFrame
		end
	end
	if typeof(Target) == "Vector3" then
		Position = CFrame.new(Target)
	end
	if typeof(Target) == "CFrame" then
		Position = Target
	end
	Teleport.Teleporting.Target = Position
	local Character = LocalPlayer.Character
	if not Character or Character:FindFirstChild("Humanoid").Health <= 0 then
		return
	end
	local RootPart = Character:FindFirstChild("HumanoidRootPart")
	
	if RootPart then
		local Distance = Teleport:GetDistance(Position.Position)
		local Run
		
		local Style = (Distance <= Teleport.Setting.MinDistance * 5 and Enum.EasingStyle.Quint) or Enum.EasingStyle.Linear
			
		if Distance > Teleport.Setting.MinDistance then
			Teleport:Noclip(true)
			local LasterPosition = RootPart.CFrame
			repeat
				task.wait()
				Distance = Teleport:GetDistance(Position.Position)
				local PositionPart
				if typeof(Target) == "Instance" then
					if Target:IsA("Model") then
						PositionPart = Target:GetPivot()
					end
					if Target:IsA("BasePart") then
						PositionPart = Target.CFrame
					end
				end
				if typeof(Target) == "Vector3" then
					PositionPart = CFrame.new(Target)
				end
				if typeof(Target) == "CFrame" then
					PositionPart = Target
				end
				if Run and Run.PlaybackState ~= Enum.PlaybackState.Playing then
					Run =
						TweenService:Create(
							RootPart,
							TweenInfo.new(Distance / Teleport.Setting.Speed, Style),
							{CFrame = PositionPart}
						)
				else
					if not Run then
						Run =
							TweenService:Create(
								RootPart,
								TweenInfo.new(Distance / Teleport.Setting.Speed, Style),
								{CFrame = PositionPart}
							)
					end
				end
				if Run.PlaybackState ~= Enum.PlaybackState.Playing then
					Run:Play()
				end
				Teleport:PartPhysical(RootPart)
				Teleport:PartPhysical(Character:FindFirstChild("Head"))
			until Teleport.Teleporting.Target ~= Position or Distance < Teleport.Setting.MinDistance
			if Run then
				Run:Pause()
				pcall(Run.Destroy, Run)
			end
			if Distance < Teleport.Setting.MinDistance then
				if Teleport.Teleporting.Target == Position then
					Teleport:Noclip(false)
					TweenService:Create(RootPart, TweenInfo.new(0.5,Enum.EasingStyle.Quint), {CFrame = Position}):Play()
				end
			end
		else
			TweenService:Create(RootPart, TweenInfo.new(0.45,Enum.EasingStyle.Quint), {CFrame = Position}):Play()
			Teleport:PartPhysical(RootPart)
			Teleport:PartPhysical(Character:FindFirstChild("Head"))
		end
	end
end
function Teleport:Noclip_Bypass()
	if hookfunction then
		old = hookfunction(
			workspace.Raycast,
			function(origin, dur, igone, pr)
				local Character = LocalPlayer.Character
				if Character and Character:FindFirstChild("HumanoidRootPart").Position == origin then
					return {Position = origin, Instance = nil, Distance = 1, Material = nil, Normal = dur}
				end
				return old(origin, dur, igone, pr)
			end)
	end
end

LocalPlayer.CharacterAdded:Connect(function()
	SpawnTick = tick()
end)

return Teleport
