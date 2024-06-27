Kira = getgenv().Kira
if Kira.Setup.Loaded then
    local kiraUI = Instance.new("ScreenGui")
    kiraUI.Name = "KiraUI"
    kiraUI.Parent = game.CoreGui
    kiraUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    local Blur = Instance.new("BlurEffect")
    Blur.Name = "kiraUIBlur"
    Blur.Size = 0
    Blur.Parent = game.Lighting
    
    local function tweenGui(uiObject, properties, duration)
        local tweenInfo = TweenInfo.new(duration or 1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
        local tween = game:GetService("TweenService"):Create(uiObject, tweenInfo, properties)
        tween:Play()
        return tween
    end
    
    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Parent = kiraUI
    Title.Size = UDim2.new(0, 230, 0, 50)
    Title.Position = UDim2.new(0.5, -60, 0.5, -25)
    Title.AnchorPoint = Vector2.new(0.4, 0.5)
    Title.BackgroundTransparency = 1
    Title.Text = "Kira"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.Font = Enum.Font.SourceSansBold
    
    local ccLabel = Instance.new("TextLabel")
    ccLabel.Name = "CCLabel"
    ccLabel.Parent = Title
    ccLabel.Size = UDim2.new(0, 140, 0, 50)
    ccLabel.Position = UDim2.new(0.54, -10, 0, 0)
    ccLabel.AnchorPoint = Vector2.new(0, 0)
    ccLabel.BackgroundTransparency = 1
    ccLabel.Text = ".CC"
    ccLabel.TextColor3 = Color3.fromRGB(127,255,0)
    ccLabel.TextScaled = true
    ccLabel.Font = Enum.Font.SourceSansBold
    
    local Subtext = Instance.new("TextLabel")
    Subtext.Name = "Subtext"
    Subtext.Parent = kiraUI
    Subtext.Size = UDim2.new(0, 300, 0, 20)
    Subtext.Position = UDim2.new(0.5, 0, 0.5, -3)
    Subtext.AnchorPoint = Vector2.new(0.5, 0)
    Subtext.BackgroundTransparency = 1
    Subtext.Text = "The future of Da Hood exploiting."
    Subtext.TextColor3 = Color3.fromRGB(255, 255, 255)
    Subtext.TextScaled = true
    Subtext.Font = Enum.Font.SourceSans
    
    local function showUI()
        tweenGui(Title, { TextTransparency = 0 }, 0.5)
        tweenGui(ccLabel, { TextTransparency = 0 }, 0.5)
        tweenGui(Subtext, { TextTransparency = 0 }, 0.5)
        tweenGui(Blur, { Size = 20 }, 0.5)
    
        wait(5)
    
        local fadeOutTween1 = tweenGui(Title, { TextTransparency = 1 }, 0.5)
        tweenGui(ccLabel, { TextTransparency = 1 }, 0.5)
        tweenGui(Subtext, { TextTransparency = 1 }, 0.5)
        tweenGui(Blur, { Size = 0 }, 0.5)
    
        fadeOutTween1.Completed:Connect(function()
            kiraUI:Destroy()
        end)
    end
    
    showUI()
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = game.Workspace.CurrentCamera
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local function GlobalChecks(Target)
    if Kira.Checks.Dead then
        if Target.Character.BodyEffects["K.O"].Value then
            return false
        end
    end

    if Kira.Checks.Grabbed then
        if Target.Character:FindFirstChild("GRABBING_CONSTRAINT") then
            return false
        end
    end

    if Kira.Checks.Visible then
        local head = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head")
        local TargetVisiblePart = Target.Character:FindFirstChild("Head")

        if head and TargetVisiblePart then
            local ray = Ray.new(head.Position, (TargetVisiblePart.Position - head.Position).unit * 9e9)
            local part, position = game.Workspace:FindPartOnRay(ray, LocalPlayer.Character)
            
            if part and part:IsDescendantOf(Target.Character) then
                return true
            else
                return false
            end
        end
    end

    return true
end

local function DrawCamlockFOVCircle()
    local FOVCircle = Drawing.new("Circle")
    FOVCircle.Thickness = Kira.Camlock.FOV.Thickness or 1
    FOVCircle.NumSides = 64
    FOVCircle.Radius = Kira.Camlock.FOV.Radius or 150
    FOVCircle.Color = Kira.Camlock.FOV.Color or Color3.fromRGB(255, 0, 0)
    FOVCircle.Transparency = Kira.Camlock.FOV.Transparency or 0.5
    FOVCircle.Visible = Kira.Camlock.FOV.Visible
    FOVCircle.Filled = false

    return FOVCircle
end

local function DrawSilentFOVCircle()
    local FOVCircle = Drawing.new("Circle")
    FOVCircle.Thickness = Kira.Silent.FOV.Thickness or 1
    FOVCircle.Radius = Kira.Silent.FOV.Radius or 150
    FOVCircle.Color = Kira.Silent.FOV.Color or Color3.fromRGB(255, 0, 0)
    FOVCircle.Transparency = Kira.Silent.FOV.Transparency or 0.5
    FOVCircle.Visible = Kira.Silent.FOV.Visible
    FOVCircle.Filled = false

    return FOVCircle
end

local CamlockFOVCircle = DrawCamlockFOVCircle()
local SilentFOVCircle = DrawSilentFOVCircle()

local function GetClosestTargetToMouse()
    local closestTarget = nil
    local shortestDistance = Kira.Camlock.FOV.Radius 

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild(Kira.Camlock.HitPart) then
            local TargetPart = player.Character:FindFirstChild(Kira.Camlock.HitPart)
            local ScreenPoint, onScreen = Camera:WorldToScreenPoint(TargetPart.Position)
            
            if onScreen then
                local mouseLocation = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
                local distance = (Vector2.new(ScreenPoint.X, ScreenPoint.Y) - mouseLocation).magnitude
                
                if distance < shortestDistance and GlobalChecks(player) then
                    closestTarget = player
                    shortestDistance = distance
                end
            end
        end
    end

    return closestTarget
end

local function GetClosestTargetToMouse_Silent()
    local closestTarget = nil
    local shortestDistance = Kira.Silent.FOV.Radius

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild(Kira.Silent.HitPart) then
            local TargetPart = player.Character:FindFirstChild(Kira.Silent.HitPart)
            local ScreenPoint, onScreen = Camera:WorldToScreenPoint(TargetPart.Position)
            
            if onScreen then
                local mouseLocation = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
                local distance = (Vector2.new(ScreenPoint.X, ScreenPoint.Y) - mouseLocation).magnitude
                
                if distance < shortestDistance and GlobalChecks(player) then
                    closestTarget = player
                    shortestDistance = distance
                end
            end
        end
    end

    return closestTarget
end
local function PredictTargetPosition(Target)
    local TargetPart = Target.Character:FindFirstChild(Kira.Camlock.HitPart)
    local Velocity = TargetPart.Velocity
    local RegularPrediction

    if Kira.Camlock.Prediction.AutoPred then
        local ping = tonumber(string.split(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), '(')[1])
        RegularPrediction = ping < 130 and (ping / 1000 + 0.037) or (ping / 1000 + 0.033)
    else
        if Kira.Camlock.Prediction.Enable_Axis then
            RegularPrediction = Vector3.new(Kira.Camlock.Prediction.X_Axis, Kira.Camlock.Prediction.Y_Axis, 0)
        else
            RegularPrediction = Kira.Camlock.Prediction.Regular_Prediction
        end
    end

    local PredictedPosition = TargetPart.Position + Velocity * (RegularPrediction or 0)
    return PredictedPosition
end

local SelectedEasing = Kira.Camlock.Smoothness.Easing
local Direction_1 = Kira.Camlock.Smoothness.Direction
local LockedTarget = nil

local sgg = Instance.new("ScreenGui")
sgg.Parent = game.CoreGui
sgg.Enabled = true
    
local wm = Instance.new("TextLabel")
wm.Size = UDim2.new(0, 200, 0, 20)
wm.TextColor3 = Color3.new(1, 1, 1)
wm.BackgroundTransparency = 1
wm.TextTransparency = 0.6
wm.Font = Enum.Font.Code
wm.TextSize = 14
wm.Text = "grim.cc : streamable"
wm.TextStrokeTransparency = 0.8
wm.Visible = false
wm.Parent = sgg
    
local function updateWatermarkPosition()
    local Mouse = Players.LocalPlayer:GetMouse()
    wm.Position = UDim2.new(0, Mouse.X - wm.AbsoluteSize.X / 2, 0, Mouse.Y + 25)
end

RunService.RenderStepped:Connect(function()
    if getgenv().CursorWM then
        updateWatermarkPosition()
    end
end)
local function Velocity_V1(target)
    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = target.Character.HumanoidRootPart
        local lastPos = hrp.Position
        task.wait()
        local currentPos = hrp.Position
        local velocity = (currentPos - lastPos) * 0
        
        hrp.Velocity = velocity
        hrp.AssemblyLinearVelocity = velocity
    end
end

RunService.RenderStepped:Connect(function()
    if Kira.Resolver.Enabled then
        local target1 = GetClosestTargetToMouse()
        local target2 = GetClosestTargetToMouse_Silent()

        if Kira.Resolver.Mode == 'Recalculate' then
            Velocity_V1(target1)
            Velocity_V1(target2)
        end
    end
end)

local function Camlock()
    if Kira.Camlock.Enabled == false then
        LockedTarget = nil
        return
    end
    if not Kira.Camlock.Enabled then
        LockedTarget = nil
        return
    end

    if not LockedTarget then
        LockedTarget = GetClosestTargetToMouse()
    end

    if LockedTarget and GlobalChecks(LockedTarget) then
        local PredictedPosition = PredictTargetPosition(LockedTarget)
        local CameraPosition = Camera.CFrame.Position
        local Direction = (PredictedPosition - CameraPosition).unit
        local TargetPosition = CameraPosition + Direction
        local NewCFrame = CFrame.new(CameraPosition, TargetPosition)

        local X_Axis = Kira.Camlock.Smoothness.X_Axis or 0.1
        local Y_Axis = Kira.Camlock.Smoothness.Y_Axis or 0.1

        local LerpedCFrame = Camera.CFrame:Lerp(NewCFrame, X_Axis, Y_Axis, SelectedEasing, Direction_1)
        Camera.CFrame = LerpedCFrame
    else
        LockedTarget = nil
    end
end

local function SilentAim(tool)
    if tool:IsA("Tool") then
        tool.Activated:Connect(function()
            local closestTarget = GetClosestTargetToMouse_Silent()
            if closestTarget and GlobalChecks(closestTarget) then
                local PredictedPosition
                local RegularPrediction

                if Kira.Silent.Prediction.AutoPred then
                    local ping = tonumber(string.split(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), '(')[1])
                    RegularPrediction = ping < 130 and (ping / 1000 + 0.037) or (ping / 1000 + 0.033)
                else
                    if Kira.Silent.Prediction.Enable_Axis then
                        RegularPrediction = Vector3.new(Kira.Silent.Prediction.X_Axis, Kira.Silent.Prediction.Y_Axis, 0)
                    else
                        RegularPrediction = Kira.Silent.Prediction.Regular_Prediction
                    end
                end

                if Kira.Setup.Arg == "MousePosUpdate" then
                    PredictedPosition = closestTarget.Character[Kira.Silent.HitPart].Position + Vector3.new(25, 100, 25) + (closestTarget.Character[Kira.Silent.HitPart].Velocity * RegularPrediction)
                else
                    PredictedPosition = closestTarget.Character[Kira.Silent.HitPart].Position + (closestTarget.Character[Kira.Silent.HitPart].Velocity * RegularPrediction)
                end

                game.ReplicatedStorage.MainEvent:FireServer(Kira.Setup.Arg, PredictedPosition)
            end
        end)
    end
end
LocalPlayer.CharacterAdded:Connect(function(character)
    character.ChildAdded:Connect(SilentAim)
end)

if LocalPlayer.Character then
    LocalPlayer.Character.ChildAdded:Connect(SilentAim)
end  
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Kira.Camlock.Keybind.Bind then
        Kira.Camlock.Enabled = not Kira.Camlock.Enabled
        if not Kira.Camlock.Enabled then
            LockedTarget = nil
        end
        if Kira.Camlock.Enabled then
            LockedTarget = GetClosestTargetToMouse()
        end
    elseif input.KeyCode == Kira.Silent.Keybind.Bind then
        SilentAim()
    end
end)

RunService.RenderStepped:Connect(function()
    Camlock()
    
    if Kira.Camlock.FOV.Visible then
        local mouseLocation = UserInputService:GetMouseLocation()
        CamlockFOVCircle.Position = mouseLocation
        CamlockFOVCircle.Visible = true
    else
        CamlockFOVCircle.Visible = false
    end

    if Kira.Silent.FOV.Visible then
        local mouseLocation = UserInputService:GetMouseLocation()
        SilentFOVCircle.Position = mouseLocation
        SilentFOVCircle.Visible = true
    else
        SilentFOVCircle.Visible = false
    end
end)
