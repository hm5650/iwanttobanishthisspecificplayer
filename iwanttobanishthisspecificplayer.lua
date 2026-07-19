-- iwanttobanishthisspecificplayer GUI (sick gui name right?)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LP = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local pc = function()
    local plr = game.Players.LocalPlayer
    task.spawn(function()
        while true do
            pcall(function()
                Workspace.FallenPartsDestroyHeight = -999999999999999999999999999999999999999999999999e9999999999999999999999999999999999999999999999999999999999999999999
                plr.ReplicationFocus = workspace
                plr.MaximumSimulationRadius = math.huge
                plr.SimulationRadius = 10
                settings().Physics.AllowSleep = false
            end)
            task.wait(0.01)
        end
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
local isFlinging = false
local isViewEnabled = false
local flingPower = 900
local originalCFrame = nil
local connection = nil
local currentTargets = {}
local currentTargetIndex = 1
local useAllMode = false
local respawnConnections = {}
local isInvisible = false
local isMinimized = false
local originalSize = frame.Size
pc()
minimizeBtn.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    
    if isMinimized then
        originalSize = frame.Size
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
        frame.Size = originalSize
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
closeBtn.MouseButton1Click:Connect(function()
    if isFlinging then
        nothrow()
    end
    if viewConnection then
        viewConnection:Disconnect()
    end
    gui:Destroy()
end)
local viewConnection = nil
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
    if not isViewEnabled then return end
    
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
    if viewConnection then
        viewConnection:Disconnect()
    end
    
    viewConnection = RunService.RenderStepped:Connect(function()
        if not isViewEnabled then
            if viewConnection then
                viewConnection:Disconnect()
                viewConnection = nil
            end
            return
        end
        refreshit()
    end)
    
    refreshit()
end
local function noseek()
    if viewConnection then
        viewConnection:Disconnect()
        viewConnection = nil
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
    if respawnConnections[target] then
        respawnConnections[target]:Disconnect()
    end
    
    respawnConnections[target] = target.CharacterAdded:Connect(function(newChar)
        if not isFlinging then return end
        
        local hrp = newChar:WaitForChild("HumanoidRootPart", 5)
        if not hrp then return end
        
        local found = false
        for _, t in ipairs(currentTargets) do
            if t == target then
                found = true
                break
            end
        end
        if not found then
            table.insert(currentTargets, target)
            infoLabel.Text = "(@gpssickle) Targets: " .. #currentTargets .. " / Cycling: " .. (useAllMode and "Yessirski" or "Hell nah")
        end
    end)
end
local function clrre()
    for target, conn in pairs(respawnConnections) do
        conn:Disconnect()
    end
    respawnConnections = {}
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
    isInvisible = state
end
local function nothrow()
    isFlinging = false
    
    if connection then
        connection:Disconnect()
        connection = nil
    end
    clrre()
    
    setInvisible(false)
    
    local char = LP.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if hrp and originalCFrame then
        hrp.CFrame = originalCFrame
        hrp.Velocity = Vector3.zero
        hrp.RotVelocity = Vector3.zero
        hrp.AssemblyLinearVelocity = Vector3.zero
        hrp.AssemblyAngularVelocity = Vector3.zero
        pcall(sethiddenproperty, hrp, "PhysicsRepRootPart", hrp)
    end
    
    currentTargets = {}
    currentTargetIndex = 1
    toggleBtn.Text = "START"
    toggleBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
    infoLabel.Text = "(@gpssickle) Targets: 0 / Cycling: Hell nah"
end
local function waitforit()
    while isFlinging do
        local charAdded = LP.CharacterAdded:Wait()
        task.wait(0.5)
        
        local char = charAdded
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local humanoid = char and char:FindFirstChild("Humanoid")
        
        if hrp and humanoid then
            repeat
                task.wait(0.1)
                humanoid = char:FindFirstChild("Humanoid")
            until not humanoid or humanoid.Health > 0 or not isFlinging
            
            if not isFlinging then break end
            originalCFrame = hrp.CFrame
            setInvisible(true)
            for _, target in ipairs(currentTargets) do
                re(target)
            end
            
            break
        end
    end
end
local function throwit()
    if isFlinging then
        nothrow()
        return
    end
    
    local char = LP.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then
        warn("You must have a character!")
        return
    end
    originalCFrame = hrp.CFrame
    
    local targetPattern = plrInput.Text
    local powerStr = powerInput.Text
    local powerNum = tonumber(powerStr)
    if not powerNum then
        powerNum = 900
    end
    flingPower = powerNum
    
    useAllMode = (targetPattern:lower() == "all")
    currentTargets = getname(targetPattern)
    
    if #currentTargets == 0 then
        warn("No players matched that pattern.")
        return
    end
    
    isFlinging = true
    toggleBtn.Text = "STOP"
    toggleBtn.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
    infoLabel.Text = "(@gpssickle) Targets: " .. #currentTargets .. " / Cycling: " .. (useAllMode and "Yessirski" or "Hell nah")
    
    setInvisible(true)
    
    for _, target in ipairs(currentTargets) do
        re(target)
    end
    
    connection = RunService.Heartbeat:Connect(function()
        if not isFlinging then return end
        local lchar = LP.Character
        local lhrp = lchar and lchar:FindFirstChild("HumanoidRootPart")
        local humanoid = lchar and lchar:FindFirstChild("Humanoid")
        
        if not lhrp or not humanoid or humanoid.Health <= 0 then
            if connection then
                connection:Disconnect()
                connection = nil
            end
            task.spawn(function()
                waitforit()
                if isFlinging then
                    connection = RunService.Heartbeat:Connect(function()
                        if not isFlinging then return end
                        
                        local lchar2 = LP.Character
                        local lhrp2 = lchar2 and lchar2:FindFirstChild("HumanoidRootPart")
                        local humanoid2 = lchar2 and lchar2:FindFirstChild("Humanoid")
                        
                        if not lhrp2 or not humanoid2 or humanoid2.Health <= 0 then
                            return
                        end
                        
                        if currentTargetIndex > #currentTargets then
                            currentTargetIndex = 1
                        end
                        
                        local target = currentTargets[currentTargetIndex]
                        if not target then
                            if #currentTargets > 0 then
                                currentTargetIndex = 1
                                target = currentTargets[1]
                            else
                                return
                            end
                        end
                        
                        local tchar = target.Character
                        local thrp = tchar and tchar:FindFirstChild("HumanoidRootPart")
                        
                        if not thrp then
                            if useAllMode then
                                currentTargetIndex = currentTargetIndex + 1
                                if currentTargetIndex > #currentTargets then
                                    currentTargetIndex = 1
                                end
                            end
                            return
                        end
                        
                        lhrp2.CFrame = thrp.CFrame
                        pcall(sethiddenproperty, lhrp2, "PhysicsRepRootPart", thrp)
                        lhrp2.Velocity = Vector3.new(0, -flingPower, 0)
                        lhrp2.RotVelocity = Vector3.zero
                        
                        if useAllMode and #currentTargets > 1 then
                            currentTargetIndex = currentTargetIndex + 1
                            if currentTargetIndex > #currentTargets then
                                currentTargetIndex = 1
                            end
                        end
                    end)
                end
            end)
            return
        end
        
        if currentTargetIndex > #currentTargets then
            currentTargetIndex = 1
        end
        
        local target = currentTargets[currentTargetIndex]
        if not target then
            if #currentTargets > 0 then
                currentTargetIndex = 1
                target = currentTargets[1]
            else
                return
            end
        end
        
        local tchar = target.Character
        local thrp = tchar and tchar:FindFirstChild("HumanoidRootPart")
        
        if not thrp then
            if useAllMode then
                currentTargetIndex = currentTargetIndex + 1
                if currentTargetIndex > #currentTargets then
                    currentTargetIndex = 1
                end
            end
            return
        end
        
        lhrp.CFrame = thrp.CFrame
        pcall(sethiddenproperty, lhrp, "PhysicsRepRootPart", thrp)
        lhrp.Velocity = Vector3.new(0, -flingPower, 0)
        lhrp.RotVelocity = Vector3.zero
        
        if useAllMode and #currentTargets > 1 then
            currentTargetIndex = currentTargetIndex + 1
            if currentTargetIndex > #currentTargets then
                currentTargetIndex = 1
            end
        end
    end)
end
local player = Players.LocalPlayer
local function folk(character)
	local hrp = character:WaitForChild("HumanoidRootPart", 5)
	if not hrp then
		return
	end

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
toggleBtn.MouseButton1Click:Connect(throwit)

viewToggle.MouseButton1Click:Connect(function()
    isViewEnabled = not isViewEnabled
    
    if isViewEnabled then
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
    if isViewEnabled then
        refreshit()
    end
end)
LP.CharacterAdded:Connect(function()
    if isFlinging then
        clrre()
        for _, target in ipairs(currentTargets) do
            re(target)
        end
        setInvisible(true)
    end
end)
