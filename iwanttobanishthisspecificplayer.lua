-- iwanttobanishthisspecificplayer GUI (sick gui name right?)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LP = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local partcon = false

local pc = function()
    if partcon then return end
    partcon = true
    local plr = game.Players.LocalPlayer
    task.spawn(function()
        while partcon do
            pcall(function()
                Workspace.FallenPartsDestroyHeight = 0/0
                Workspace.FallHeightEnabled = false
                plr.ReplicationFocus = workspace
                plr.MaximumSimulationRadius = math.huge
                plr.SimulationRadius = 10
                settings().Physics.AllowSleep = false
            end)
            task.wait(0.01)
        end
        pcall(function()
            plr.ReplicationFocus = nil
            plr.SimulationRadius = 256
            plr.MaximumSimulationRadius = 1000
            settings().Physics.AllowSleep = true
        end)
    end)
end

local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local minimizeBtn = Instance.new("TextButton")
local closeBtn = Instance.new("TextButton")
local plrLabel = Instance.new("TextLabel")
local plrInput = Instance.new("TextBox")
local powerLabel = Instance.new("TextLabel")
local powerInput = Instance.new("TextBox")
local viewLabel = Instance.new("TextLabel")
local viewToggle = Instance.new("TextButton")
local targetLabel = Instance.new("TextLabel")
local toggleBtn = Instance.new("TextButton")
local infoLabel = Instance.new("TextLabel")

gui.Name = "iwanttobanishthisspecificplayer"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Name = "Main"
frame.Size = UDim2.new(0, 240, 0, 185)
frame.Position = UDim2.new(0.5, -120, 0.5, -92)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

title.Size = UDim2.new(1, -60, 0, 25)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
title.BorderSizePixel = 0
title.Text = "iwanttobanishthisspecificplayer"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 14
title.Parent = frame

minimizeBtn.Size = UDim2.new(0, 30, 0, 20)
minimizeBtn.Position = UDim2.new(1, -55, 0, 2)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
minimizeBtn.BorderSizePixel = 0
minimizeBtn.Text = "—"
minimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeBtn.Font = Enum.Font.SourceSansBold
minimizeBtn.TextSize = 14
minimizeBtn.AutoButtonColor = false
minimizeBtn.Parent = frame

closeBtn.Size = UDim2.new(0, 30, 0, 20)
closeBtn.Position = UDim2.new(1, -25, 0, 2)
closeBtn.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
closeBtn.BorderSizePixel = 0
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.TextSize = 14
closeBtn.AutoButtonColor = false
closeBtn.Parent = frame

plrLabel.Size = UDim2.new(0, 80, 0, 20)
plrLabel.Position = UDim2.new(0, 10, 0, 35)
plrLabel.BackgroundTransparency = 1
plrLabel.Text = "plr:"
plrLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
plrLabel.Font = Enum.Font.SourceSans
plrLabel.TextSize = 14
plrLabel.Parent = frame

plrInput.Size = UDim2.new(1, -100, 0, 20)
plrInput.Position = UDim2.new(0, 90, 0, 35)
plrInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
plrInput.BorderSizePixel = 0
plrInput.TextColor3 = Color3.fromRGB(255, 255, 255)
plrInput.PlaceholderText = "Username/Display or 'all'"
plrInput.Font = Enum.Font.SourceSans
plrInput.TextSize = 14
plrInput.ClearTextOnFocus = false
plrInput.Parent = frame

powerLabel.Size = UDim2.new(0, 80, 0, 20)
powerLabel.Position = UDim2.new(0, 10, 0, 65)
powerLabel.BackgroundTransparency = 1
powerLabel.Text = "powa:"
powerLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
powerLabel.Font = Enum.Font.SourceSans
powerLabel.TextSize = 14
powerLabel.Parent = frame

powerInput.Size = UDim2.new(1, -100, 0, 20)
powerInput.Position = UDim2.new(0, 90, 0, 65)
powerInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
powerInput.BorderSizePixel = 0
powerInput.Text = "900"
powerInput.TextColor3 = Color3.fromRGB(255, 255, 255)
powerInput.Font = Enum.Font.SourceSans
powerInput.TextSize = 14
powerInput.ClearTextOnFocus = false
powerInput.Parent = frame

viewLabel.Size = UDim2.new(0, 80, 0, 20)
viewLabel.Position = UDim2.new(0, 10, 0, 92)
viewLabel.BackgroundTransparency = 1
viewLabel.Text = "seek:"
viewLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
viewLabel.Font = Enum.Font.SourceSans
viewLabel.TextSize = 14
viewLabel.Parent = frame

viewToggle.Size = UDim2.new(0, 60, 0, 20)
viewToggle.Position = UDim2.new(0, 90, 0, 92)
viewToggle.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
viewToggle.BorderSizePixel = 0
viewToggle.Text = "OFF"
viewToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
viewToggle.Font = Enum.Font.SourceSansBold
viewToggle.TextSize = 12
viewToggle.AutoButtonColor = false
viewToggle.Parent = frame

targetLabel.Size = UDim2.new(0, 80, 0, 16)
targetLabel.Position = UDim2.new(0, 155, 0, 94)
targetLabel.BackgroundTransparency = 1
targetLabel.Text = ""
targetLabel.TextColor3 = Color3.fromRGB(255, 255, 100)
targetLabel.Font = Enum.Font.SourceSans
targetLabel.TextSize = 11
targetLabel.TextXAlignment = Enum.TextXAlignment.Left
targetLabel.Parent = frame

toggleBtn.Size = UDim2.new(1, -20, 0, 30)
toggleBtn.Position = UDim2.new(0, 10, 0, 120)
toggleBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
toggleBtn.BorderSizePixel = 0
toggleBtn.Text = "START"
toggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleBtn.Font = Enum.Font.SourceSansBold
toggleBtn.TextSize = 16
toggleBtn.Parent = frame

infoLabel.Size = UDim2.new(1, -20, 0, 16)
infoLabel.Position = UDim2.new(0, 10, 0, 155)
infoLabel.BackgroundTransparency = 1
infoLabel.Text = "(@gpssickle) Targets: 0 / Cycling: Hell nah"
infoLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
infoLabel.Font = Enum.Font.SourceSans
infoLabel.TextSize = 11
infoLabel.TextXAlignment = Enum.TextXAlignment.Left
infoLabel.Parent = frame

gui.Parent = (LP.PlayerGui or game:GetService("CoreGui"))

local f = false
local vi = false
local powa = 900
local org = nil
local orgg = Workspace.FallenPartsDestroyHeight
local tar = {}
local tarindex = 1
local alllllll = false
local respawnfullly = {}
local dihhh = false
local collapsed = false
local orggg = frame.Size
local sigram = nil
local ft = nil
local fr = false
local buhbye = false
local seatMonitorThread = nil

pc()

minimizeBtn.MouseButton1Click:Connect(function()
    collapsed = not collapsed
    if collapsed then
        orggg = frame.Size
        frame.Size = UDim2.new(0, 240, 0, 25)
        plrLabel.Visible = false
        plrInput.Visible = false
        powerLabel.Visible = false
        powerInput.Visible = false
        viewLabel.Visible = false
        viewToggle.Visible = false
        targetLabel.Visible = false
        toggleBtn.Visible = false
        infoLabel.Visible = false
        minimizeBtn.Text = "+"
    else
        frame.Size = orggg
        plrLabel.Visible = true
        plrInput.Visible = true
        powerLabel.Visible = true
        powerInput.Visible = true
        viewLabel.Visible = true
        viewToggle.Visible = true
        targetLabel.Visible = true
        toggleBtn.Visible = true
        infoLabel.Visible = true
        minimizeBtn.Text = "—"
    end
end)

local function findit()
    local pattern = plrInput.Text:lower()
    if pattern == "" then return nil end
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LP then
            if p.Name:lower():find(pattern) or (p.DisplayName:lower():find(pattern)) then
                return p
            end
        end
    end
    return nil
end

local function refreshit()
    if not vi then return end
    local target = findit()
    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = target.Character.HumanoidRootPart
        workspace.CurrentCamera.CameraSubject = hrp
        workspace.CurrentCamera.CFrame = CFrame.new(hrp.Position + Vector3.new(0, 5, 10), hrp.Position)
        targetLabel.Text = target.Name
    elseif target then
        targetLabel.Text = target.Name .. " (bro ded)"
    else
        targetLabel.Text = "No target"
    end
end

local function seekit()
    if sigram then
        sigram:Disconnect()
        sigram = nil
    end
    sigram = RunService.RenderStepped:Connect(function()
        if not vi then
            if sigram then
                sigram:Disconnect()
                sigram = nil
            end
            return
        end
        refreshit()
    end)
    refreshit()
end

local function noseek()
    if sigram then
        sigram:Disconnect()
        sigram = nil
    end
    if LP.Character and LP.Character:FindFirstChild("Humanoid") then
        workspace.CurrentCamera.CameraSubject = LP.Character.Humanoid
    end
    targetLabel.Text = ""
end

local function getname(pattern)
    local list = {}
    pattern = pattern:lower()
    if pattern == "all" then
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LP then
                table.insert(list, p)
            end
        end
    else
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LP then
                if p.Name:lower():find(pattern) or (p.DisplayName:lower():find(pattern)) then
                    table.insert(list, p)
                end
            end
        end
    end
    return list
end

local function re(target)
    if respawnfullly[target] then
        respawnfullly[target]:Disconnect()
    end
    respawnfullly[target] = target.CharacterAdded:Connect(function(newChar)
        if not f then return end
        local hrp = newChar:WaitForChild("HumanoidRootPart", 5)
        if not hrp then return end
        local found = false
        for _, t in ipairs(tar) do
            if t == target then
                found = true
                break
            end
        end
        if not found then
            table.insert(tar, target)
            infoLabel.Text = "(@gpssickle) Targets: " .. #tar .. " / Cycling: " .. (alllllll and "Yessirski" or "Hell nah")
        end
    end)
end

local function clrre()
    for _, conn in pairs(respawnfullly) do
        pcall(function() conn:Disconnect() end)
    end
    respawnfullly = {}
end

local function setInvisible(state)
    local char = LP.Character
    if char then
        for _, part in ipairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Transparency = state and 1 or 0
            elseif part:IsA("Decal") or part:IsA("Texture") then
                part.Transparency = state and 1 or 0
            end
        end
        local humanoid = char:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.HealthDisplayDistance = state and 0 or 100
            humanoid.NameDisplayDistance = state and 0 or 100
        end
    end
    dihhh = state
end

local function nothrow()
    f = false
    fr = false
    ft = nil
    clrre()
    task.wait(0.15)
    local char = LP.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if hrp then
        for _, child in ipairs(hrp:GetChildren()) do
            if child:IsA("BodyVelocity")
                or child:IsA("BodyGyro")
                or child:IsA("BodyAngularVelocity")
                or child:IsA("BodyForce") then
                child:Destroy()
            end
        end
    end
    setInvisible(false)
    Workspace.FallenPartsDestroyHeight = orgg
    Workspace.FallHeightEnabled = true
    if hrp and org then
        hrp.CFrame = org
        hrp.Velocity = Vector3.zero
        hrp.RotVelocity = Vector3.zero
        hrp.AssemblyLinearVelocity = Vector3.zero
        hrp.AssemblyAngularVelocity = Vector3.zero
        if char then
            char:SetPrimaryPartCFrame(org)
        end
        pcall(sethiddenproperty, hrp, "PhysicsRepRootPart", hrp)
    end
    if char then
        local humanoid = char:FindFirstChildOfClass("Humanoid")
        if humanoid then
            workspace.CurrentCamera.CameraSubject = humanoid
        end
    end
    tar = {}
    tarindex = 1
    org = nil
    toggleBtn.Text = "START"
    toggleBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
    infoLabel.Text = "(@gpssickle) Targets: 0 / Cycling: Hell nah"
end

local function waitforit()
    while f do
        local charAdded = LP.CharacterAdded:Wait()
        task.wait(0.5)
        local char = charAdded
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local humanoid = char and char:FindFirstChild("Humanoid")
        if hrp and humanoid then
            repeat
                task.wait(0.1)
                humanoid = char:FindFirstChild("Humanoid")
            until not humanoid or humanoid.Health > 0 or not f
            if not f then break end
            org = hrp.CFrame
            setInvisible(true)
            for _, target in ipairs(tar) do
                re(target)
            end
            break
        end
    end
end

local function nosittingforyou()
    local char = LP.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    if not hum.Sit then return end
    local seat = hum.SeatPart
    if not seat then return end
    if not (seat:IsA("Seat") or seat:IsA("VehicleSeat")) then return end
    pcall(function()
        hum.Sit = false
        hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        hum:ChangeState(Enum.HumanoidStateType.Jumping)
    end)
    task.delay(0.25, function()
        if hum and hum.Parent then
            pcall(function()
                hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            end)
        end
    end)
end

local function meh()
    if seatMonitorThread then return end
    seatMonitorThread = task.spawn(function()
        while f do
            pcall(nosittingforyou)
            task.wait(0.1)
        end
        seatMonitorThread = nil
    end)
end

local function mehh()
    local char = LP.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            pcall(function()
                hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            end)
        end
    end
    seatMonitorThread = nil
end

local function seaterchecker(TargetPlayer)
    local TCharacter = TargetPlayer.Character
    if not TCharacter then return nil, "nochar" end
    local THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    if not THumanoid then return nil, "nohum" end
    if not THumanoid.Sit then
        return THumanoid, "standing"
    end
    local seat = THumanoid.SeatPart
    if not seat then
        return THumanoid, "standing"
    end
    if not (seat:IsA("Seat") or seat:IsA("VehicleSeat")) then
        return THumanoid, "standing"
    end
    if seat.Anchored then
        return nil, "anchored"
    end
    return THumanoid, "unanchored"
end

local function stupidfling(TargetPlayer)
    if fr then return false end
    local THumanoid, seatState = seaterchecker(TargetPlayer)
    if not THumanoid then
        return false
    end
    fr = true
    local Character = LP.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart
    local TCharacter = TargetPlayer.Character
    local TRootPart = THumanoid.RootPart
    local THead = TCharacter and TCharacter:FindFirstChild("Head")
    local Accessory = TCharacter and TCharacter:FindFirstChildOfClass("Accessory")
    local Handle = Accessory and Accessory:FindFirstChild("Handle")
    if not Character or not Humanoid or not RootPart then
        fr = false
        return false
    end
    if not TCharacter or not THumanoid then
        fr = false
        return false
    end
    local OldPos = RootPart.CFrame
    local OldFPDH = workspace.FallenPartsDestroyHeight
    workspace.FallenPartsDestroyHeight = 0/0
    workspace.FallHeightEnabled = false
    if THead then
        workspace.CurrentCamera.CameraSubject = THead
    elseif Handle then
        workspace.CurrentCamera.CameraSubject = Handle
    else
        workspace.CurrentCamera.CameraSubject = THumanoid
    end
    local folkenhawking = Instance.new("BodyVelocity")
    folkenhawking.Name = "4827288273838_83727_38282829"
    folkenhawking.Parent = RootPart
    folkenhawking.Velocity = Vector3.new(9e8, 9e8, 9e8)
    folkenhawking.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
    Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    local function bppos(BasePart, Pos, Ang)
        if not f then return end
        if not RootPart or not RootPart.Parent then return end
        RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
        Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
        RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
        RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
    end
    local function bpart(BasePart)
        local TimeToWait = 1
        local Time = tick()
        local Angle = 0
        repeat
            if not f then break end
            if not RootPart or not RootPart.Parent then break end
            if not THumanoid or not THumanoid.Parent then break end
            if not BasePart or not BasePart.Parent then break end
            if BasePart.Velocity.Magnitude < 50 then
                Angle = Angle + 100
                bppos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection, CFrame.Angles(math.rad(Angle), 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection, CFrame.Angles(math.rad(Angle), 0, 0))
                task.wait()
            else
                bppos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(-90), 0, 0))
                task.wait()
                bppos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                task.wait()
            end
        until not f
            or BasePart.Velocity.Magnitude > 500
            or BasePart.Parent ~= TargetPlayer.Character
            or TargetPlayer.Parent ~= Players
            or THumanoid.Sit
            or Humanoid.Health <= 0
            or tick() > Time + TimeToWait
    end
    if TRootPart and THead then
        if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
            bpart(THead)
        else
            bpart(TRootPart)
        end
    elseif TRootPart and not THead then
        bpart(TRootPart)
    elseif not TRootPart and THead then
        bpart(THead)
    elseif not TRootPart and not THead and Accessory and Handle then
        bpart(Handle)
    end
    if folkenhawking then folkenhawking:Destroy() end
    if Humanoid and Humanoid.Parent then
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    end
    if f and RootPart and RootPart.Parent and Character and Character.Parent then
        workspace.CurrentCamera.CameraSubject = Humanoid
        RootPart.CFrame = OldPos
        RootPart.Velocity = Vector3.zero
        RootPart.RotVelocity = Vector3.zero
        Character:SetPrimaryPartCFrame(OldPos)
    end
    workspace.FallenPartsDestroyHeight = OldFPDH
    workspace.FallHeightEnabled = true
    fr = false
    return true
end

local function floop()
    while f do
        local lchar = LP.Character
        local lhrp = lchar and lchar:FindFirstChild("HumanoidRootPart")
        local humanoid = lchar and lchar:FindFirstChild("Humanoid")
        if not lhrp or not humanoid or humanoid.Health <= 0 then
            waitforit()
            if not f then break end
            task.wait(0.1)
            continue
        end
        if #tar == 0 then break end
        if tarindex > #tar then
            tarindex = 1
        end
        local target = tar[tarindex]
        if not target then
            if #tar > 0 then
                tarindex = 1
                target = tar[1]
            else
                break
            end
        end
        local tchar = target and target.Character
        local thrp = tchar and tchar:FindFirstChild("HumanoidRootPart")
        if not thrp then
            if dihhh then setInvisible(false) end
            if alllllll and #tar > 1 then
                tarindex = tarindex + 1
                if tarindex > #tar then tarindex = 1 end
            end
            task.wait(0.1)
            continue
        end
        local _, seatState = seaterchecker(target)
        if seatState == "anchored" then
            if dihhh then setInvisible(false) end
            if alllllll and #tar > 1 then
                tarindex = tarindex + 1
                if tarindex > #tar then tarindex = 1 end
                task.wait(0.05)
                continue
            else
                task.wait(0.1)
                continue
            end
        end
        if seatState == "nochar" or seatState == "nohum" then
            if dihhh then setInvisible(false) end
            if alllllll and #tar > 1 then
                tarindex = tarindex + 1
                if tarindex > #tar then tarindex = 1 end
            end
            task.wait(0.1)
            continue
        end
        if not dihhh then setInvisible(true) end
        stupidfling(target)
        task.wait(0.05)
        if alllllll and #tar > 1 then
            tarindex = tarindex + 1
            if tarindex > #tar then tarindex = 1 end
        end
    end
end

local function throwit()
    if f then
        nothrow()
        mehh()
        return
    end
    local char = LP.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then
        warn("You must have a character!")
        return
    end
    org = hrp.CFrame
    orgg = Workspace.FallenPartsDestroyHeight
    local targetPattern = plrInput.Text
    local powerNum = tonumber(powerInput.Text) or 900
    powa = powerNum
    alllllll = (targetPattern:lower() == "all")
    tar = getname(targetPattern)
    if #tar == 0 then
        warn("No players matched that pattern.")
        return
    end
    f = true
    toggleBtn.Text = "STOP"
    toggleBtn.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
    infoLabel.Text = "(@gpssickle) Targets: " .. #tar .. " / Cycling: " .. (alllllll and "Yessirski" or "Hell nah")
    for _, target in ipairs(tar) do
        re(target)
    end
    meh()
    ft = task.spawn(floop)
end

local player = Players.LocalPlayer
local function folk(character)
    local hrp = character:WaitForChild("HumanoidRootPart", 5)
    if not hrp then return end
    RunService.RenderStepped:Connect(function()
        if hrp.Parent then
            hrp.LocalTransparencyModifier = 1
            hrp.Transparency = 1
        end
    end)
end
if player.Character then
    folk(player.Character)
end
player.CharacterAdded:Connect(folk)

local function buhhhhhbyyeeee()
    if buhbye then return end
    buhbye = true
    partcon = false
    f = false
    fr = false
    ft = nil
    mehh()
    for _, conn in pairs(respawnfullly) do
        pcall(function() conn:Disconnect() end)
    end
    respawnfullly = {}
    if sigram then
        pcall(function() sigram:Disconnect() end)
        sigram = nil
    end
    vi = false
    local char = LP.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if hrp then
        for _, child in ipairs(hrp:GetChildren()) do
            if child:IsA("BodyVelocity")
                or child:IsA("BodyGyro")
                or child:IsA("BodyAngularVelocity")
                or child:IsA("BodyForce") then
                pcall(function() child:Destroy() end)
            end
        end
        if org then
            pcall(function()
                hrp.CFrame = org
                hrp.Velocity = Vector3.zero
                hrp.RotVelocity = Vector3.zero
                hrp.AssemblyLinearVelocity = Vector3.zero
                hrp.AssemblyAngularVelocity = Vector3.zero
            end)
        end
    end
    if char and org then
        pcall(function() char:SetPrimaryPartCFrame(org) end)
    end
    pcall(function()
        Workspace.FallenPartsDestroyHeight = orgg
        Workspace.FallHeightEnabled = true
    end)
    pcall(function() setInvisible(false) end)
    if char then
        local humanoid = char:FindFirstChildOfClass("Humanoid")
        if humanoid then
            pcall(function() workspace.CurrentCamera.CameraSubject = humanoid end)
        end
    end
    tar = {}
    tarindex = 1
    org = nil
    alllllll = false
    dihhh = false
end

toggleBtn.MouseButton1Click:Connect(throwit)

viewToggle.MouseButton1Click:Connect(function()
    vi = not vi
    if vi then
        viewToggle.Text = "ON"
        viewToggle.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
        seekit()
    else
        viewToggle.Text = "OFF"
        viewToggle.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
        noseek()
    end
end)

plrInput:GetPropertyChangedSignal("Text"):Connect(function()
    if vi then
        refreshit()
    end
end)

LP.CharacterAdded:Connect(function()
    if f then
        clrre()
        for _, target in ipairs(tar) do
            re(target)
        end
    end
end)

closeBtn.MouseButton1Click:Connect(function()
    buhhhhhbyyeeee()
    if gui then
        gui:Destroy()
    end
end)

gui.Destroying:Connect(function()
    buhhhhhbyyeeee()
end)
