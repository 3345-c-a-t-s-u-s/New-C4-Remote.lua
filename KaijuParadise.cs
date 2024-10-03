--[[
 ___________ _____ _   _   _____  _____ _   _______  _____  _____            _____  _____  _____  _____   _____ ___________ _____ 
|  _  | ___ \  ___| \ | | /  ___||  _  | | | | ___ \/  __ \|  ___|          / __  \|  _  |/ __  \|____ | /  __ \  _  |  _  \  ___|
| | | | |_/ / |__ |  \| | \ `--. | | | | | | | |_/ /| /  \/| |__    ______  `' / /'| |/' |`' / /'    / / | /  \/ | | | | | | |__  
| | | |  __/|  __|| . ` |  `--. \| | | | | | |    / | |    |  __|  |______|   / /  |  /| |  / /      \ \ | |   | | | | | | |  __| 
\ \_/ / |   | |___| |\  | /\__/ /\ \_/ / |_| | |\ \ | \__/\| |___           ./ /___\ |_/ /./ /___.___/ / | \__/\ \_/ / |/ /| |___ 
 \___/\_|   \____/\_| \_/ \____/  \___/ \___/\_| \_| \____/\____/           \_____/ \___/ \_____/\____/   \____/\___/|___/ \____/ 
                                                                                                                                  
script open source and no update [from catsus bedol hub - 10/3/2024]                                                                                                                                
]]

task.spawn(function()
  local t = [=[FUCK THIS SCRIPT IS OUTDATE,
  THIS GAME IS TRASH GO FUCKING PLAY CS2 OR VALO BC IT BETTER THAN THIS FUCKING GAME
  (New discord: https://discord.gg/kfZKGeWyhc)]=]
  
  (setclipboard or toclipboard or print)('https://discord.gg/kfZKGeWyhc');
  
  warn(t);
end)



_G.BEDOL = true
local a = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request
local b = a
local c = game:GetService("ContextActionService")
local d = game:GetService("RunService")
local e = false
local f = game:GetService("Players").LocalPlayer
local g = game:GetService("Lighting")
local h = game:GetService("RbxAnalyticsService")
local i = "https://raw.githubusercontent.com/3345-c-a-t-s-u-s/MODULES_SCRIPPT_HUB/main/"
local j =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/NEVERLOSE-UI-Nightly/main/source.lua"))(

)
local k = loadstring(game:HttpGet(i .. tostring("TraceEsp.lua")))()
local l = loadstring(game:HttpGet(i .. tostring("Functions.lua")))()
local m = {}
local n = {}
local o = loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/MainUI.cpp"))()
local p = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local q = p.Notify
local r = game:GetService("HttpService")
local s
local t
local u = "BedolUserSave.txt"
print("Loading")
local function v(w, x, y)
    local z
    if y then
        z = r:JSONEncode(y)
    end
    return b({Url = w, Method = x, Headers = {["Content-Type"] = "application/json"}, Body = z})
end
print("Fetching API")
j:Theme("dark")
local A = game:GetService("Teams").Gootraxian
local B = "Bat"
local C = Vector3.new(0, -35, 0)
local D = workspace.Scripted.ItemSpawner
local E = false
local F
local G = {Time = g.TimeOfDay, Bight = g.Brightness}
local H = {
    AutoKill = {KillMethod = "All Target", AutoKill = false},
    Items = {Default = "Bat", Aimbot = false},
    Hitbox = {AutoLockedTarget = false, Aimbot = false, OnEsp = false, EspSize = 50},
    ESP = {EspTarget = false, EspItems = false},
    Automatic = {AutoEscape = false, AutoSuicide = false, AutoAttack = false, AutoAttackDistance = 14},
    LocalPlayer = {
        WalkSpeedNumber = 15,
        WalkSpeed = false,
        JumpPowerNumber = 50,
        JumpPower = false,
        NoBlurEffect = false,
        FullBright = false,
        BypassSpawn = false
    }
}
for I, J in ipairs(g:GetChildren()) do
    pcall(
        function()
            if J.Enabled then
                J:SetAttribute("Enabled", true)
            end
        end
    )
end
n.TeleportSpeed = 6
n.MaxDistance = 5
n.Targeted = Vector3.new()
local K = function(L, M)
    if f.Character then
        M = M or 6
        local N = f.Character.HumanoidRootPart
        local O = typeof(L) == "Vector3" and CFrame.new(L) or L
        local P = (O.Position - N.Position).Unit * M
        N.Velocity = Vector3.new(0, 0, 0)
        N.CFrame = N.CFrame:Lerp(CFrame.new(N.CFrame.Position) * CFrame.new(P), 0.1)
    end
end
game.Players.LocalPlayer.Idled:Connect(
    function()
        local Q = game:GetService("VirtualUser")
        Q:CaptureController()
        Q:ClickButton2(Vector2.new(0, 0))
    end
)
local function R(S, T, U)
    if not S then
        return
    end
    if not U then
        for V, W in ipairs(S:GetDescendants()) do
            if W.Name == tostring(T) then
                return W, V
            end
        end
    else
        for V, W in ipairs(S:GetDescendants()) do
            if W.ClassName == tostring(U) then
                return W, V
            end
        end
    end
    return false
end
local X
local function Y()
    local Z = v("https://httpbin.org/get", "GET")
    local _ = r:JSONDecode(Z.Body)
    s = _
end
local function a0()
    local a1
    local a2 = s.headers
    for I, J in pairs(a2) do
        if type(I) == "string" and I:lower():match("fingerprint") then
            a1 = J
        end
    end
    t = a1
    return a1
end
function from_base64(a3)
    local a4 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    a3 = string.gsub(a3, "[^" .. a4 .. "=]", "")
    return a3:gsub(
        ".",
        function(a5)
            if a5 == "=" then
                return ""
            end
            local a6, a7 = "", a4:find(a5) - 1
            for I = 6, 1, -1 do
                a6 = a6 .. (a7 % 2 ^ I - a7 % 2 ^ (I - 1) > 0 and "1" or "0")
            end
            return a6
        end
    ):gsub(
        "%d%d%d?%d?%d?%d?%d?%d?",
        function(a5)
            if #a5 ~= 8 then
                return ""
            end
            local a8 = 0
            for I = 1, 8 do
                a8 = a8 + (a5:sub(I, I) == "1" and 2 ^ (8 - I) or 0)
            end
            return string.char(a8)
        end
    )
end
local function a9()
    pcall(
        function()
            for I, J in ipairs(game:GetService("Players").LocalPlayer.PlayerScripts.Miscellaneous:GetChildren()) do
                if J.Name == "Legitimacy" then
                    J:Remove()
                end
            end
        end
    )
    pcall(
        function()
            game:GetService("Players").LocalPlayer.PlayerScripts.LocalScripts.Visual.ObjectVisuals:Remove()
            game:GetService("Players").LocalPlayer.PlayerScripts.LocalScripts.Visual.TouchDetection:Remove()
        end
    )
end
Y()
local function aa(ab)
    local ac = {tostring(ab)}
    for I, J in ipairs(game:GetService("Players"):GetPlayers()) do
        if J.Team == A then
            table.insert(ac, J)
        end
    end
    return ac
end
local function ad(ae)
    if typeof(ae) == "Instance" then
        if ae.ClassName == "Model" then
            return ae:GetPivot().Position
        end
        if ae:isA("BasePart") then
            return ae.Position
        end
    else
        if typeof(ae) == "CFrame" then
            return ae.CFrame
        end
    end
end
function JSONEncode(af)
    local function ag(ah)
        ah = string.gsub(ah, '(["\\])', "\\%1")
        ah = string.gsub(ah, "[\b]", "\\b")
        ah = string.gsub(ah, "[\f]", "\\f")
        ah = string.gsub(ah, "[\n]", "\\n")
        ah = string.gsub(ah, "[\r]", "\\r")
        ah = string.gsub(ah, "[\t]", "\\t")
        return ah
    end
    local function ai(af)
        local aj = ""
        local ak = type(af)
        if ak == "table" then
            aj = aj .. "{"
            local al = true
            for am, J in pairs(af) do
                task.wait()
                if not al then
                    aj = aj .. ","
                end
                al = false
                aj = aj .. '"' .. ag(tostring(am)) .. '":'
                aj = aj .. ai(J)
            end
            aj = aj .. "}"
        elseif ak == "string" then
            aj = aj .. '"' .. ag(af) .. '"'
        elseif ak == "number" or ak == "boolean" then
            aj = aj .. tostring(af)
        else
            aj = aj .. "null"
        end
        return aj
    end
    return ai(af)
end
local an =
    loadstring(
    game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/New-C4-Remote.lua/main/backup/key-system.h")
)()
q({Description = "Powered By PandaAuth", Title = "Verified!", Duration = 5})
print("loaded script")
pcall(a9)
q({Description = "KAIJU PARADISE SCRIPT V2 Fixed", Title = "Bedol Hub - Script", Duration = 5})
local ao
local ap = H
local function aq()
    writefile("BedolKP.txt", r:JSONEncode(ap))
end
local ar = {
    ["1"] = Enum.KeyCode.One,
    ["2"] = Enum.KeyCode.Two,
    ["3"] = Enum.KeyCode.Three,
    ["4"] = Enum.KeyCode.Four,
    ["5"] = Enum.KeyCode.Five
}
local as = {
    ["Bat"] = 0.375,
    ["Bottle"] = 0.295,
    ["Scythe"] = 0.375,
    ["Katana"] = 0.345,
    ["Knife"] = 0.3,
    ["Nunchunks"] = 0.3,
    ["Pipe"] = 0.375,
    ["Crowbar"] = 0.375
}
local function at(au, av)
    if au == "Move" then
        if f.Character:FindFirstChildWhichIsA("IntValue") then
            local aw = f.Character:FindFirstChildWhichIsA("IntValue")
            for I, J in ipairs(aw:GetDescendants()) do
                if J.Name == "DmgPoint" then
                    if J:isA("Attachment") then
                        if not J:GetAttribute("origin") then
                            J:SetAttribute("origin", J.CFrame)
                        end
                        local ax = J.Parent.CFrame:ToObjectSpace(av)
                        J.CFrame = ax * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
                    end
                end
            end
        end
    else
        if f.Character:FindFirstChildWhichIsA("IntValue") then
            local aw = f.Character:FindFirstChildWhichIsA("IntValue")
            task.spawn(
                function()
                    for I, J in ipairs(aw:GetDescendants()) do
                        if J.Name == "DmgPoint" then
                            if J:isA("Attachment") then
                                task.wait()
                                if J:GetAttribute("origin") then
                                    J.CFrame = J:GetAttribute("origin")
                                end
                            end
                        end
                    end
                end
            )
        end
    end
end
local ay = {Trace = {}, Object = {}, Items = {}}
local az = {}
local aA = {}
local aB = j:AddWindow("BEDOL HUB", "KAIJU PARADISE : V3")
aB:AddTabLabel("Home")
local aC = aB:AddTab("Main", "earth")
local aD = aB:AddTab("Esp", "ads")
local aE = aB:AddTab("Misc", "folder")
local aF = aE:AddSection("LocalPlayer", "left")
local aG = aE:AddSection("Game", "right")
local aH = aC:AddSection("Auto Kill", "left")
local aI = aC:AddSection("Tool Items", "right")
local aJ = aC:AddSection("Hitbox", "left")
local aK = aD:AddSection("ESP", "left")
local aL = aC:AddSection("Automatic", "right")
local aM = aE:AddSection("Info", "right")
aM:AddButton(
    "Join Discord",
    function()
        pcall(
            function()
                setclipboard(tostring("https://discord.gg/BH6pE7jesa"))
            end
        )
        pcall(
            function()
                toclipboard(tostring("https://discord.gg/BH6pE7jesa"))
            end
        )
        if b then
            b(
                {
                    Url = "http://127.0.0.1:6463/rpc?v=1",
                    Method = "POST",
                    Headers = {["Content-Type"] = "application/json", Origin = "https://discord.com"},
                    Body = r:JSONEncode(
                        {cmd = "INVITE_BROWSER", nonce = r:GenerateGUID(false), args = {code = "BH6pE7jesa"}}
                    )
                }
            )
        end
    end
)
aM:AddLabel("Have Fun :)")
aG:AddToggle(
    "No BlurEffect",
    ap.LocalPlayer.NoBlurEffect,
    function(aN)
        ap.LocalPlayer.NoBlurEffect = aN
    end
)
aG:AddToggle(
    "FullBright",
    ap.LocalPlayer.FullBright,
    function(aN)
        ap.LocalPlayer.FullBright = aN
    end
)
aG:AddToggle(
    "Bypass [SafeZone]",
    ap.LocalPlayer.BypassSpawn,
    function(aN)
        ap.LocalPlayer.BypassSpawn = aN
    end
)
aF:AddToggle(
    "Walk Speed",
    ap.LocalPlayer.WalkSpeed,
    function(aN)
        ap.LocalPlayer.WalkSpeed = aN
    end
)
aF:AddSlider(
    "Speed Value",
    1,
    27,
    ap.LocalPlayer.WalkSpeedNumber,
    function(aN)
        ap.LocalPlayer.WalkSpeedNumber = aN
    end
)
aF:AddToggle(
    "Jump Power",
    ap.LocalPlayer.JumpPower,
    function(aN)
        ap.LocalPlayer.JumpPower = aN
    end
)
aF:AddSlider(
    "Power Value",
    50,
    500,
    ap.LocalPlayer.JumpPowerNumber,
    function(aN)
        ap.LocalPlayer.JumpPowerNumber = aN
    end
)
aK:AddToggle(
    "ESP Target",
    ap.ESP.EspTarget,
    function(aN)
        ap.ESP.EspTarget = aN
    end
)
aK:AddToggle(
    "ESP Items",
    ap.ESP.EspItems,
    function(aN)
        ap.ESP.EspItems = aN
    end
)
aL:AddToggle(
    "Auto Escape",
    ap.Automatic.AutoEscape,
    function(aN)
        ap.Automatic.AutoEscape = aN
    end
)
aL:AddToggle(
    "Auto Suicide",
    ap.Automatic.AutoSuicide,
    function(aN)
        ap.Automatic.AutoSuicide = aN
    end
)
aL:AddToggle(
    "Auto Attack",
    ap.Automatic.AutoAttack,
    function(aN)
        ap.Automatic.AutoAttack = aN
    end
)
aL:AddSlider(
    "Attack Distance",
    1,
    25,
    ap.Automatic.AutoAttackDistance,
    function(aN)
        ap.Automatic.AutoAttackDistance = aN
    end
)
aH:AddDropdown(
    "Kill Methods",
    {"All Target"},
    ap.AutoKill.KillMethod,
    function(aN)
        ap.AutoKill.KillMethod = aN
    end
)
aH:AddToggle(
    "Auto Kill",
    ap.AutoKill.AutoKill,
    function(aN)
        ap.AutoKill.AutoKill = aN
    end
)
aJ:AddToggle(
    "Auto Locked Target",
    ap.Hitbox.AutoLockedTarget,
    function(aN)
        ap.Hitbox.AutoLockedTarget = aN
    end
)
aJ:AddToggle(
    "Aimbot",
    ap.Hitbox.Aimbot,
    function(aN)
        ap.Hitbox.Aimbot = aN
    end
)
aJ:AddSlider(
    "Aimbot Size",
    1,
    100,
    ap.Hitbox.EspSize,
    function(aN)
        ap.Hitbox.EspSize = aN
    end
)
aJ:AddToggle(
    "Esp Target",
    ap.Hitbox.OnEsp,
    function(aN)
        ap.Hitbox.OnEsp = aN
    end
)
task.spawn(
    function()
        local aO = Instance.new("Part", workspace)
        aO.Anchored = true
        aO.Material = Enum.Material.ForceField
        aO.CanCollide = false
        aO.Transparency = 0.1
        aO.Size = Vector3.new(ap.Hitbox.EspSize, ap.Hitbox.EspSize, ap.Hitbox.EspSize)
        aO.Shape = Enum.PartType.Ball
        f:GetMouse().TargetFilter = aO
        l:NewLoop(
            function()
                game:GetService("TweenService"):Create(
                    aO,
                    TweenInfo.new(0.05),
                    {Size = Vector3.new(ap.Hitbox.EspSize, ap.Hitbox.EspSize, ap.Hitbox.EspSize)}
                ):Play()
                if ap.Hitbox.OnEsp and ap.Hitbox.Aimbot then
                    aO.CFrame = f:GetMouse().Hit
                else
                    aO.CFrame = CFrame.new(0, 0, 0)
                end
            end
        )
    end
)
function m:KeyPress(aP)
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):SetKeyDown(aP)
    pcall(keypress, aP)
    task.wait()
    game:GetService("VirtualUser"):SetKeyUp(aP)
    pcall(keyrelease, aP)
end
local function aQ(aR)
    for I, J in ipairs(D:GetChildren()) do
        if J:FindFirstChild(aR) then
            return J:FindFirstChild(aR)
        end
    end
    for I, J in ipairs(workspace.Scripted.Interactable:GetChildren()) do
        if J.Name == aR then
            return J
        end
    end
    return nil
end
local function aS(aw)
    for I, J in ipairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.InventoryGui:GetChildren()) do
        if J.Tool.Value == aw then
            return tostring(J)
        end
    end
    return nil
end
local function aT(aU)
    if not aU then
        return
    end
    aU:SetAttribute("AntiCheatTeleport", Vector3.new())
    aU:GetAttributeChangedSignal("AntiCheatTeleport"):Connect(
        function()
            for I = 0, 15 do
                task.wait()
                n:Stop()
            end
        end
    )
    aU:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal("Position"):Connect(
        function()
            if aU:WaitForChild("HumanoidRootPart").Position == aU:GetAttribute("AntiCheatTeleport") then
                for I = 0, 5 do
                    task.wait()
                    n:Stop()
                end
            end
        end
    )
    aU:WaitForChild("Humanoid"):GetPropertyChangedSignal("WalkSpeed"):Connect(
        function()
            if ap.LocalPlayer.WalkSpeed then
                aU:WaitForChild("Humanoid").WalkSpeed = ap.LocalPlayer.WalkSpeedNumber
            end
        end
    )
    aU:WaitForChild("Humanoid").UseJumpPower = true
    aU:WaitForChild("Humanoid"):GetPropertyChangedSignal("JumpPower"):Connect(
        function()
            if ap.LocalPlayer.JumpPower then
                aU:WaitForChild("Humanoid").UseJumpPower = true
                aU:WaitForChild("Humanoid").JumpPower = ap.LocalPlayer.JumpPowerNumber
            end
        end
    )
end
local function aV(aW, aX)
    local aY
    local aZ = aX or 1000
    for I, J in ipairs(game:GetService("Players"):GetPlayers()) do
        if J.Character then
            if J.Team == A then
                local a_ = (J.Character:FindFirstChild("HumanoidRootPart").Position - aW).Magnitude
                if a_ <= aZ then
                    aZ = a_
                    aY = J
                end
            end
        end
    end
    return aY
end
local function b0(av)
    local b1 = f.Character:FindFirstChild("HumanoidRootPart").Position
    local b2 = Vector3.new(av.X, 0, av.Z)
    local b3 = Vector3.new(b1.X, 0, b1.Z)
    local aZ = (b2 - b3).Magnitude
    return aZ
end
local function b4()
    if not f.Character:FindFirstChild(B) and not f.Backpack:FindFirstChild(B) then
        if not f.Character:FindFirstChildWhichIsA("IntValue") then
            local b5 = f.Character:FindFirstChild("HumanoidRootPart").Position + C
            local aw = aQ(B)
            if aw then
                local b6 = ad(aw)
                local b7 = b6 + C
                local b8 = R(aw, "", "ProximityPrompt")
                local aZ = b0(b6)
                if aZ >= 10 then
                    n:Start(b5)
                    task.wait()
                    n:Start(b7)
                    task.wait()
                    for I = 0, 15 do
                        task.wait()
                        n:Start(b6)
                        if I > 1 then
                            fireproximityprompt(b8, 1)
                        end
                    end
                    task.wait()
                    n:Start(b7)
                    task.wait()
                    n:Start(b5)
                else
                    for I = 0, 15 do
                        task.wait()
                        fireproximityprompt(b8, 1)
                    end
                end
            else
                q({Description = "Not found Item", Title = "Bedol Hub - Services", Duration = 5})
            end
        end
    end
    if f.Backpack:FindFirstChild(B) then
        local b9 = aS(f.Backpack:FindFirstChild(B))
        if b9 then
            m:KeyPress(ar[b9])
        end
    end
    if f.Character:FindFirstChildWhichIsA("IntValue") then
        m:ScreenClick(Vector2.new())
    end
end
local function ba()
    if
        game:GetService("Players").LocalPlayer.PlayerGui.MainGui.WeaponUI.MainFrame.WeaponUI.Cooldown.Bar.Size.X.Scale <=
            0
     then
        return true
    end
    return false
end
function n:Start(L)
    E = true
    local bb = false
    n.Targeted = L
    if typeof(L) == "CFrame" then
        L = L.Position
    end
    if b0(L) <= n.MaxDistance then
        K(L, n.TeleportSpeed * 2)
        bb = true
    end
    repeat
        d.Heartbeat:Wait()
        E = true
        K(L, n.TeleportSpeed)
        if b0(L) <= n.MaxDistance then
            K(L, n.TeleportSpeed * 2)
            bb = true
        end
    until n.Targeted ~= L or bb
    if bb then
        K(L, n.TeleportSpeed * 2)
    end
    E = false
end
function n:Stop()
    n.Targeted = Vector3.new(1, 23, 2)
end
local function bc()
    local bd = workspace:GetServerTimeNow()
    local be = false
    local bf =
        game:GetService("ReplicatedStorage").Remote.LocalFunction.OnClientEvent:Connect(
        function(bg, bh)
            if bh["IgnorePlayer"] then
                if bh["IgnorePlayer"] == f then
                    be = true
                end
            end
        end
    )
    repeat
        task.wait()
    until be or workspace:GetServerTimeNow() - bd > 0.45
    pcall(
        function()
            bf:Disconnect()
            return
        end
    )
end
aI:AddButton(
    "Get Item",
    function()
        if ap.AutoKill.AutoKill then
            q({Description = "Turn off the Auto Kill", Title = "Bedol Hub - Services", Duration = 5})
            return
        end
        local aw = aQ(B)
        if aw then
            local b6 = ad(aw)
            local b7 = b6 + C
            local b8 = R(aw, "", "ProximityPrompt")
            local b5 = f.Character:FindFirstChild("HumanoidRootPart").Position + C
            local bi = f.Character:FindFirstChild("HumanoidRootPart").Position
            local aZ = b0(b6)
            if aZ >= 15 then
                n:Start(b5)
                task.wait()
                n:Start(b7)
                task.wait()
                for I = 0, 15 do
                    task.wait()
                    n:Start(b6)
                    if I > 3 then
                        fireproximityprompt(b8, 1)
                    end
                end
                task.wait(0.15)
                n:Start(b7)
                task.wait()
                n:Start(b5)
                task.wait()
                n:Start(bi)
            else
                for I = 0, 15 do
                    task.wait()
                    n:Start(b6)
                    if I > 3 then
                        fireproximityprompt(b8, 1)
                    end
                end
            end
        else
            q({Description = "No found Item", Title = "Bedol Hub - Services", Duration = 5})
        end
    end
)
aI:AddDropdown(
    "Items",
    {"Bat", "Bottle", "Scythe", "Katana", "Knife", "Nunchunks", "Pipe", "Crowbar"},
    ap.Items.Default,
    function(aN)
        ap.Items.Default = aN
        B = tostring(aN)
    end
)
aI:AddToggle(
    "Aimbot",
    ap.Items.Aimbot,
    function(aN)
        ap.Items.Aimbot = aN
    end
)
B = ap.Items.Default
local bj = aC:AddSection("Tool Status", "left")
local bk = {
    ToolName = bj:AddLabel(""),
    ToolCountdown = bj:AddLabel(""),
    ToolMaxDamges = bj:AddLabel(""),
    ToolAttackDelay = bj:AddLabel("")
}
game:GetService("UserInputService").JumpRequest:Connect(
    function()
        if ap.LocalPlayer.JumpPower then
            if f.Character then
                f.Character:WaitForChild("Humanoid").JumpPower = ap.LocalPlayer.JumpPowerNumber
            end
        end
    end
)
f:GetPropertyChangedSignal("Team"):Connect(
    function()
        if f.Team == A then
            if ap.Automatic.AutoSuicide then
                q({Description = "Reset", Title = "Bedol Hub - Services", Duration = 5})
            end
        end
    end
)
l:NewLoop(
    function()
        if ap.Automatic.AutoEscape then
            if f.PlayerGui:FindFirstChild("Escaping") then
                if f.PlayerGui:FindFirstChild("Escaping"):FindFirstChildWhichIsA("RemoteEvent") then
                    f.PlayerGui:FindFirstChild("Escaping"):FindFirstChildWhichIsA("RemoteEvent"):FireServer()
                end
            end
        end
        if ap.Automatic.AutoSuicide then
            if f.Team == A then
                game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("DiedRemote"):FireServer()
            end
        end
        if ap.LocalPlayer.WalkSpeed then
            if f.Character then
                f.Character:WaitForChild("Humanoid").WalkSpeed = ap.LocalPlayer.WalkSpeedNumber
            end
        end
        if ap.LocalPlayer.JumpPower then
            if f.Character then
                f.Character:WaitForChild("Humanoid").JumpPower = ap.LocalPlayer.JumpPowerNumber
            end
        end
        pcall(
            function()
                if f.Character then
                    if f.Character:FindFirstChildWhichIsA("IntValue") then
                        local aw = f.Character:FindFirstChildWhichIsA("IntValue")
                        if aw:FindFirstChild("Setting") then
                            local a3 = require(aw:FindFirstChild("Setting"))
                            bk.ToolName:Status(true)
                            bk.ToolCountdown:Status(true)
                            bk.ToolMaxDamges:Status(true)
                            bk.ToolAttackDelay:Status(true)
                            bk.ToolName:Text("Name: " .. aw.Name)
                            bk.ToolCountdown:Text("Countdown: " .. tostring(a3.Cooldown))
                            bk.ToolMaxDamges:Text("Max Damage: " .. tostring(a3.MaxHit))
                            bk.ToolAttackDelay:Text("Attack Delay: " .. tostring(a3.PrepareTime))
                        end
                    else
                        bk.ToolName:Status(false)
                        bk.ToolCountdown:Status(false)
                        bk.ToolMaxDamges:Status(false)
                        bk.ToolAttackDelay:Status(false)
                    end
                end
            end
        )
        pcall(
            function()
                if ap.LocalPlayer.FullBright then
                    g.TimeOfDay = 12
                    g.GlobalShadows = false
                    g.Brightness = 2
                else
                    g.TimeOfDay = G.Time
                    g.GlobalShadows = true
                    g.Brightness = G.Bight
                end
            end
        )
        pcall(
            function()
                if ap.LocalPlayer.NoBlurEffect then
                    for I, J in ipairs(g:GetChildren()) do
                        pcall(
                            function()
                                if J.Enabled then
                                    J.Enabled = false
                                end
                            end
                        )
                    end
                else
                    for I, J in ipairs(g:GetChildren()) do
                        pcall(
                            function()
                                if J:GetAttribute("Enabled") then
                                    J.Enabled = true
                                end
                            end
                        )
                    end
                end
            end
        )
        if ap.LocalPlayer.BypassSpawn then
            pcall(
                function()
                    game:GetService("Players").LocalPlayer.PlayerGui.ClientVariable.BlockSpawn.Value = false
                end
            )
        end
    end
)
l:NewLoop(
    function()
        if ap.Items.Aimbot then
            local bl = f:GetMouse().Hit
            local av = aV(bl.Position)
            if av then
                if az[1] ~= av then
                    az[1] = av
                    pcall(
                        function()
                            if az[2] then
                                az[2]:Delete()
                            end
                        end
                    )
                    az[2] =
                        k:Tracer(
                        av.Character:FindFirstChild("HumanoidRootPart"),
                        {AutoDelete = true, Color = Color3.fromRGB(0, 17, 255), AutoUpdate = true}
                    )
                    az[2]:AddUIEsp(av.DisplayName, "Item Aimbot", Color3.fromRGB(255, 255, 255))
                end
            else
                if az[1] then
                    az[1] = nil
                    az[2]:Delete()
                end
            end
        else
            pcall(
                function()
                    az[1] = nil
                    if az[2] then
                        az[2]:Delete()
                    end
                end
            )
        end
        if ap.Hitbox.AutoLockedTarget then
            local av = aV(f.Character.PrimaryPart.Position)
            if av then
                at("Move", av.Character:FindFirstChild("HumanoidRootPart").CFrame)
                if aA[1] ~= av and ap.Hitbox.OnEsp then
                    aA[1] = av
                    pcall(
                        function()
                            if aA[2] then
                                aA[2]:Delete()
                            end
                        end
                    )
                    aA[2] =
                        k:Tracer(
                        av.Character:FindFirstChild("HumanoidRootPart"),
                        {AutoDelete = true, Color = Color3.fromRGB(255, 0, 4), AutoUpdate = true}
                    )
                else
                    if not ap.Hitbox.OnEsp then
                        pcall(
                            function()
                                aA[2]:Delete()
                            end
                        )
                    end
                end
            else
                if not ap.Hitbox.Aimbot then
                    at("Close")
                    pcall(
                        function()
                            aA[1] = nil
                            aA[2]:Delete()
                        end
                    )
                end
            end
        else
            if not ap.Hitbox.Aimbot then
                at("Close")
                pcall(
                    function()
                        aA[1] = nil
                        aA[2]:Delete()
                    end
                )
            end
        end
        pcall(
            function()
                if ap.Hitbox.Aimbot then
                    local bl = f:GetMouse().Hit
                    local av = aV(bl.Position, ap.Hitbox.EspSize)
                    if av then
                        if aA[1] ~= av and ap.Hitbox.OnEsp then
                            aA[1] = av
                            pcall(
                                function()
                                    if aA[2] then
                                        aA[2]:Delete()
                                    end
                                end
                            )
                            aA[2] =
                                k:Tracer(
                                av.Character:FindFirstChild("HumanoidRootPart"),
                                {AutoDelete = true, Color = Color3.fromRGB(255, 0, 4), AutoUpdate = true}
                            )
                        else
                            if not ap.Hitbox.OnEsp then
                                pcall(
                                    function()
                                        aA[2]:Delete()
                                    end
                                )
                            end
                        end
                        if not ap.Hitbox.AutoLockedTarget then
                            at("Move", av.Character:FindFirstChild("HumanoidRootPart").CFrame)
                        end
                    else
                        if not ap.Hitbox.AutoLockedTarget then
                            at("Close")
                            pcall(
                                function()
                                    aA[1] = nil
                                    aA[2]:Delete()
                                end
                            )
                        end
                    end
                else
                    if not ap.Hitbox.AutoLockedTarget then
                        at("Close")
                        pcall(
                            function()
                                aA[1] = nil
                                aA[2]:Delete()
                            end
                        )
                    end
                end
            end
        )
    end
)
local function bm()
    local bn = {}
    for I, J in ipairs(workspace:FindFirstChild("Scripted"):FindFirstChild("ItemSpawner"):GetChildren()) do
        if J.Name:find("Spot") then
            if J:FindFirstChildWhichIsA("Model") then
                table.insert(bn, J:FindFirstChildWhichIsA("Model"))
            end
        end
    end
    for I, J in ipairs(workspace:FindFirstChild("Scripted"):FindFirstChild("Interactable"):GetChildren()) do
        if
            J.Name ~= "EmergencyAxe" and J.Name ~= "GarageDoor" and J.Name ~= "Keypad" and J.Name ~= "Lemon" and
                J.Name ~= "PizzaBox" and
                J.Name ~= "TrashCan" and
                J.Name ~= "Ice Cream Sandwich" and
                J.Name ~= "IceCream"
         then
            task.wait()
            if J:isA("Model") then
                table.insert(bn, J)
            end
        end
    end
    return bn
end
function m:ScreenClick(bo)
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton1(bo)
    mouse1click()
end
l:NewLoop(
    function()
        pcall(
            function()
                local bp = aV(f.Character.PrimaryPart.Position)
                if ap.Automatic.AutoAttack and not ap.AutoKill.AutoKill then
                    local bq = b0(bp.Character.PrimaryPart.Position)
                    if bq <= ap.Automatic.AutoAttackDistance then
                        if f.Character:FindFirstChildWhichIsA("IntValue") then
                            m:ScreenClick(Vector2.new())
                        end
                    end
                end
            end
        )
    end
)
l:NewLoop(
    function()
        pcall(
            function()
                if ap.ESP.EspTarget then
                    for V, br in ipairs(game:GetService("Players"):GetPlayers()) do
                        if br.Team == A and br.Character then
                            if not table.find(ay.Object, br.Character.PrimaryPart) then
                                table.insert(ay.Object, br.Character.PrimaryPart)
                                local bs =
                                    k:Tracer(
                                    br.Character.PrimaryPart,
                                    {AutoDelete = true, Color = Color3.fromRGB(255, 81, 0), AutoUpdate = true}
                                )
                                bs:AddUIEsp(br.DisplayName, "Trash", Color3.fromRGB(255, 255, 0))
                                table.insert(ay.Trace, {bs, "TRASH", br})
                            end
                        else
                            pcall(
                                function()
                                    if table.find(ay.Object, br.Character.PrimaryPart) then
                                        for I, J in ipairs(ay.Trace) do
                                            pcall(
                                                function()
                                                    if J[3] == br then
                                                        if J[2] == "TRASH" then
                                                            J[1]:Delete()
                                                            table.remove(ay, I)
                                                        end
                                                    end
                                                end
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    end
                else
                    ay.Object = {}
                    for I, J in ipairs(ay.Trace) do
                        pcall(
                            function()
                                if J[2] == "TRASH" then
                                    J[1]:Delete()
                                    table.remove(ay, I)
                                end
                            end
                        )
                    end
                end
            end
        )
        if ap.ESP.EspItems then
            local bn = bm()
            for I, J in ipairs(bn) do
                if not table.find(ay.Items, J) then
                    table.insert(ay.Items, J)
                    local bt = J:FindFirstChildWhichIsA("BasePart")
                    local bs = k:Tracer(bt, {AutoDelete = true, Color = Color3.fromRGB(0, 255, 30), AutoUpdate = true})
                    local aR
                    if J.Parent:isA("Model") then
                        aR = J.Parent.Name:gsub("Spot", "")
                    else
                        aR = J.Name
                    end
                    bs:AddUIEsp(aR, "Item", Color3.fromRGB(255, 255, 255))
                    table.insert(ay.Trace, {bs, "ITEM", J})
                end
            end
        else
            ay.Items = {}
            for I, J in ipairs(ay.Trace) do
                pcall(
                    function()
                        if J[2] == "ITEM" then
                            J[1]:Delete()
                            table.remove(ay, I)
                        end
                    end
                )
            end
        end
    end
)
l:NewLoop(
    function()
        if f.Character then
            if E then
                for I, J in ipairs(f.Character:GetDescendants()) do
                    if J:isA("BasePart") then
                        J.CanCollide = false
                    end
                end
            end
        end
    end
)
l:NewLoop(
    function()
        if ap.AutoKill.AutoKill then
            for V, br in ipairs(game:GetService("Players"):GetPlayers()) do
                if br.Team == A then
                    if br.Character and br.Character:FindFirstChild("Humanoid").Health > 0 then
                        if not f.Character:FindFirstChild(B) and not f.Backpack:FindFirstChild(B) then
                            b4()
                        end
                        ao = br
                        local bu = br.Character:FindFirstChild("HumanoidRootPart").Position + C
                        local b5 = f.Character:FindFirstChild("HumanoidRootPart").Position + C
                        n:Start(b5)
                        task.wait()
                        n:Start(bu)
                        task.wait()
                        E = true
                        local bv, bw =
                            pcall(
                            function()
                                repeat
                                    task.wait()
                                    if not f.Character:FindFirstChildWhichIsA("IntValue") then
                                        b4()
                                    end
                                    local bx = br.Character:FindFirstChild("HumanoidRootPart").Velocity / 12
                                    local by = Vector3.new(bx.X, 0, bx.Z)
                                    bu = br.Character:FindFirstChild("HumanoidRootPart").Position + C
                                    b5 = f.Character:FindFirstChild("HumanoidRootPart").Position + C
                                    if
                                        ba() and b0(br.Character:FindFirstChild("HumanoidRootPart").Position) <= 14 and
                                            br.Character:FindFirstChild("Humanoid").WalkSpeed <= 23
                                     then
                                        b4()
                                        if
                                            not ba() and
                                                b0(br.Character:FindFirstChild("HumanoidRootPart").Position) <= 14 and
                                                br.Character:FindFirstChild("Humanoid").WalkSpeed <= 23
                                         then
                                            task.wait(as[B] / 5)
                                            n:Stop()
                                            local bz =
                                                game:GetService("RunService").Stepped:Connect(
                                                function()
                                                    local bA =
                                                        br.Character:FindFirstChild("HumanoidRootPart").Position + by +
                                                        Vector3.new(0, 1, 0)
                                                    f.Character:FindFirstChild("HumanoidRootPart").CFrame =
                                                        CFrame.lookAt(
                                                        bA,
                                                        br.Character:FindFirstChild("HumanoidRootPart").Position +
                                                            Vector3.new(0, -10, 0)
                                                    )
                                                end
                                            )
                                            task.wait(as[B] * 2.5)
                                            if bz then
                                                bz:Disconnect()
                                            end
                                            f.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(bu + by)
                                        end
                                    else
                                        task.spawn(
                                            function()
                                                n:Start(bu + by)
                                            end
                                        )
                                        task.wait(0.1)
                                    end
                                until br.Character:FindFirstChild("Humanoid").Health <= 0 or
                                    not game.Players:FindFirstChild(tostring(br)) or
                                    br.Character:FindFirstChild("Torso").Transparency == 1 or
                                    br.Team ~= A or
                                    not ap.AutoKill.AutoKill
                            end
                        )
                        if bw then
                            warn(bw)
                        end
                        E = false
                        if not ap.AutoKill.AutoKill then
                            break
                        end
                    end
                end
            end
        end
    end
)
aT(f.Character)
f.CharacterAdded:Connect(aT)
l:NewLoop(
    function()
        task.wait(2)
        aq()
    end
)
print("[BEDOL HUB]: Aimbot is not Support Solara")
local bB
bB =
    hookmetamethod(
    game,
    "__namecall",
    function(self, ...)
        local bC = {...}
        if getnamecallmethod() == "FireServer" and tostring(self) == "Custom" then
            if ap.Items.Aimbot and az[1] then
                bC[2] = az[1].Character.PrimaryPart.Position
                return bB(self, unpack(bC))
            end
        end
        return bB(self, ...)
    end
)
