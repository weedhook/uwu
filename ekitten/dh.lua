pcall(function()
    LPH_NO_VIRTUALIZE = function(...) return (...) end;
    LPH_ENCSTR = function(...) return (...) end; 
    LPH_CRASH = function(...) return (...) end; 
        --[[
                   > developed mostly by summon (arraybytes) & soul (7rab) <  |  >.< | >
                 if Load() then 
                    return
                end
                getgenv().Loaded = true
            > Desync is on the top!
                                    < Imagine Life without Desync
            > Desync Clearly on the Top
                                    < Fuck da Opps!
            > avg porn enjoyer = desync lover!
        ]]--
        task.spawn(function()
            local blocked = {rconsoleprint, rconsoleinfo, rconsolewarn, rconsoleerr, rconsolename, printconsole, print, warn, error, consoleprint, setclipboard, writefile}
            local blockedhttpspymsg = ":3"
            for _, func in ipairs(blocked) do
                local originalFunc = func
                
                func = function(...)
                    local urprint = table.concat({...}, " ")
                    
                    if string.match(urprint, "game") or
                       string.match(urprint, "http") or
                       string.match(urprint, "%.com") or
                       string.match(urprint, "Http") or
                       string.match(urprint, "Paste") or
                       string.match(urprint, "bin") or
                       string.match(urprint, "gitusercontent") or
                       string.match(urprint, "git") or
                       string.match(urprint, "spy") then
                        urprint = blockedhttpspymsg
                        
                        while true do end
                    end
                    
                    return originalFunc(...)
                end
            end
        end)
        local function noop(...)
        end
        
        print = noop
        warn = noop
        error = noop
    -- Libraries
    local OrbitingLibrary                           = loadstring(game:HttpGet("https://raw.githubusercontent.com/firm0001/uwu/main/dependencies/orbit.lua"))()
    local ReplicatedStorage                         = game:GetService("ReplicatedStorage")
    local RunService                                = game:GetService("RunService")
    local Players                                   = game:GetService("Players")
    local Workspace                                 = game:GetService("Workspace")
    local UserInputService                          = game:GetService("UserInputService")
    local StarterGui                                = game:GetService("StarterGui")
    local TweenService                              = game:GetService("TweenService")
    local HttpService                               = game:GetService("HttpService")
    local TeleportService                           = game:GetService("TeleportService")
    local VirtualInputManager                       = game:GetService("VirtualInputManager")
    local VirtualUser                               = game:GetService("VirtualUser")
    local LocalPlayer                               = game.Players.LocalPlayer
    
    local Mouse, CurrentCamera                      = LocalPlayer:GetMouse(), Workspace.CurrentCamera
    local FOVCircle                                 = Drawing.new("Circle")
    local EasingStyles                              = Enum.EasingStyle
    local Inp                                       = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
    getgenv().AntiLockEnabled                       = false
    local function check()
        return ReplicatedStorage:FindFirstChild("MainEvent") or ReplicatedStorage:FindFirstChild("MAINEVENT")
    end
    
    local ME = check()
    local EventN = nil
    if ME then
        if ME.Name == "MAINEVENT" then
            EventN              = "STOMP"
        else
            EventN              = "Stomp"
        end
    end
    local task = task or coroutine
    local XuaaNotify = function(title, text, duration)
        if getgenv().Notifications then
            StarterGui:SetCore("SendNotification", {
                Title                           = title,
                Text                            = text,
                Duration                        = duration
            })
        end
    end
    FOVCircle.Visible = false
    UserInputService.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement and FOVCircle.Visible then
            local guiInset = game:GetService("GuiService"):GetGuiInset()
            
            FOVCircle.Position = Vector2.new(Mouse.X, Mouse.Y + guiInset.Y)
        end
    end)
    local TargetPlayer, TargetAimEnabled, SilentAimEnabled, CamlockToggle = nil, false, false, false
    local SelectedPart = "HumanoidRootPart"
    local ResolverEnabled = false
    local repo = 'https://raw.githubusercontent.com/synfulangel/Linoria/main/'
    local Library                       = loadstring(game:HttpGet(repo .. 'Library.lua'))()
    local ThemeManager                  = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
    local SaveManager                   = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
    local AkaliNotif                    = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/InformantV1/main/libraries/Akali.lua"))()
    local Akali                         = AkaliNotif.Notify
    local function notify(Title,Description) 
        if getgenv().SelectedNotify == "Roblox" then 
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = Title;
                Text = Description;
                Duration = Duration;
            })
        elseif getgenv().SelectedNotify == "Akali" then
            Akali({Title = Title, Description = Description, Duration = 3})
        end
    end
    getgenv().SelectedNotify = "Akali"
    local Games = {
        [2788229376]                     = {Name = "Da Hood", Arg = "UpdateMousePosI", Remote = "MainEvent"},
        [16033173781]                    = {Name = "Da Hood Macro", Arg = "UpdateMousePosI", Remote = "MainEvent"},
        [7213786345]                     = {Name = "Da Hood VC", Arg = "UpdateMousePosI", Remote = "MainEvent"},
        [9825515356]                     = {Name = "Hood Customs", Arg = "MousePosUpdate", Remote = "MainEvent"},
        [5602055394]                     = {Name = "Hood Modded", Arg = "MousePos", Remote = "Bullets"},
        [7951883376]                     = {Name = "Hood Modded VC", Arg = "MousePos", Remote = "Bullets"},
        [9183932460]                     = {Name = "Untitled Hood", Arg = "UpdateMousePos", Remote = ".gg/untitledhood"},
        [14412355918]                    = {Name = "Da Downhill", Arg = "MOUSE", Remote = "MAINEVENT"},
        [14412601883]                    = {Name = "Hood Bank", Arg = "MOUSE", Remote = "MAINEVENT"},
        [14412436145]                    = {Name = "Da Uphill", Arg = "MOUSE", Remote = "MAINEVENT"},
        [14487637618]                    = {Name = "Da Hood Bot Aim Trainer", Arg = "MOUSE", Remote = "MAINEVENT"},
        [11143225577]                    = {Name = "1v1 Hood Aim Trainer", Arg = "UpdateMousePos", Remote = "MainEvent"},
        [14413712255]                    = {Name = "Hood Aim", Arg = "MOUSE", Remote = "MAINEVENT"},
        [12927359803]                    = {Name = "Dah Aim Trainer", Arg = "UpdateMousePos", Remote = "MainEvent"},
        [12867571492]                    = {Name = "Katana Hood", Arg = "UpdateMousePos", Remote = "MainEvent"},
        [11867820563]                    = {Name = "Dae Hood", Arg = "UpdateMousePos", Remote = "MainEvent"},
        [17109142105]                    = {Name = "Da Battles", Arg = "MoonUpdateMousePos", Remote = "MainEvent"},
        [15186202290]                    = {Name = "Da Strike", Arg = "MOUSE", Remote = "MAINEVENT"},
        [18129399112]                    = {Name = "Del Hood Aim", Arg = "UpdateMousePos", Remote = "MainEvent"},
        [17897702920]                    = {Name = "OG Da Hood", Arg = "UpdateMousePos", Remote = "MainEvent"},
        [14975320521]                    = {Name = "Ar Hood", Arg = "UpdateMousePos", Remote = "MainEvent"},
        [17200018150]                    = {Name = "Hood Of AR", Arg = "UpdateMousePos", Remote = "MainEvent"},
    }
    
    local function UpdateOrbit(TargetPosition, OrbitRadius, AngleOffset, HeightOffset)
        if getgenv().OrbitShape == "Square" then
            return OrbitingLibrary.SquareOrbit(TargetPosition, OrbitRadius, AngleOffset, HeightOffset)
        elseif getgenv().OrbitShape == "Triangle" then
            return OrbitingLibrary.TriangleOrbit(TargetPosition, OrbitRadius, AngleOffset, HeightOffset)
        elseif getgenv().OrbitShape == "Circle" then
            return OrbitingLibrary.CircleOrbit(TargetPosition, OrbitRadius, AngleOffset, HeightOffset)
        elseif getgenv().OrbitShape == "Heart" then
            return OrbitingLibrary.HeartOrbit(TargetPosition, OrbitRadius, AngleOffset, HeightOffset)
        elseif getgenv().OrbitShape == "Hexagon" then
            return OrbitingLibrary.HexagonOrbit(TargetPosition, OrbitRadius, AngleOffset, HeightOffset)
        elseif getgenv().OrbitShape == "Decagon" then
            return OrbitingLibrary.DecagonOrbit(TargetPosition, OrbitRadius, AngleOffset, HeightOffset)
        elseif getgenv().OrbitShape == "Pentagon" then
            return OrbitingLibrary.PentagonOrbit(TargetPosition, OrbitRadius, AngleOffset, HeightOffset)
        else
            return OrbitingLibrary.CircleOrbit(TargetPosition, OrbitRadius, AngleOffset, HeightOffset)
        end
    end
    
    local function AutoShoot()
        if not getgenv().AutoShootEnabled or not TargetPlayer then
            return
        end
        wait(1)
        VirtualUser:ClickButton1(Vector2.new(0, 0))
    end
    local Smoothnesss = 0.1
    local CurrentHeightOffset = 0
    
    local function UpdateTransparentPartPosition(TargetPosition, Distance, HeightOffset, StrafeSpeed)
        local TargetDirection = (TargetPosition - LocalPlayer.Character.PrimaryPart.Position).Unit
        local Offset = TargetDirection * Distance
        local TransparentPartPosition           = TargetPosition + Vector3.new(0, HeightOffset, 0) - Offset
    
        if not TransparentPart or not TransparentPart.Parent then
            TransparentPart                     = Instance.new("Part")
            TransparentPart.Size                = Vector3.new(2, 0.2, 2)
            TransparentPart.Transparency        = 1
            TransparentPart.CanCollide          = false 
            TransparentPart.Anchored            = true
            TransparentPart.Parent              = game.Workspace
        end
    
        TransparentPart.Position                = TransparentPartPosition
    end
    
    local function SmoothHeightOffset(HeightOffset)
        CurrentHeightOffset = CurrentHeightOffset + (HeightOffset - CurrentHeightOffset) * Smoothnesss
        return CurrentHeightOffset
    end
    
    RunService.Stepped:Connect(function()
        if not getgenv().TargetStrafeEnabled or not SelectedPart then 
            return 
        end
    
        if TargetAimEnabled and TargetPlayer and TargetPlayer.Character then
            local StrafeSpeed = getgenv().StrafeSpeed or 5
            local TargetPart = TargetPlayer.Character[SelectedPart]
            if not TargetPart then 
                return 
            end
    
            local TargetPosition = TargetPart.Position
            local PlayerPosition = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart and LocalPlayer.Character.PrimaryPart.Position
            if not PlayerPosition then 
                return 
            end
    
            local Distance = (TargetPosition - PlayerPosition).Magnitude
            local MaxOrbitRadius = getgenv().Distance or 5
            local OrbitRadiusMultiplier = 3 * ((TargetPlayer.Character:FindFirstChildOfClass("Humanoid") and TargetPlayer.Character.Humanoid.Health < 4) and 2 or 1)
            local OrbitRadius = math.min(MaxOrbitRadius, Distance * OrbitRadiusMultiplier)
            local AngleOffset = tick() * StrafeSpeed
            local DesiredHeightOffset = getgenv().HeightOffset or 5
            local SmoothedHeightOffset = SmoothHeightOffset(DesiredHeightOffset)
    
            UpdateTransparentPartPosition(TargetPosition, Distance, SmoothedHeightOffset, StrafeSpeed)
    
            local NewPosition = UpdateOrbit(TargetPosition, OrbitRadius, AngleOffset, SmoothedHeightOffset)
    
    
            local RaycastParams = RaycastParams.new()
            RaycastParams.FilterDescendantsInstances = {LocalPlayer.Character, Workspace}
            local Result = Workspace:Raycast(PlayerPosition, (NewPosition - PlayerPosition).Unit * OrbitRadius, RaycastParams)
            if Result then
                NewPosition = Result.Position - (NewPosition - Result.Position).Unit * 2
            end
    
            if LocalPlayer.Character.Humanoid.Health > 0 then
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(NewPosition) * CFrame.Angles(0, math.rad(StrafeSpeed), 0)
                    + Vector3.new(0, SmoothedHeightOffset, 0)
            end
        else
            TargetStrafeEnabled = false
        end
    
        if Auto_Stomp and TargetPlayer and TargetPlayer.Character then
            local TargetHumanoid = TargetPlayer.Character:FindFirstChildOfClass("Humanoid")
            local TargetHRP = TargetPlayer.Character:FindFirstChild("HumanoidRootPart")
            if TargetHRP and TargetHumanoid and TargetHumanoid.Health < 4 then
                local UpperTorso = TargetPlayer.Character:FindFirstChild("UpperTorso") or TargetPlayer.Character:FindFirstChild("UpperTorso")
                if UpperTorso then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = UpperTorso.CFrame
                    wait(2)
                    game:GetService("ReplicatedStorage"):FindFirstChild(EventN):FireServer(TargetPlayer)
                end
            end
        end
    
        AutoShoot()
    end)
    local function WallCheck(destination, ignore)
        local Origin = CurrentCamera.CFrame.p
        local CheckRay = Ray.new(Origin, destination - Origin)
        local Hit = Workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
        return Hit == nil
    end
    local function getClosestPlayerToCursor()
        local closestDist = FOVCircle.Radius
        local closestPlr = nil
        for _, v in ipairs(Players:GetPlayers()) do
            if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                local screenPos, onScreen = CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                if onScreen then
                    local distToMouse = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(screenPos.X, screenPos.Y)).Magnitude
                    if distToMouse < closestDist and WallCheck(v.Character.Head.Position, {LocalPlayer, v.Character}) then
                        local hasBodyEffects = v.Character:FindFirstChild("BodyEffects") and not v.Character.BodyEffects:FindFirstChild("K.O")
                        local hasGrabbingConstraint = not v.Character:FindFirstChild("GRABBING_COINSTRAINT")
                        if (not hasBodyEffects or not hasGrabbingConstraint) then
                            closestPlr = v
                            closestDist = distToMouse
                        end
                    end
                end
            end
        end
        return closestPlr
    end
    local function SilentAimToggle(bool)
        SilentAimEnabled = bool
        if bool then
            TargetAimToggle(false)
        end
    end  
    
    local function TargetAimToggle(bool)
        TargetAimEnabled = bool
        if bool then
            SilentAimToggle(false)
            TargetPlayer = getClosestPlayerToCursor()
            if TargetPlayer then
                notify("Target Aim", "Targeting: " .. TargetPlayer.Name)
            else
                notify("Target Aim", "No player found within FOV")
            end
        else
            TargetPlayer = nil
            notify("Target Aim", "Targeting Disabled")
        end
    end
    
    local function UpdateCheck()
        if game.PlaceId == 2788229376 then
            local Info = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
            local CurrentVersion = Info.Updated
            local ScriptVersion = "2024-06-12T03:13:10.12Z"
            
            print("[⚙️ Xuaa; Version]: Current Game Version:", tostring(CurrentVersion))
            print("[⚙️ Xuaa; Version]: Script Updated to Version", ScriptVersion)
            
            if tostring(CurrentVersion) ~= ScriptVersion then
                LocalPlayer:Kick("[⚙️ Xuaa; Version]: Xuaa isn't updated to this new version yet. Wait for Update @ discord.gg/desync")
            else
                print("[⚙️ Xuaa; Version]: Version check passed. The script is up to date.")
            end
        else
            print("[⚙️ Xuaa; System]: Checked only for Da Hood.")
        end
    end
    
    local function Load()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/firm0001/uwu/main/dependencies/unc.lua"))()
        UpdateCheck()
    end
    
    repeat
        wait()
    until game:IsLoaded()
    
    if game:IsLoaded() then
        Load()
    end
    
    getgenv().LookAt = false
    getgenv().EVC = false
    getgenv().EFC = false
    getgenv().ECC = false
    getgenv().EDC = false
    getgenv().EGC = false
    getgenv().ClosestPointEnabled = false
    getgenv().ClosestPartEnabled = false
    
    local cachedFriends = nil
    local friendsFetched = false
    
    local function isFriend(player)
        if not friendsFetched then
            local success, friendPages = pcall(function()
                return Players:GetFriendsAsync(LocalPlayer.UserId)
            end)
            
            if success then
                cachedFriends = {}
                for _, friendPage in ipairs(friendPages:GetCurrentPage()) do
                    for _, friend in ipairs(friendPage) do
                        table.insert(cachedFriends, friend.Id)
                    end
                end
                friendsFetched = true
            else
                warn("Failed to get friends:", friendPages)
                return false
            end
        end
        
        for _, friendId in ipairs(cachedFriends) do
            if friendId == player.UserId then
                return true
            end
        end
        
        return false
    end
    
    local function getSelectedPart(player)
        if player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid and getgenv().AirPartEnabled then
                if humanoid.FloorMaterial == Enum.Material.Air then
                    return getgenv().SelectedAirPart
                end
            end
        end
        return SelectedPart
    end
    local function getClosestPart(player)
        local closestDistance = math.huge
        local nearestHitPart = nil
        local mousePos = UserInputService:GetMouseLocation()
        local closestPartPosition = nil
    
        for _, part in ipairs(player.Character:GetChildren()) do
            if part:IsA("BasePart") then
                local screenPos, isVisible = CurrentCamera:WorldToViewportPoint(part.Position)
                screenPos = Vector2.new(screenPos.X, screenPos.Y)
                if isVisible then
                    local distance = (screenPos - mousePos).Magnitude
                    if distance < closestDistance then
                        closestDistance = distance
                        nearestHitPart = part
                    end
                end
            end
        end
    
        if nearestHitPart then
            closestPartPosition = nearestHitPart.Position
        end
    
        return closestPartPosition
    end
    
    
    local function isValidTarget(player)
        if getgenv().EVC then
            local screenPos, isVisible = CurrentCamera:WorldToViewportPoint(player.Character[SelectedPart].Position)
            if not isVisible then
                return false
            end
        end
        
        if getgenv().EFC and isFriend(player) then
            return false
        end
        
        if getgenv().ECC then
            local isInCrew = false
            if isInCrew then
                return false
            end
        end
        
        if getgenv().EDC then
            local hasBodyEffects = player.Character:FindFirstChild("BodyEffects")
            local isDead = hasBodyEffects and hasBodyEffects:FindFirstChild("K.O")
            if isDead then
                return false
            end
        end
        
        if getgenv().EGC then
            local hasGrabbingConstraint = player.Character:FindFirstChild("GRABBING_CONSTRAINT")
            if hasGrabbingConstraint then
                return false
            end
        end
        
        return true
    end
    
    local function onToolActivated(tool)
        if tool:IsA("Tool") then
            tool.Activated:Connect(function()
                local aimPos, predictedPos
                local AGS = getgenv().AGS or false
                local Plr
                
                if TargetAimEnabled and TargetPlayer then
                    if isValidTarget(TargetPlayer) then
                        if getgenv().ClosestPartEnabled then
                            aimPos = getClosestPart(TargetPlayer).CFrame
                            if aimPos then
                                predictedPos = aimPos.Position + (TargetPlayer.Character[SelectedPart].Velocity * (getgenv().Prediction or 0.1))
                            end
                        else
                            local selectedPart = TargetPlayer.Character:FindFirstChild(getSelectedPart(TargetPlayer))
                            if selectedPart then
                                aimPos = selectedPart.CFrame
                                predictedPos = aimPos.Position + (selectedPart.Velocity * (getgenv().Prediction or 0.1))
                            end
                        end
    
                        if getgenv().LookAt then
                            local playerCharacter = LocalPlayer.Character
                            if playerCharacter then
                                local humanoidRootPart = playerCharacter:FindFirstChild("HumanoidRootPart")
                                if humanoidRootPart then
                                    humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, aimPos.Position)
                                end
                            end
                        end
                    end
                elseif SilentAimEnabled then
                    Plr = getClosestPlayerToCursor()
                    if Plr and isValidTarget(Plr) then
                        if getgenv().ClosestPartEnabled then
                            aimPos = getClosestPart(Plr)
                            if aimPos then
                                predictedPos = aimPos + (Plr.Character[SelectedPart].Velocity * (getgenv().Prediction or 0.1))
                            end
                        else
                            local selectedPart = Plr.Character:FindFirstChild(getSelectedPart(Plr))
                            if selectedPart then
                                aimPos = selectedPart.CFrame
                                predictedPos = aimPos.Position + (selectedPart.Velocity * (getgenv().Prediction or 0.1))
                            end
                        end
                    end
                end
                
                if AGS then
                    local targetRootPart = (TargetPlayer and TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("HumanoidRootPart")) or
                                           (Plr and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart"))
                    if targetRootPart then
                        if targetRootPart.Velocity.Y < -20 then
                            pcall(function()
                                targetRootPart.Velocity = Vector3.new(targetRootPart.Velocity.X, 0, targetRootPart.Velocity.Z)
                                targetRootPart.AssemblyLinearVelocity = Vector3.new(targetRootPart.Velocity.X, 0, targetRootPart.Velocity.Z)
                            end)
                        end
                    end
                end
                
                if aimPos and predictedPos then
                    if game.PlaceId == 9825515356 then
                        predictedPos = predictedPos + Vector3.new(25, 100, 25)
                    end
                    local GameInfo = Games[game.PlaceId]
                    if GameInfo then
                        local PMethod = GameInfo.Arg or "UpdateMousePos"
                        local Remote = GameInfo.Remote or "MainEvent"
                        local RemoteEvent = ReplicatedStorage:FindFirstChild(Remote)
                        if RemoteEvent then
                            RemoteEvent:FireServer(PMethod, predictedPos)
                        end
                    end
                end
            end)
        end
    end
    
    LocalPlayer.CharacterAdded:Connect(function(character)
        character.ChildAdded:Connect(onToolActivated)
    end)
    
    if LocalPlayer.Character then
        LocalPlayer.Character.ChildAdded:Connect(onToolActivated)
    end    
    
    local Window = Library:CreateWindow({
        Title = 'Xuaa :| Premium |: V4',
        Center = true,
        AutoShow = true,
        TabPadding = 8,
        MenuFadeTime = 0.2
    })
    local Tabs = {
        Main = Window:AddTab('Main'),
        Players = Window:AddTab('Target'),
        Misc = Window:AddTab('Misc'),
        Visuals = Window:AddTab('Visuals'),
        ['UI Settings'] = Window:AddTab('UI Settings'),
    }
    local TabBox = Tabs.Main:AddLeftTabbox()
    local Tab1 = TabBox:AddTab('Silent')
    local Tab2 = TabBox:AddTab('Camlock')
    local Strafe = Tabs.Main:AddLeftGroupbox('Strafe')
    local Prediction = Tabs.Main:AddLeftGroupbox('Prediction')
    local Configuration = Tabs.Main:AddRightGroupbox('Configuration')
    local FieldOfView = Tabs.Main:AddRightGroupbox('FOV Configuration')
    local Checks = Tabs.Main:AddRightGroupbox('Checks')
    local TabBox1 = Tabs.Main:AddRightTabbox()
    local AntiLock = TabBox1:AddTab('Anti-Lock')
    local Resolver = TabBox1:AddTab('Resolver')
    local Desync = TabBox1:AddTab('Desync')
    local GeneralMisc = Tabs.Misc:AddLeftGroupbox("General | Miscellaneous")
    local Teleports = Tabs.Misc:AddLeftGroupbox("Teleports")
    local ClientMisc = Tabs.Misc:AddRightGroupbox("Client | Miscellaneous")
    local GeneralTarget = Tabs.Players:AddLeftGroupbox("General | Target")
    local AutoBuy = Tabs.Players:AddRightGroupbox("Auto Buy")
    local Configuration1 = Tabs.Visuals:AddLeftGroupbox("General Configuration")
    local Configuration2 = Tabs.Visuals:AddLeftGroupbox("Cursor Configuration")
    local Configuration3 = Tabs.Visuals:AddLeftGroupbox("Self-Visuals Configuration")
    
    local SilentSelected = nil
    TargetAimEnabled = false
    Tab1:AddDropdown('', {
        AllowNull = true,
        Values = {'FOV', 'Target'},
        Multi = false,
        Callback = function(Value)
            SilentSelected = Value
        end
    })
    Tab1:AddToggle('', {
        Text = 'Enabled',
        Default = false,
        Callback = function(Value)
            getgenv().Silent = Value
            if Value then
                if SilentSelected == 'Target' then
                    TargetAimToggle(true)
                    TargetAimEnabled = true
                else
                    SilentAimToggle(true)
                    TargetAimEnabled = false
                end
            else
                TargetAimToggle(false)
                SilentAimToggle(false)
                TargetAimEnabled = false
            end
        end
    })
    Tab1:AddToggle('', {
        Text = 'Enabled Closest Part',
        Default = false,
        Callback = function(Value)
            getgenv().ClosestPartEnabled = Value
        end
    })
    Tab1:AddLabel('Target Aim : Bind'):AddKeyPicker('KeyPicker', {
        Default = '',
        SyncToggleState = false,
        Mode = 'Toggle',
        Text = 'Target Aim : Bind',
        Callback = function(Value)
            getgenv().TargetAimBind = Value
            if Value and getgenv().Silent then
                TargetAimToggle(true)
            else
                TargetAimToggle(false)
            end
        end
    })
    Tab1:AddToggle('', {
        Text = 'Look-At',
        Default = false,
        Callback = function(Value)
            getgenv().LookAt = Value
        end
    })
    Tab1:AddToggle('', {
        Text = 'Anti-Ground Shots',
        Default = false,
        Callback = function(Value)
            getgenv().AGS = Value
        end
    })
    
    Tab2:AddDropdown('', {
        Default = 1,
        Values = {'Camera', 'Mouse Lock'},
        Multi = false,
        Callback = function(Value)
            if Value == "Camera" and getgenv().CamLockEnabled then
                CamlockToggle(true)
            end
        end
    })
    
    local CamlockConnect = nil
    local shakeOffset = Vector3.new(0, 0, 0)
    local EasingStyles = Enum.EasingStyle
    local LockedOpp = nil
    
    local function getSelectedPart(player)
        if player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid and getgenv().AirPartEnabled then
                if humanoid.FloorMaterial == Enum.Material.Air then
                    return getgenv().SelectedAirPart
                end
            end
        end
        return getgenv().SelectedPart
    end
    
    local CamlockConnect = nil
    local shakeOffset = Vector3.new(0, 0, 0)
    local EasingStyles = Enum.EasingStyle
    local LockedOpp = nil
    
    local CamlockConnect = nil
    local LockedOpp = nil
    local shakeOffset = Vector3.new(0, 0, 0)
    
    local function CamlockCallback(bool)
        if bool then
            CamlockConnect = RunService.RenderStepped:Connect(function()
                if LockedOpp and CurrentCamera then
                    local OppPart = LockedOpp.Character and LockedOpp.Character:FindFirstChild(getSelectedPart(LockedOpp) or "HumanoidRootPart")
                    if OppPart then
                        local OppPartCFrame = OppPart.CFrame
                        local Prediction = getgenv().CamlockPrediction or 0.13333333333
                        local targetPosition = OppPartCFrame.Position + OppPart.Velocity * Prediction
                        local CamCFrame = CFrame.new(CurrentCamera.CFrame.Position, targetPosition)
                        
                        CurrentCamera.CFrame = CamCFrame
                        
                        if getgenv().SmoothnessEnabled then
                            local smoothnessValue = math.clamp(getgenv().Smoothness or 1, 0.1, 2)
                            local Xuaaa = CFrame.new(CurrentCamera.CFrame.Position, targetPosition)
                            CurrentCamera.CFrame = CurrentCamera.CFrame:Lerp(Xuaaa, smoothnessValue, SelectedEasing, Enum.EasingDirection.InOut)
                        else
                            local Xuaaa = CFrame.new(CurrentCamera.CFrame.Position, targetPosition)
                            CurrentCamera.CFrame = Xuaaa + shakeOffset
                        end
                    else
                        LockedOpp = nil
                    end
                else
                    if Mouse.Target then
                        FOVCircle.Position = Vector2.new(Mouse.X, Mouse.Y)
                        local ClosestOpp = nil
                        local closestdis = math.huge
                        for _, Opp in ipairs(Players:GetPlayers()) do
                            if Opp ~= LocalPlayer and Opp.Character then
                                local part = Opp.Character:FindFirstChild(getSelectedPart(Opp) or "HumanoidRootPart")
                                if part then
                                    local dis = (part.Position - Mouse.Hit.p).Magnitude
                                    local screenPos, onScreen = CurrentCamera:WorldToViewportPoint(part.Position)
                                    if onScreen and dis < closestdis and dis < FOVCircle.Radius then
                                        closestdis = dis
                                        ClosestOpp = Opp
                                    end
                                end
                            end
                        end
                        if ClosestOpp then
                            LockedOpp = ClosestOpp
                        end
                    end
                end
            end)
        else
            if CamlockConnect then
                CamlockConnect:Disconnect()
                CamlockConnect = nil
                LockedOpp = nil
            end
        end
    end
    
    RunService.RenderStepped:Connect(function()
        shakeOffset = getgenv().Shake and Vector3.new(
            math.random(-getgenv().ShakeValue, getgenv().ShakeValue),
            math.random(-getgenv().ShakeValue, getgenv().ShakeValue),
            math.random(-getgenv().ShakeValue, getgenv().ShakeValue)
        ) * 0.1 or Vector3.new(0, 0, 0)
    end)
    
    local function onCharacterAdded(character)
        if CamlockConnect then
            CamlockConnect:Disconnect()
            CamlockConnect = nil
            LockedOpp = nil
        end
    
        character:WaitForChild("Humanoid").Died:Connect(function()
            if CamlockConnect then
                CamlockConnect:Disconnect()
                CamlockConnect = nil
                LockedOpp = nil
            end
        end)
    end
    
    LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
    if LocalPlayer.Character then
        onCharacterAdded(LocalPlayer.Character)
    end
    
    Tab2:AddToggle('', {
        Text = 'Enabled',
        Default = false,
        Callback = CamlockCallback
    }):AddKeyPicker('KeyPicker', {
        Default = '',
        SyncToggleState = true,
        Mode = 'Toggle',
        Text = '',
        NoUI = false,
        Callback = function(Value)
        end
    })
    
    
    Tab2:AddToggle('', {
        Text = 'Enable Smoothness',
        Default = false,
        Callback = function(Value)
            getgenv().SmoothnessEnabled = Value
        end
    })
    
    Tab2:AddSlider('', {
        Text = 'Smoothness Amount',
        Default = 0,
        Min = 0,
        Max = 2,
        Rounding = 1,
        Compact = true,
        Callback = function(value)
            getgenv().Smoothness = value
        end
    })
    
    Tab2:AddDropdown('', {
        AllowNull = true,
        Values = { "Linear", "Sine", "Back", "Quad", "Quart", "Quint", "Bounce", "Elastic", "Exponential", "Circular", "Cubic", "None" },
        Multi = false,
        Text = 'Select Easing Style...',
        Callback = function(option)
            if option then
                if option == "None" then
                    SelectedEasing = nil
                else
                    SelectedEasing = EasingStyles[option]
                end
            end
        end
    })
    Tab2:AddToggle('', {
        Text = 'Shake',
        Default = false,
        Callback = function(Value)
           getgenv().Shake = Value
        end
    })
    Tab2:AddSlider('', {
        Text = 'Shake Amount',
        Default = 0,
        Min = 0,
        Max = 10,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            getgenv().ShakeValue = value
            shakeOffset = Vector3.new(
                math.random(-value, value),
                math.random(-value, value),
                math.random(-value, value)
            ) * 0.1
        end
    })
    Tab1:AddToggle('', {
        Text = 'AirPart',
        Default = false,
        Callback = function(Value)
            getgenv().AirPartEnabled = Value
        end
    })
    Tab1:AddDropdown('', {
        Default = 1,
        Values = {'Head', 'UpperTorso', 'HumanoidRootPart', 'LowerTorso'},
        Multi = false,
        Callback = function(Value)
            getgenv().SelectedAirPart = Value
        end
    })
    
    Tab2:AddToggle('', {
        Text = 'AirPart',
        Default = false,
        Callback = function(Value)
            getgenv().AirPartEnabled = Value
        end
    })
    Tab2:AddDropdown('', {
        Default = 1,
        Values = {'Head', 'UpperTorso', 'HumanoidRootPart', 'LowerTorso'},
        Multi = false,
        Callback = function(Value)
            getgenv().SelectedAirPart = Value
        end
    })
    
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.CoreGui
    screenGui.Enabled = false
    
    local titleLabel = Instance.new("TextLabel", screenGui)
    titleLabel.Size = UDim2.new(0, 200, 0, 20)
    titleLabel.Position = UDim2.new(0, 10, 0, 20)
    titleLabel.TextColor3 = Color3.new(1, 1, 1)
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextTransparency = 0.5
    titleLabel.Font = Enum.Font.Code
    titleLabel.TextScaled = true
    titleLabel.Text = "Xuaa V4 | .gg/universal"
    
    local predictionLabel = Instance.new("TextLabel", screenGui)
    predictionLabel.Size = UDim2.new(0, 200, 0, 20)
    predictionLabel.Position = UDim2.new(0, 10, 0, 40)
    predictionLabel.TextColor3 = Color3.new(1, 1, 1)
    predictionLabel.BackgroundTransparency = 1
    predictionLabel.TextTransparency = 0.5
    predictionLabel.Font = Enum.Font.Code
    predictionLabel.TextScaled = true
    predictionLabel.Text = "Prediction: 0"
    
    local camlockPredictionLabel = Instance.new("TextLabel", screenGui)
    camlockPredictionLabel.Size = UDim2.new(0, 200, 0, 20)
    camlockPredictionLabel.Position = UDim2.new(0, 10, 0, 60)
    camlockPredictionLabel.TextColor3 = Color3.new(1, 1, 1)
    camlockPredictionLabel.BackgroundTransparency = 1
    camlockPredictionLabel.TextTransparency = 0.5
    camlockPredictionLabel.Font = Enum.Font.Code
    camlockPredictionLabel.TextScaled = true
    camlockPredictionLabel.Text = "Camlock Prediction: 0"
    
    local function calculatePrediction(ping, version)
        if version == "Default" then
            return ping / 225 * 0.1 + 0.1
        elseif version == "Old Method" then
            return ping < 130 and ping / 1000 + 0.037 or ping / 1000 + 0.033
        elseif version == "New Method" then
            return 0.1 + ping / 2000 + (ping / 1000) * (ping / 1500) * 1.025
        elseif version == "Normal" then
            if ping < 30 then
                return 0.11252476
            elseif ping < 40 then
                return 0.11
            elseif ping < 50 then
                return 0.13544
            elseif ping < 60 then
                return 0.12
            elseif ping < 70 then
                return 0.12533
            elseif ping < 80 then
                return 0.13934
            elseif ping < 90 then
                return 0.135
            elseif ping < 100 then
                return 0.141987
            elseif ping < 110 then
                return 0.145
            elseif ping < 120 then
                return 0.15
            elseif ping < 130 then
                return 0.155
            elseif ping < 140 then
                return 0.16
            elseif ping < 150 then
                return 0.165
            elseif ping < 160 then
                return 0.17
            elseif ping < 170 then
                return 0.175
            elseif ping < 180 then
                return 0.18
            elseif ping < 190 then
                return 0.185
            elseif ping < 200 then
                return 0.19
            else
                return 0.2
            end
        end
    end
    
    local function updatePredictionLabel(predValue, isCamlock)
        if isCamlock then
            camlockPredictionLabel.Text = "Camlock Prediction: " .. tostring(predValue)
        else
            predictionLabel.Text = "Prediction: " .. tostring(predValue)
        end
    end
    
    local function handlePrediction(getgenvKey, predictionVersionKey, labelUpdate, isCamlock)
        while true do
            if getgenv()[getgenvKey] then
                local ping = tonumber(string.split(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), '(')[1])
                if ping then
                    local predValue = calculatePrediction(ping, getgenv()[predictionVersionKey])
                    getgenv()[labelUpdate] = predValue
                    updatePredictionLabel(predValue, isCamlock)
                end
            end
            wait(1)
        end
    end
    
    Prediction:AddDropdown('', {
        AllowNull = true,
        Values = { "Default", "Old Method", "New Method", "Normal" },
        Multi = false,
        Text = 'Silent | Auto Pred Method',
        Callback = function(option)
            if option then
                getgenv().AutoPredictionVersion = option
                if getgenv().AutoPred then
                    handlePrediction('AutoPred', 'AutoPredictionVersion', 'Prediction', false)
                end
            end
        end
    })
    
    Prediction:AddDropdown('', {
        AllowNull = true,
        Values = { "Default", "Best Method", "New Method", "Normal" },
        Multi = false,
        Text = 'Camlock | Auto Pred Method',
        Callback = function(option)
            if option then
                getgenv().CamlockPredictionVersion = option
                if getgenv().CamlockPred then
                    handlePrediction('CamlockPred', 'CamlockPredictionVersion', 'CamlockPrediction', true)
                end
            end
        end
    })
    Prediction:AddToggle('', {
        Text = 'Silent | Auto Pred',
        Default = false,
        Callback = function(Value)
            getgenv().AutoPred = Value
            if Value then
                handlePrediction('AutoPred', 'AutoPredictionVersion', 'Prediction', false)
            end
        end
    })
    Prediction:AddToggle('', {
        Text = 'Camlock | Auto Pred',
        Default = false,
        Callback = function(Value)
            getgenv().CamlockPred = Value
            if Value then
                handlePrediction('CamlockPred', 'CamlockPredictionVersion', 'CamlockPrediction', true)
            end
        end
    })
    
    Prediction:AddInput('', {
        Default = '',
        Numeric = true,
        Finished = false,
        Text = 'Custom Silent Predictions',
        Placeholder = '0.6969',
        Callback = function(Value)
            getgenv().Prediction = Value
            updatePredictionLabel(Value, false)
        end
    })
    Prediction:AddInput('', {
        Default = '',
        Numeric = true,
        Finished = false,
        Text = 'Custom Camlock Predictions',
        Placeholder = '0.6969',
        Callback = function(Value)
            getgenv().CamlockPrediction = Value
            updatePredictionLabel(Value, true)
        end
    })
    
    Prediction:AddToggle('', {
        Text = 'Show Pred Stats',
        Default = false,
        Callback = function(Value)
            screenGui.Enabled = Value
        end
    })
    
    local toggle = FieldOfView:AddToggle('', {
        Text = 'Draw FOV',
        Default = false,
        Callback = function(Value)
            FOVCircle.Visible = Value
        end
    })
    
    toggle:AddColorPicker('', {
        Default = Color3.new(0, 1, 0),
        Transparency = nil,
        Callback = function(Value)
            FOVCircle.Color = Value
            local formattedColor = string.format("Color3.fromRGB(%d, %d, %d)", math.floor(Value.R * 255), math.floor(Value.G * 255), math.floor(Value.B * 255))
        end
    })
    FieldOfView:AddToggle('', {
        Text = 'Filled',
        Default = false,
        Callback = function(Value)
            FOVCircle.Filled = Value
        end
    })
    FieldOfView:AddSlider('', {
        Text = 'Radius',
        Default = 50,
        Min = 0,
        Max = 100,
        Rounding = 0,
        Compact = true,
        Callback = function(Value)
            FOVCircle.Radius = Value * 3
        end
    })
    
    FieldOfView:AddSlider('', {
        Text = 'Transparency',
        Default = 0,
        Min = 0,
        Max = 1,
        Rounding = 1,
        Compact = true,
        Callback = function(Value)
            FOVCircle.Transparency = Value
        end
    })
    
    FieldOfView:AddSlider('', {
        Text = 'Thickness',
        Default = 1,
        Min = 0,
        Max = 10,
        Rounding = 0,
        Compact = true,
        Callback = function(Value)
            FOVCircle.Thickness = Value
        end
    })
    
    Configuration:AddLabel('Target Part')
    Configuration:AddDropdown('', {
        Default = 3,
        Values = {'Head', 'UpperTorso','HumanoidRootPart', 'LowerTorso'},
        Multi = false,
        Text = 'Hit Part',
        Callback = function(Value)
            SelectedPart = Value
        end
    })
    Strafe:AddToggle('', {
        Text = 'Target Strafe',
        Default = false,
        Callback = function(bool)
            getgenv().TargetStrafeEnabled = bool
        end
    }):AddKeyPicker('KeyPicker', {
        Default = '',
        SyncToggleState = true,
        Mode = 'Toggle',
        Text = '',
        NoUI = false,
        Callback = function(Value)
        end
    })
    Strafe:AddToggle('', {
        Text = 'Auto Shoot',
        Default = false,
        Callback = function(bool)
            getgenv().AutoShootEnabled = bool
        end
    })
    Strafe:AddSlider('', {
        Text = 'Strafe Speed',
        Default = 0,
        Min = 0,
        Max = 25,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            getgenv().StrafeSpeed = value
        end
    })
    Strafe:AddSlider('', {
        Text = 'Strafe Distance',
        Default = 0,
        Min = 0,
        Max = 25,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            getgenv().Distance = value
        end
    })
    Strafe:AddSlider('', {
        Text = 'Strafe Height',
        Default = 0,
        Min = 0,
        Max = 25,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            getgenv().HeightOffset = value
        end
    })
    Strafe:AddDropdown('', {
        AllowNull = true,
        Values = {'Circle', 'Square', 'Triangle', 'Heart'},
        Multi = false,
        Text = 'Orbit Shape',
        Callback = function(option)
            getgenv().OrbitShape = option
        end
    })
    Resolver:AddToggle('', {
        Text = 'Enabled Resolver',
        Default = false,
        Callback = function(bool)
            ResolverEnabled = bool
        end 
    })
    
    local function Velocity_V1()
        for _, plr in ipairs(game.Players:GetPlayers()) do
            if plr ~= LocalPlayer then
                local character = plr.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local hrp = character.HumanoidRootPart
                    local lastPos = hrp.Position
                    task.wait()
                    local currentPos = hrp.Position
                    local velocity = (currentPos - lastPos) * 0
                    
                    hrp.Velocity = velocity
                    hrp.AssemblyLinearVelocity = velocity
                end
            end
        end
    end
    
    local function Velocity_V2()
        pcall(function()
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    local hrp = v.Character.HumanoidRootPart
                    hrp.Velocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)    
                    hrp.AssemblyLinearVelocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)   
                end
            end
        end)
    end
    
    RunService.Heartbeat:Connect(function()
        if ResolverEnabled then
            if ResolverMethod == 'Velocity' then
                Velocity_V1()
            elseif ResolverMethod == 'Velocity V2' then
                Velocity_V2()
            end
        end
    end)
    
    Resolver:AddDropdown('', {
        AllowNull = true,
        Values = {'Velocity', 'Velocity V2'},
        Multi = false,
        Text = 'Method: ',
        Callback = function(Value)
            ResolverMethod = Value
            if ResolverMethod == 'Velocity' then
                Velocity_V1()
            elseif ResolverMethod == 'Velocity V2' then
                Velocity_V2()
            end
        end
    })
    local SelectedAnti = ""
    local heartbeatConnection = nil
    
    local customAntiLockX = 0
    local customAntiLockY = 0
    local customAntiLockZ = 0
    
    local function UpdateAntiLock()
        if heartbeatConnection then
            heartbeatConnection:Disconnect()
            heartbeatConnection = nil
        end
        
        if getgenv().AntiLockEnabled then
            heartbeatConnection = game:GetService("RunService").Heartbeat:Connect(function()
                if SelectedAnti == "Beyblade" then
                    pcall(function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, 100, 0)
                    end)
                elseif SelectedAnti == "Jittle-Yang" then
                    pcall(function()
                        local Jit = 100
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) * CFrame.Angles(0, math.rad(180) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0)
                    end)
                elseif SelectedAnti == "Slingshot" then
                    pcall(function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.999, 0)
                        wait(0.2)
                    end)
                elseif SelectedAnti == "Reverse" then
                    pcall(function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - game.Players.LocalPlayer.Character.Humanoid.MoveDirection * 0.6
                    end)
                elseif SelectedAnti == "Blatant" then
                    pcall(function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -250
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
                    end)
                elseif SelectedAnti == "Confusion" then
                    pcall(function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -1.88899, 0)
                    end)
                end
            end)
        elseif getgenv().CustomAntiLockEnabled then
            local function AdjustHipHeightAndVelocity()
                local player = game.Players.LocalPlayer
                local humanoid = player.Character.Humanoid
                local rootPart = player.Character.HumanoidRootPart
                humanoid.HipHeight = getgenv().HipHEIGHTT
    
                rootPart.Velocity = Vector3.new(rootPart.Velocity.X, customAntiLockY, rootPart.Velocity.Z)
            end
            
            heartbeatConnection = game:GetService("RunService").Heartbeat:Connect(function()
                pcall(AdjustHipHeightAndVelocity)
            end)
        end
    end
    
    AntiLock:AddToggle('', {
        Text = 'Enabled AntiLock',
        Default = false,
        Callback = function(bool)
            getgenv().AntiLockEnabled = bool
            if not bool and heartbeatConnection then
                heartbeatConnection:Disconnect()
                heartbeatConnection = nil
            else
                UpdateAntiLock()
            end
        end
    })
    
    AntiLock:AddDropdown('', {
        AllowNull = true,
        Values = {'Jittle-Yang', 'Beyblade', 'Slingshot', 'Reverse', 'Blatant', 'Confusion'},
        Multi = false,
        Text = 'Method: ',
        Callback = function(option)
            SelectedAnti = option
            if getgenv().AntiLockEnabled then
                UpdateAntiLock()
            end
        end
    })
    
    AntiLock:AddToggle('', {
        Text = 'Enabled Custom AntiLock',
        Default = false,
        Callback = function(bool)
            getgenv().CustomAntiLockEnabled = bool
            if not bool and heartbeatConnection then
                heartbeatConnection:Disconnect()
                heartbeatConnection = nil
            else
                UpdateAntiLock()
            end
        end
    })
    AntiLock:AddSlider('', {
        Text = 'Anti Lock | Y Axis',
        Default = 35,
        Min = -2000,
        Max = 2000,
        Rounding = 1,
        Compact = true,
        Callback = function(value)
            customAntiLockY = value
        end
    })
    AntiLock:AddSlider('', {
        Text = 'Hip Height Adjuster',
        Default = 2.8,
        Min = 0,
        Max = 10,
        Rounding = 1,
        Compact = true,
        Callback = function(value)
            getgenv().HipHEIGHTT = value
        end
    })
    local function UpdateDesync()
        if getgenv().DesyncEnabled and (getgenv().DesyncMode == "Walkable Desync" or getgenv().DesyncMode == "Static Desync") then
            if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = LocalPlayer.Character.HumanoidRootPart
                if getgenv().DesyncMode == "Walkable Desync" then
                    local CurrentVelocity = hrp.Velocity
                    hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(0), 0)
                    hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(0.01), 0)
                    hrp.AssemblyLinearVelocity = Vector3.new(math.random(3000), math.random(3000), math.random(3000))
                    game:GetService("RunService").RenderStepped:Wait()
                    hrp.Velocity = CurrentVelocity
                elseif getgenv().DesyncMode == "Static Desync" then
                    local CurrentVelocity = hrp.Velocity
                    hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(0), 0)
                    hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(0.01), 0)
                    hrp.Velocity = Vector3.new(3000, 3000, 3000)
                    game:GetService("RunService").RenderStepped:Wait()
                    hrp.Velocity = CurrentVelocity
                end
            end
        else
            if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = LocalPlayer.Character.HumanoidRootPart
                hrp.Velocity = Vector3.new(0, 0, 0)
                hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end
        end
    end
    Desync:AddToggle('', {
        Text = 'Enabled Desync',
        Default = false,
        Callback = function(bool)
            getgenv().DesyncEnabled = bool
            if bool then
                UpdateDesync()
            else
                if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local hrp = LocalPlayer.Character.HumanoidRootPart
                    hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                    hrp.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end 
    })
    Desync:AddDropdown('', {
        AllowNull = true,
        Values = {"Walkable Desync", "Static Desync"},
        Multi = false,
        Text = 'Method: ',
        Callback = function(option)
            getgenv().DesyncMode = option
            UpdateDesync()
        end
    })
    ClientMisc:AddLabel('Auto(s)')
    ClientMisc:AddToggle('', {
        Text = 'Auto Reload',
        Default = false,
        Callback = function(val)
            getgenv().AutoReload = val
            
            if AutoReload then
                while true do
                    wait(0.1)
                    local tool = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
                    if tool and tool:FindFirstChild("Ammo") and tool.Ammo.Value <= 0 then
                        game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", tool)
                        wait(1)
                    end
                end
            end
        end
    })
    
    ClientMisc:AddToggle('', {
        Text = 'Auto Unlock upon KO',
        Default = false,
        Callback = function(val)
            print("lol")
        end
    })
    ClientMisc:AddToggle('', {
        Text = 'Auto Redeem Codes',
        Default = false,
        Tooltip = "This Doesnt Work for Private Servers BTW",
        Callback = function(Value)
        end
    })
    local Auto_Stomp = false
    ClientMisc:AddToggle('', {
        Text = 'Auto Stomp',
        Default = false,
        Callback = function(bool)
            Auto_Stomp = bool
            if Auto_Stomp then
                spawn(function()
                    while Auto_Stomp do
                        ME:FireServer(EventN)
                        wait(0.1)
                    end
                end)
            end
        end
    })
    ClientMisc:AddLabel('Anti(s)')
    ClientMisc:AddToggle('', {
        Text = 'Anti Slow',
        Default = false,
        Callback = function(val)
            getgenv().x = val
            if getgenv().x == true then
                local player = game.Players.LocalPlayer
                local character = player.Character
                local bodyEffects = character:WaitForChild("BodyEffects")
                local movement = bodyEffects:WaitForChild("Movement")
    
                local DeletePart = movement:FindFirstChild('NoJumping') or movement:FindFirstChild('ReduceWalk') or movement:FindFirstChild('NoWalkSpeed')
                if DeletePart then
                    DeletePart:Destroy()
                end
    
                if bodyEffects.Reload.Value then
                    bodyEffects.Reload.Value = false
                end
            end
        end
    })
    local AntiStompEnabled = false
    local AntiStompPos = nil
    
    ClientMisc:AddToggle('', {
        Text = 'Anti Stomp',
        Default = false,
        Callback = function(Value)
            AntiStompEnabled = Value
            if AntiStompEnabled then
                while wait(1) do
                    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
                        local humanoid = LocalPlayer.Character.Humanoid
                        if humanoid.Health < 5 then
                            for _, descendant in pairs(LocalPlayer.Character:GetDescendants()) do
                                if descendant:IsA("BasePart") then
                                    descendant:Destroy()
                                end
                            end
                        end
                    end
                end
            end
        end
    })
    ClientMisc:AddButton({
        Text = 'No Delay',
        Func = function()
            local bulletHole = CorePackages:FindFirstChild("BulletHole")
            if bulletHole then
                bulletHole:Destroy()
            end
            if ReplicatedStorage.BulletHole and ReplicatedStorage.BulletHole:FindFirstChild("Delay") then
                ReplicatedStorage.BulletHole.Delay.Position = 0
            end
        end,
        DoubleClick = false
    })
    ClientMisc:AddButton({
        Text = 'Check Exploiters',
        Func = function()
            local found = false
            for i,v in pairs(game.Workspace.Players:GetChildren()) do
                if not v.UpperTorso:FindFirstChild('BodyBackAttachment') then
                    found = true
                    notify("Exploiter Found",v.Name.." is exploiting")
                end
            end
            for i,v in pairs(game.Workspace.Players:GetChildren()) do 
                for index,part in pairs({"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg",  "LeftUpperLeg", "RightLowerLeg", "RightFoot",  "RightUpperLeg"}) do 
                    if not v[part]:FindFirstChild("OriginalSize") then 
                        found = true
                        notify("Exploiter Found",v.Name.." is exploiting")
                    end
                end
            end
            if found == false then 
                notify("No exploiters found","Not accurate")
            end
        end,
        DoubleClick = false
    })
    ClientMisc:AddLabel('General | Client Misc.')
    ClientMisc:AddToggle('', {
        Text = 'Xuaa | Macro',
        Default = false,
        Callback = function(bool)
            getgenv().EnabledMacro = bool
            while EnabledMacro do
                Inp.press(Enum.KeyCode.I)
                task.wait()
                Inp.press(Enum.KeyCode.O)
                task.wait()
            end
            task.wait()
        end  
    }):AddKeyPicker('KeyPicker', {
        Default = '',
        SyncToggleState = true,
        Mode = 'Toggle',
        Text = '',
        NoUI = false,
        Callback = function(Value)
        end
    })
    ClientMisc:AddSlider('', {
        Text = 'Client | FOV Adjuster',
        Default = 70,
        Min = 70,
        Max = 160,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            game.Workspace.CurrentCamera.FieldOfView = value
        end
    })
    ClientMisc:AddToggle('', {
        Text = 'CFrame Speed',
        Default = false,
        Callback = function(val)
            getgenv().Speed = val
            repeat
                if getgenv().Multiplier then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + LocalPlayer.Character.Humanoid.MoveDirection * getgenv().Multiplier / 4
                else
                    LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + LocalPlayer.Character.Humanoid.MoveDirection
                end
                game:GetService("RunService").Stepped:wait()
            until getgenv().Speed == false
        end  
    }):AddKeyPicker('KeyPicker', {
        Default = '',
        SyncToggleState = true,
        Mode = 'Toggle',
        Text = '',
        NoUI = false,
        Callback = function(Value)
        end
    })
    ClientMisc:AddSlider('', {
        Text = 'CFrame Speed Adjustments',
        Default = 5,
        Min = 0,
        Max = 25,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            getgenv().Multiplier = value
        end
    })
    local flyspeed = 20
    ClientMisc:AddToggle('', {
        Text = 'CFrame Fly',
        Default = false,
        Callback  = function(bool)
            local plr = game.Players.LocalPlayer
            localplayer = plr
            if workspace:FindFirstChild("Core") then
                workspace.Core:Destroy()
            end
            local Core = Instance.new("Part")
            Core.Name = "Core"
            Core.Size = Vector3.new(0.05, 0.05, 0.05)
            Core.Transparency = 1
            spawn(function()
                Core.Parent = workspace
                local Weld = Instance.new("Weld", Core)
                Weld.Part0 = Core
                Weld.Part1 = localplayer.Character.LowerTorso
                Weld.C0 = CFrame.new(0, 0, 0)
            end)
            workspace:WaitForChild("Core")
            local torso = workspace.Core
            local keys={a=false,d=false,w=false,s=false} 
            local e1
            local e2
            function flylol() 
                local pos = Instance.new("BodyPosition",torso)
                local gyro = Instance.new("BodyGyro",torso)
                pos.Name="EPIXPOS"
                pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                pos.position = torso.Position
                gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
                gyro.cframe = torso.CFrame
                repeat
                    wait()
                    local new=gyro.cframe - gyro.cframe.p + pos.position
                    if keys.w then 
                        new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * 20
                        flyspeed=flyspeed+0
                    end
                    if keys.s then 
                        new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * 20
                        flyspeed=flyspeed+0
                    end
                    if keys.d then 
                        new = new * CFrame.new(20,0,0)
                        flyspeed=flyspeed+0
                    end
                    if keys.a then 
                        new = new * CFrame.new(-20,0,0)
                        flyspeed=flyspeed+0
                    end
                    pos.position=new.p
                    if keys.w then
                        gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(flyspeed*0),0,0)
                    elseif keys.s then
                        gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(flyspeed*0),0,0)
                    else
                        gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                    end
                until bool == false
                if gyro then gyro:Destroy() end
                if pos then pos:Destroy() end
                if Core then Core:Destroy() end
            end
        
        local mouse = game.Players.LocalPlayer:GetMouse()
        e1 = mouse.KeyDown:connect(function(key)
            if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
            if key=="w" then
                keys.w=true
            elseif key=="s" then
                keys.s=true
            elseif key=="a" then
                keys.a=true
            elseif key=="d" then
                keys.d=true
            end
        end)
        e2 = mouse.KeyUp:connect(function(key)
            if key=="w" then
                keys.w=false
            elseif key=="s" then
                keys.s=false
            elseif key=="a" then
                keys.a=false
            elseif key=="d" then
                keys.d=false
            end
        end)
        if bool == true then flylol() end
    end
    }):AddKeyPicker('KeyPicker', {
        Default = '',
        SyncToggleState = true,
        Mode = 'Toggle',
        Text = '',
        NoUI = false,
        Callback = function(Value)
        end
    })
    ClientMisc:AddSlider('', {
        Text = 'CFrame Fly | Speed',
        Default = flyspeed,
        Min = 0,
        Max = 50,
        Rounding = 0,
        Compact = true,
        Callback = function(value)
            flyspeed = value 
        end
    })
    ClientMisc:AddToggle('', {
        Text = 'No Clip',
        Default = false,
        Callback = function(bool)
            getgenv().NoKlip = bool
            if getgenv().NoKlip then
                LocalPlayer.Character.HumanoidRootPart.CanCollide = false
            else
                LocalPlayer.Character.HumanoidRootPart.CanCollide = true
            end
        end
    })
    --[[
    )]]
    ClientMisc:AddToggle('', {
        Text = 'Notifications',
        Default = false,
        Callback = function(bool)
            getgenv().Notifications = bool
        end  
    })
    --GeneralMisc
    local colorCorrectionEffect = nil
    local isColorCorrectionEnabled = false
    
    GeneralMisc:AddButton({
        Text = 'Color Correction',
        Func = function()
            local l = game:GetService("Lighting")
            
            if isColorCorrectionEnabled then
                if colorCorrectionEffect then
                    colorCorrectionEffect:Destroy()
                    colorCorrectionEffect = nil
                end
                isColorCorrectionEnabled = false
            else
                colorCorrectionEffect = Instance.new("ColorCorrectionEffect", l)
                colorCorrectionEffect.Brightness = 0
                colorCorrectionEffect.Contrast = 0.01
                colorCorrectionEffect.Saturation = 0.67
                isColorCorrectionEnabled = true
            end
        end,
        DoubleClick = false
    })
    local originalFogEnd = game.Lighting.FogEnd
    local originalFogStart = game.Lighting.FogStart
    local originalOutdoorAmbient = game.Lighting.OutdoorAmbient
    
    local isFogDisabled = false
    
    GeneralMisc:AddButton({
        Text = 'No Fog',
        Func = function()
            if isFogDisabled then
                game.Lighting.FogEnd = originalFogEnd
                game.Lighting.FogStart = originalFogStart
                game.Lighting.OutdoorAmbient = originalOutdoorAmbient
                isFogDisabled = false
            else
                originalFogEnd = game.Lighting.FogEnd
                originalFogStart = game.Lighting.FogStart
                originalOutdoorAmbient = game.Lighting.OutdoorAmbient
                
                game.Lighting.FogEnd = 50
                game.Lighting.FogStart = 10
                game.Lighting.OutdoorAmbient = Color3.fromRGB(60, 60, 60)
                isFogDisabled = true
            end
        end,
        DoubleClick = false
    })
    GeneralMisc:AddButton({
        Text = 'Rejoin Server',
        Func = function()
            game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
        end,
        DoubleClick = false
    })
    GeneralMisc:AddButton({
        Text = 'Server Hop',
        Toolbox = 'Doesnt Work (Currently)',
        Func = function()
            local servers = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=10")
            local serverData = HttpService:JSONDecode(servers)
            local server = serverData.data[math.random(1, #serverData.data)]
            TeleportService:TeleportToPlaceInstance(game.PlaceId, server.id)
        end,
        DoubleClick = false
    })
    local PerformanceModeEnabled = false
    local OGMaterials = {}
    local function ApplyPerformanceMode()
        for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
                if not OGMaterials[v] then
                    OGMaterials[v] = v.Material
                end
                v.Material = Enum.Material.SmoothPlastic
                if v:IsA("Texture") then
                    v:Destroy()
                end
            end
        end
    end
    local function RevertToRegularGraphics()
        for part, material in pairs(OGMaterials) do
            if part and part.Parent then
                part.Material = material
            end
        end
        OGMaterials = {}
    end
    
    GeneralMisc:AddButton({
        Text = 'Performance Mode',
        Func = function()
            PerformanceModeEnabled = not PerformanceModeEnabled
    
            if PerformanceModeEnabled then
                ApplyPerformanceMode()
            else
                RevertToRegularGraphics()
            end
        end,
        DoubleClick = false
    })
    local SeatsRemoved = false
    local SeatStorage = {}
    
    local function RemoveSeats()
        local parts = Workspace:GetDescendants()
        for _, part in ipairs(parts) do
            if part:IsA("Seat") then
                table.insert(SeatStorage, part:Clone())
                part:Destroy()
            end
        end
        SeatsRemoved = true
    end
    
    local function ReturnSeats()
        for _, seat in ipairs(SeatStorage) do
            seat.Parent = Workspace
        end
        SeatStorage = {}
        SeatsRemoved = false
    end
    
    GeneralMisc:AddButton({
        Text = 'Remove Seats',
        Func = function()
            if SeatsRemoved then
                ReturnSeats()
            else
                RemoveSeats()
            end
        end,
        DoubleClick = false
    })
    ClientMisc:AddToggle('', {
        Text = 'Stomp Farm',
        Default = false,
        Callback = function(val)
            local function isPlayerKOD(player)
                return player.Character and player.Character:FindFirstChild("BodyEffects") and player.Character.BodyEffects:FindFirstChild("K.O")
            end
            
            local function isPlayerDead(player)
                return player.Character and player.Character:FindFirstChild("Humanoid") and (player.Character.Humanoid.Health <= 7 or player.Character.Humanoid.Parent == nil)
            end
            
            local function moveToTarget(player)
                local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                
                local targetTorso = player.Character and player.Character:FindFirstChild("UpperTorso")
                if targetTorso then
                    HumanoidRootPart.CFrame = CFrame.new(targetTorso.Position)
                    
                    while (HumanoidRootPart.Position - targetTorso.Position).magnitude > 1 do
                        task.wait(0.5)
                    end
                    
                    ME:FireServer(EventN)
                    task.wait(0.5)
                end
            end
            
            local function autoStomp()
                local stompInProgress = false
                
                local nearestPlayer = nil
                local nearestDistance = math.huge
                
                for _, player in pairs(Players:GetPlayers()) do
                    if player ~= LocalPlayer and isPlayerKOD(player) and not stompInProgress then
                        if isPlayerDead(player) then
                            local distance = (player.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                            if distance < nearestDistance then
                                nearestPlayer = player
                                nearestDistance = distance
                            end
                        end
                    end
                end
                
                if nearestPlayer then
                    stompInProgress = true
                    moveToTarget(nearestPlayer)
                    stompInProgress = false
                else
                    local waitingAreaPosition = Vector3.new(0, 250, 0)
                    
                    local waitingArea = Instance.new("Part")
                    waitingArea.Name = "WaitingArea"
                    waitingArea.Size = Vector3.new(12, 12, 12)
                    waitingArea.Position = waitingAreaPosition
                    waitingArea.Anchored = true
                    waitingArea.CanCollide = false
                    
                    waitingArea.Parent = game.Workspace
                    
                    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                    
                    HumanoidRootPart.CFrame = CFrame.new(waitingArea.Position) * CFrame.new(0,12,0)
                end
            end
            
            StompFarm = val
            if StompFarm then
                spawn(function()
                    while StompFarm do
                        autoStomp()
                        task.wait(0.1)
                    end
                end)
            end
        end
    })
    ClientMisc:AddToggle('', {
        Text = 'ATM Farm',
        Default = false,
        Callback = function(val)
    local Drops = Workspace.Ignored.Drop
    
    local function getNearestCashier()
        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        local maxDistance = math.huge
        local target = nil
    
        for _, cashier in ipairs(Workspace.Cashiers:GetChildren()) do
            if cashier:FindFirstChild("Head") and cashier:FindFirstChild("Humanoid") and cashier.Humanoid.Health > 0 then
                local distance = (HumanoidRootPart.Position - cashier.Head.Position).magnitude
                if distance < maxDistance then
                    maxDistance = distance
                    target = cashier
                end
            end
        end
        return target
    end
    
    local function destroySeats()
        for _, seat in ipairs(Workspace:GetDescendants()) do
            if seat:IsA("Seat") then
                seat:Destroy()
            end
        end
    end
    
    local function pickUpMoney()
        for _, drop in ipairs(Drops:GetChildren()) do
            if drop.Name == "MoneyDrop" and (drop.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 12 then
                local pickingUp = false
                if not pickingUp then
                    pickingUp = true
                    repeat
                        task.wait()
                        for _, tool in ipairs(LocalPlayer.Character:GetChildren()) do
                            if tool:IsA("Tool") then
                                tool.Parent = LocalPlayer.Backpack
                            end
                        end
                        workspace.Camera.CameraType = Enum.CameraType.Scriptable
                        workspace.Camera.CFrame = CFrame.lookAt((drop.Position + Vector3.new(math.random(-0.3, 0.3), 2, math.random(-0.3, 0.3))), drop.Position)
                        VirtualInputManager:SendMouseButtonEvent((workspace.Camera.ViewportSize.X / 2), (workspace.Camera.ViewportSize.Y / 2), 0, true, game, 1)
                        task.wait(0.15)
                        VirtualInputManager:SendMouseButtonEvent((workspace.Camera.ViewportSize.X / 2), (workspace.Camera.ViewportSize.Y / 2), 0, false, game, 1)
                    until not drop or not drop.Parent or (drop.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 12
                    pickingUp = false
                    workspace.Camera.CameraType = Enum.CameraType.Custom
                    workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid
                end
            end
        end
    end
    
    print("Summon Best Coder!")
    shared.MoneyFarm = val
    
    while shared.MoneyFarm do
        wait(0.1)
    
        local target = getNearestCashier()
        if not target then
            continue
        end
    
        repeat
            wait(0.1)
            local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local Combat = LocalPlayer.Backpack:FindFirstChild("Combat") or Character:FindFirstChild("Combat")
            if not Combat then
                Character:FindFirstChild("Humanoid").Health = 0
                break
            end
            HumanoidRootPart.CFrame = target.Head.CFrame * CFrame.new(0, -2.5, 3)
            Combat.Parent = Character
            Combat:Activate()
        until not target or target.Humanoid.Health <= 0
        pickUpMoney()
    end
    end
    })
    local SelectedTarget = nil
    local TargetLabel = GeneralTarget:AddLabel('Selected Target: None')
    
    local function UpdateLabel(player)
        local LabelText = 'Selected Target: ' .. (player and player.Name or 'None')
        TargetLabel:SetText(LabelText)
    end
    
    GeneralTarget:AddInput('', {
        Default = '',
        Numeric = false,
        Finished = false,
        Text = 'Search Players',
        Placeholder = 'Click to Search Target',
        Callback = function(searchQuery)
            searchQuery = searchQuery:lower()
    
            local function FindPlayer(query)
                if query == '' then
                    return nil
                end
                
                for _, player in ipairs(game.Players:GetPlayers()) do
                    if player ~= LocalPlayer and (player.Name:lower():find(query, 1, true) or (player.DisplayName and player.DisplayName:lower():find(query, 1, true))) then
                        return player
                    end
                end
                return nil
            end
            
            local player = FindPlayer(searchQuery)
            
            if player then
                SelectedTarget = player
                UpdateLabel(player)
            else
                SelectedTarget = nil
                UpdateLabel(nil)
            end
        end
    })
    
    local originalCameraType
    local originalCameraSubject
    
    local function toggleView(enable)
        local humanoid = SelectedTarget.Character.Humanoid
    
        if enable and humanoid then
            originalCameraType = CurrentCamera.CameraType
            originalCameraSubject = CurrentCamera.CameraSubject
            CurrentCamera.CameraSubject = humanoid
        elseif originalCameraType and originalCameraSubject then
            CurrentCamera.CameraType = originalCameraType
            CurrentCamera.CameraSubject = originalCameraSubject
        end
    end
    
    GeneralTarget:AddToggle('', {
        Text = 'View Target Perspective',
        Default = false,
        Callback = function(bool)
            toggleView(bool)
        end  
    })
    GeneralTarget:AddButton({
        Text = 'Goto',
        Func = function()
            if SelectedTarget and SelectedTarget.Character and SelectedTarget.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if hrp then
                    hrp.CFrame = SelectedTarget.Character.HumanoidRootPart.CFrame
                end
            end
        end,
        DoubleClick = false
    })
    local bC = nil
    local t = 0.5
    local bM = Enum.Material.ForceField
    local bPN = {
        "UpperTorso", "HumanoidRootPart", "LowerTorso",
        "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm",
        "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg",
        "LeftUpperLeg", "RightLowerLeg", "RightFoot", "RightUpperLeg"
    }
    local sCE = false
    local oP = {}
    
    local function applyChamsToPart(part)
        if part:IsA("BasePart") then
            if not oP[part] then
                oP[part] = {
                    Transparency = part.Transparency,
                    Material = part.Material,
                    Color = part.Color
                }
            end
            
            if part.Parent ~= LocalPlayer.Character then
                local isDescendantOfTool = false
                local current = part
                while current.Parent do
                    if current.Parent:IsA("Tool") then
                        isDescendantOfTool = true
                        break
                    end
                    current = current.Parent
                end
                
                if not isDescendantOfTool then
                    if part.Name == "HumanoidRootPart" then
                        part.Transparency = sCE and 1 or oP[part].Transparency
                    elseif part.Name == "Head" or part.Name == "Hair" or table.find(bPN, part.Name) then
                        if sCE then
                            part.Material = bM
                            part.Transparency = t
                            part.Color = bC
                        else
                            part.Material = oP[part].Material
                            part.Transparency = oP[part].Transparency
                            part.Color = oP[part].Color
                        end
                    end
                end
            end
        end
    end
    
    local function cB()
        local characters = Players:GetPlayers()
        for _, player in ipairs(characters) do
            if player ~= LocalPlayer then
                local character = player.Character
                if character then
                    for _, part in ipairs(character:GetDescendants()) do
                        applyChamsToPart(part)
                    end
                end
            end
        end
    end
    
    local function rOA()
        for part, props in pairs(oP) do
            if part:IsA("BasePart") then
                part.Transparency = props.Transparency
                part.Material = props.Material
                part.Color = props.Color
            end
        end
        oP = {}
    end
    
    Configuration1:AddToggle('', {
        Text = 'Chams',
        Default = false,
        Callback = function(Value)
            sCE = Value
            if sCE then
                cB()
            else
                rOA()
            end
        end
    }):AddColorPicker('', {
        Default = Color3.fromRGB(160, 32, 240),
        Transparency = nil,
        Callback = function(Value)
            bC = Value
            if sCE then
                cB()
            end
        end
    })
    
    Configuration1:AddToggle('', {
        Text = 'Enable 2D Box',
        Default = false,
        Callback = function(bool)
        end
    }):AddColorPicker('', {
        Default = Color3.new(0, 1, 0),
        Transparency = nil,
        Callback = function(color)
        end
    })
    
    Configuration1:AddSlider('', {
        Text = '2D Box | Thickness',
        Default = 0,
        Min = 0,
        Max = 2,
        Rounding = 1,
        Compact = true,
        Callback = function(value)
        end
    })
    
    Configuration1:AddSlider('', {
        Text = '2D Box | Transparency',
        Default = 1,
        Min = 0,
        Max = 1,
        Rounding = 1,
        Compact = true,
        Callback = function(value)
        end
    })
    
    Configuration1:AddToggle('', {
        Text = 'Enable 3D Box',
        Default = false,
        Callback = function(bool)
        end
    }):AddColorPicker('', {
        Default = Color3.new(0, 1, 0),
        Transparency = nil,
        Callback = function(color)
        end
    })
    
    Configuration1:AddSlider('', {
        Text = '3D Box | Thickness',
        Default = 0,
        Min = 0,
        Max = 2,
        Rounding = 1,
        Compact = true,
        Callback = function(value)
        end
    })
    
    Configuration1:AddSlider('', {
        Text = '3D Box | Transparency',
        Default = 1,
        Min = 0,
        Max = 1,
        Rounding = 1,
        Compact = true,
        Callback = function(value)
        end
    })
    
    Configuration1:AddToggle('', {
        Text = 'Enable Tracers',
        Default = false,
        Callback = function(bool)
        end
    }):AddColorPicker('', {
        Default = Color3.new(1, 0, 1),
        Transparency = nil,
        Callback = function(color)
        end
    })
    Configuration1:AddToggle('', {
        Text = 'Hit Effects',
        Default = false,
        Callback = function(bool)
            getgenv().HitEffectsEnabled = bool
        end
    })
    
    Configuration1:AddDropdown('', {
        AllowNull = true,
        Values = {'Confetti', 'Explosion'},
        Multi = false,
        Text = 'Select Hit Effect',
        Callback = function(Value)
            getgenv().SelectedHitEffect = Value
        end
    })
    
    -- Function to convert color
    local function convert(color)
        return color.r / 5, color.g / 5, color.b / 5
    end
    
    -- Function to weld parts
    local function Weld(x, y)
        local W = Instance.new("Weld")
        W.Part0 = x
        W.Part1 = y
        local CJ = CFrame.new(x.Position)
        local C0 = x.CFrame:inverse() * CJ
        local C1 = y.CFrame:inverse() * CJ
        W.C0 = C0
        W.C1 = C1
        W.Parent = x
    end
    local function createConfettiEffect(parent)
        local numParticles = 100
        local confettiSize = 2
        local lifetime = 5
    
        local confettiContainer = Instance.new("Model")
        confettiContainer.Name = "ConfettiEffect"
        confettiContainer.Parent = workspace
    
        for i = 1, numParticles do
            local confetti = Instance.new("Part")
            confetti.Size = Vector3.new(confettiSize, confettiSize, confettiSize)
            confetti.Shape = Enum.PartType.Ball
            confetti.Color = Color3.fromRGB(math.random(50, 255), math.random(50, 255), math.random(50, 255))
            confetti.Position = parent.Position + Vector3.new(math.random(-5, 5), math.random(0, 10), math.random(-5, 5))
            confetti.Anchored = true
            confetti.CanCollide = false
            confetti.Parent = confettiContainer
    
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.Velocity = Vector3.new(math.random(-10, 10), math.random(20, 50), math.random(-10, 10))
            bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bodyVelocity.Parent = confetti
    
            game.Debris:AddItem(confettiContainer, lifetime)
        end
    end
    local function createExplosionEffect(parent)
        local numParticles = 50
        local particleSize = 4
        local lifetime = 3
    
        local explosionContainer = Instance.new("Model")
        explosionContainer.Name = "ExplosionEffect"
        explosionContainer.Parent = workspace
    
        for i = 1, numParticles do
            local explosionParticle = Instance.new("Part")
            explosionParticle.Size = Vector3.new(particleSize, particleSize, particleSize)
            explosionParticle.Shape = Enum.PartType.Ball
            explosionParticle.Color = Color3.fromRGB(255, math.random(100, 200), 0)
            explosionParticle.Position = parent.Position + Vector3.new(math.random(-10, 10), math.random(-5, 5), math.random(-10, 10))
            explosionParticle.Anchored = true
            explosionParticle.CanCollide = false
            explosionParticle.Parent = explosionContainer
    
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.Velocity = Vector3.new(math.random(-50, 50), math.random(10, 50), math.random(-50, 50))
            bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bodyVelocity.Parent = explosionParticle
    
            game.Debris:AddItem(explosionContainer, lifetime)
        end
    end
    
    local function applyHitEffect(character)
        if not getgenv().HitEffectsEnabled then return end
    
        local Type = getgenv().SelectedHitEffect
    
        if Type == "Confetti" then
            createConfettiEffect(character:FindFirstChild("HumanoidRootPart"))
    
        elseif Type == "Explosion" then
            createExplosionEffect(character:FindFirstChild("HumanoidRootPart"))
    
        else
            local DefaultEffect = Instance.new("Part")
            DefaultEffect.Size = Vector3.new(5, 5, 5)
            DefaultEffect.Color = Color3.new(1, 0, 0)
            DefaultEffect.Parent = character:FindFirstChild("HumanoidRootPart")
            delay(2, function()
                DefaultEffect:Destroy()
            end)
        end
    end
    local CoreGui = game:GetService("CoreGui")
    
    local cursorPresets = {
        Sonic = "12233185690",
        Heart = "12233185700"
    }
    
    local function updateCursorImage(imageID)
        local LocalPlayer = Players.LocalPlayer
        if LocalPlayer then
            local DataFolder = LocalPlayer:FindFirstChild("DataFolder")
            if DataFolder then
                local CursorImage = DataFolder:FindFirstChild("CursorImage")
                if CursorImage then
                    CursorImage.Value = imageID
                else
                    warn("CursorImage not found in DataFolder")
                end
            else
                warn("DataFolder not found in LocalPlayer")
            end
        else
            warn("LocalPlayer not found")
        end
    end
    
    local sgg = Instance.new("ScreenGui")
    sgg.Parent = CoreGui
    sgg.Enabled = true
    
    local wm = Instance.new("TextLabel")
    wm.Size = UDim2.new(0, 200, 0, 20)
    wm.TextColor3 = Color3.new(1, 1, 1)
    wm.BackgroundTransparency = 1
    wm.TextTransparency = 0.4
    wm.Font = Enum.Font.Code
    wm.TextSize = 14
    wm.Text = "xuaa : universal"
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
    
    getgenv().CursorWM = false
    
    Configuration2:AddDropdown('', {
        Default = 1,
        Values = {'Sonic', 'Heart'},
        Multi = false,
        Text = 'Preset Cursors',
        Callback = function(Value)
            getgenv().SelectedCursor = Value
        end
    })
    
    Configuration2:AddInput('', {
        Default = '',
        Numeric = false,
        Finished = false,
        Text = '',
        Placeholder = 'Set Custom Cursor',
        Callback = function(cursor)
            getgenv().CustomCursor = cursor
        end
    })
    
    Configuration2:AddButton({
        Text = 'Set Cursor',
        Func = function()
            local selectedCursorName = getgenv().SelectedCursor
            if selectedCursorName and cursorPresets[selectedCursorName] then
                updateCursorImage(cursorPresets[selectedCursorName])
            else
                updateCursorImage(getgenv().CustomCursor)
            end
        end,
        DoubleClick = false
    })
    
    Configuration2:AddToggle('', {
        Text = 'Cursor Watermark',
        Default = false,
        Callback = function(enabled)
            getgenv().CursorWM = enabled
            wm.Visible = enabled
        end
    })
    Checks:AddToggle('', {
        Text = 'Enabled Crew Check',
        Default = false,
        Callback = function(Value)
            getgenv().ECC = Value
        end
    })
    Checks:AddToggle('', {
        Text = 'Enabled Friend(s) Check',
        Default = false,
        Callback = function(Value)
            getgenv().EFC = Value
        end
    })
    Checks:AddToggle('', {
        Text = 'Enabled Visible Check',
        Default = false,
        Callback = function(Value)
            getgenv().EVC = Value
        end
    })
    Checks:AddToggle('', {
        Text = 'Enabled Dead Check',
        Default = false,
        Callback = function(Value)
            getgenv().EDC = Value
        end
    })
    --
    Checks:AddToggle('', {
        Text = 'Enabled Grabbed Check',
        Default = false,
        Callback = function(Value)
            getgenv().EGC = Value
        end
    })
    --[[
    ]]--
    
    local transparency = 0.5
    local bodyColor = Color3.fromRGB(0, 170, 255)
    local gunColor = Color3.fromRGB(0, 170, 255)
    local barrierMaterial = Enum.Material.ForceField
    
    local bodyPartNames = {
        "UpperTorso", "LowerTorso",
        "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm",
        "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg",
        "LeftUpperLeg", "RightLowerLeg", "RightFoot", "RightUpperLeg"
    }
    
    local selfChamsEnabled = false
    local gunChamsEnabled = false
    local originalProperties = {}
    
    local function applyChamsToPart(part)
        if part:IsA("BasePart") then
            if not originalProperties[part] then
                originalProperties[part] = {
                    Transparency = part.Transparency,
                    Material = part.Material,
                    Color = part.Color
                }
            end
            
            if part.Parent == LocalPlayer.Character then
                if part.Name == "HumanoidRootPart" or part.Name == "Head" then
                    part.Transparency = 1
                elseif table.find(bodyPartNames, part.Name) then
                    part.Material = barrierMaterial
                    part.Transparency = transparency
                    part.Color = bodyColor
                end
            end
        end
    end
    
    local function createBarrier()
        local character = LocalPlayer.Character
        if character and selfChamsEnabled then
            for _, part in ipairs(character:GetDescendants()) do
                applyChamsToPart(part)
            end
        end
    end
    
    local function applyChamsToTool(tool)
        if gunChamsEnabled then
            for _, part in ipairs(tool:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Material = barrierMaterial
                    part.Transparency = transparency
                    part.Color = gunColor
                    if part.Name == "Handle" then
                        part.Transparency = 1
                    end
                end
            end
        end
    end
    
    local function restoreOriginalAppearance()
        for part, props in pairs(originalProperties) do
            if part:IsA("BasePart") then
                part.Transparency = props.Transparency
                part.Material = props.Material
                part.Color = props.Color
            end
        end
        originalProperties = {}
    end
    
    local function onToolAdded(tool)
        if tool:IsA("Tool") then
            applyChamsToTool(tool)
        end
    end
    
    LocalPlayer.CharacterAdded:Connect(createBarrier)
    LocalPlayer.Backpack.ChildAdded:Connect(onToolAdded)
    
    if LocalPlayer.Character then
        createBarrier()
    end
    for _, tool in ipairs(LocalPlayer.Backpack:GetChildren()) do
        onToolAdded(tool)
    end
    
    Configuration3:AddToggle('', {
        Text = 'Self Chams',
        Default = false,
        Callback = function(Value)
            selfChamsEnabled = Value
            if selfChamsEnabled then
                createBarrier()
            else
                restoreOriginalAppearance()
            end
        end
    })
    :AddColorPicker('', {
        Default = bodyColor,
        Transparency = nil,
        Callback = function(Value)
            bodyColor = Value
            if selfChamsEnabled then
                createBarrier()
            end
        end
    })
    
    
    Configuration3:AddToggle('', {
        Text = 'Self Gun Chams',
        Default = false,
        Callback = function(Value)
            gunChamsEnabled = Value
            if gunChamsEnabled then
                for _, tool in ipairs(LocalPlayer.Backpack:GetChildren()) do
                    applyChamsToTool(tool)
                end
            else
                restoreOriginalAppearance()
            end
        end
    }):AddColorPicker('', {
        Default = gunColor,
        Transparency = nil,
        Callback = function(Value)
            gunColor = Value
            if gunChamsEnabled then
                for _, tool in ipairs(LocalPlayer.Backpack:GetChildren()) do
                    applyChamsToTool(tool)
                end
            end
        end
    })
    local teleportLocations = {
        "Uphill",
        "Carnival",
        "Park",
        "Da Boxing Club",
        "Admin Base",
        "Admin Base Guns",
        "Downhill",
        "Double Barrel",
        "Da Casino",
        "Trailer",
        "HighSchool",
        "Revolver",
        "Bank",
        "Sewer",
        "Fire Station",
        "Hood Fitness",
        "Hood Kicks",
        "Jail",
        "Church"
    }
    
    local selectedLocation = nil
    
    -- Function to handle teleporting to a specific location
    local function teleportToLocation(location)
        local teleportCoordinates = {
            Uphill = CFrame.new(482, 48, -602),
            Carnival = CFrame.new(143, 25, -992),
            Park = CFrame.new(-268, 22, -754),
            ["Da Boxing Club"] = CFrame.new(-213, 22, -1119),
            ["Admin Base"] = CFrame.new(-800, -40, -887),
            ["Admin Base Guns"] = CFrame.new(-872, -33, -536),
            Downhill = CFrame.new(-565, 8, -737),
            ["Double Barrel"] = CFrame.new(-1042, 22, -261),
            ["Da Casino"] = CFrame.new(-864, 22, -143),
            Trailer = CFrame.new(-963, -1, 469),
            HighSchool = CFrame.new(-653, 22, 257),
            Revolver = CFrame.new(-642, 22, -124),
            Bank = CFrame.new(-446, 39, -286),
            Sewer = CFrame.new(112, -27, -277),
            ["Fire Station"] = CFrame.new(-150, 54, -94),
            ["Hood Fitness"] = CFrame.new(-76, 23, -638),
            ["Hood Kicks"] = CFrame.new(-188, 22, -410),
            Jail = CFrame.new(-299, 22, -91),
            Church = CFrame.new(205, 22, -80)
        }
    
        local player = game.Players.LocalPlayer
        local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart and teleportCoordinates[location] then
            humanoidRootPart.CFrame = teleportCoordinates[location]
        else
            warn("Teleport location or player character not found.")
        end
    end
    Teleports:AddDropdown('', {
        AllowNull = true,
        Values = teleportLocations,
        Multi = false,
        Text = 'Locations',
        Callback = function(Value)
            selectedLocation = Value
        end
    })
    Teleports:AddButton({
        Text = 'Teleport',
        Func = function()
            if selectedLocation then
                teleportToLocation(selectedLocation)
            else
                warn("Select a location from the dropdown first.")
            end
        end,
        DoubleClick = false
    })
    local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
    MenuGroup:AddButton('Unload', function() Library:Unload() end)
    if not Options then
        Options = {}
    end
    if not Options.MenuKeybind then
        Options.MenuKeybind = 'End'
    end
    MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = Options.MenuKeybind, NoUI = true, Text = 'Menu keybind' })
    Library.ToggleKeybind = Options.MenuKeybind
    
    ThemeManager:SetLibrary(Library)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
    ThemeManager:SetFolder('Xuaa')
    SaveManager:SetFolder('Xuaa/Da Hood')
    SaveManager:BuildConfigSection(Tabs['UI Settings'])
    ThemeManager:ApplyToTab(Tabs['UI Settings'])
    SaveManager:LoadAutoloadConfig()
    end)
