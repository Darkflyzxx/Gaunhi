local player = game.Players.LocalPlayer
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Rayfield Example Window",
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by Sirius",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink",
       RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = {"Hello"}
    }
 })

 local Tab = Window:CreateTab("SC", 4483362458)
 local Section = Tab:CreateSection("SC!")
 local Button = Tab:CreateButton({
    Name = "Button Example",
    Callback = function()
        local runDummyScript = function(f,scri)
            local oldenv = getfenv(f)
            local newenv = setmetatable({}, {
            __index = function(_, k)
            if k:lower() == 'script' then
            return scri
            else
            return oldenv[k]
            end
            end
            })
            setfenv(f, newenv)
            ypcall(function() f() end)
            end
            cors = {}
            mas = Instance.new("Model",game:GetService("Lighting")) 
            mas.Name = "CompiledModel"
            o1 = Instance.new("ScreenGui")
            o2 = Instance.new("Frame")
            o3 = Instance.new("TextButton")
            o4 = Instance.new("TextButton")
            o5 = Instance.new("TextLabel")
            o6 = Instance.new("ImageButton")
            o7 = Instance.new("LocalScript")
            o1.Name = "SpectateGui"
            o1.Parent = mas
            o2.Name = "Bar"
            o2.Parent = o1
            o2.Position = UDim2.new(-1,-100,0.87999999523163,-50)
            o2.Size = UDim2.new(0,200,0,50)
            o2.Position = UDim2.new(-1,-100,0.87999999523163,-50)
            o2.BackgroundColor3 = Color3.new(0, 0, 0)
            o2.BackgroundTransparency = 0.20000000298023
            o2.BorderSizePixel = 5
            o3.Name = "Previous"
            o3.Parent = o2
            o3.Size = UDim2.new(0.25,0,1,0)
            o3.Text = "<"
            o3.BackgroundColor3 = Color3.new(0.52549, 0.52549, 0.52549)
            o3.BorderColor3 = Color3.new(0.509804, 0.796079, 1)
            o3.BorderSizePixel = 0
            o3.Font = Enum.Font.SourceSans
            o3.FontSize = Enum.FontSize.Size48
            o3.TextColor3 = Color3.new(1, 1, 1)
            o4.Name = "Next"
            o4.Parent = o2
            o4.Position = UDim2.new(1,0,0,0)
            o4.Size = UDim2.new(-0.25,0,1,0)
            o4.Text = ">"
            o4.Position = UDim2.new(1,0,0,0)
            o4.BackgroundColor3 = Color3.new(0.52549, 0.52549, 0.52549)
            o4.BorderColor3 = Color3.new(0.509804, 0.796079, 1)
            o4.BorderSizePixel = 0
            o4.Font = Enum.Font.SourceSans
            o4.FontSize = Enum.FontSize.Size48
            o4.TextColor3 = Color3.new(1, 1, 1)
            o5.Name = "Title"
            o5.Parent = o2
            o5.Position = UDim2.new(0.27500000596046,0,0,0)
            o5.Size = UDim2.new(0.44999998807907,0,1,0)
            o5.Text = ""
            o5.Position = UDim2.new(0.27500000596046,0,0,0)
            o5.BackgroundColor3 = Color3.new(1, 1, 1)
            o5.BackgroundTransparency = 1
            o5.Font = Enum.Font.SourceSans
            o5.FontSize = Enum.FontSize.Size14
            o5.TextColor3 = Color3.new(1, 1, 1)
            o5.TextScaled = true
            o5.TextWrapped = true
            o6.Name = "Button"
            o6.Parent = o1
            o6.Position = UDim2.new(0,0,0.5,-25)
            o6.Size = UDim2.new(0,50,0,50)
            o6.Position = UDim2.new(0,0,0.5,-25)
            o6.BackgroundColor3 = Color3.new(1, 1, 1)
            o6.BackgroundTransparency = 0.30000001192093
            o6.BorderSizePixel = 5
            o6.Image = "http://www.roblox.com/asset/?id=176106970"
            o7.Parent = o1
            table.insert(cors,coroutine.create(function()
            wait()
            runDummyScript(function()
            -- By super10099
             
            cam = game.Workspace.CurrentCamera
             
            local bar = script.Parent.Bar
            local title = bar.Title
            local prev = bar.Previous
            local nex = bar.Next
            local button = script.Parent.Button
             
            function get()
                for _,v in pairs(game.Players:GetPlayers())do
                    if v.Name == title.Text then
                        return(_)
                    end
                end
            end
             
             
            local debounce = false
            button.MouseButton1Click:connect(function()
                if debounce == false then debounce = true
                    bar:TweenPosition(UDim2.new(.5,-100,0.88,-50),"In","Linear",1,true)
                    pcall(function()
                            title.Text = game.Players:GetPlayerFromCharacter(cam.CameraSubject.Parent).Name
                    end)
                elseif debounce == true then debounce = false
                    pcall(function() cam.CameraSubject = game.Players.LocalPlayer.Character.Humanoid end)
                        bar:TweenPosition(UDim2.new(-1,-100,0.88,-50),"In","Linear",1,true)
                    end
            end)
             
            prev.MouseButton1Click:connect(function()
                wait(.1)
                local players = game.Players:GetPlayers()
                local num = get()
                if not pcall(function() 
                    cam.CameraSubject = players[num-1].Character.Humanoid
                    end) then
                    cam.CameraSubject = players[#players].Character.Humanoid
                end
            pcall(function()
                            title.Text = game.Players:GetPlayerFromCharacter(cam.CameraSubject.Parent).Name
                    end)
            end)
             
            nex.MouseButton1Click:connect(function()
                wait(.1)
                local players = game.Players:GetPlayers()
                local num = get()
                if not pcall(function() 
                    cam.CameraSubject = players[num+1].Character.Humanoid
                    end) then
                    cam.CameraSubject = players[1].Character.Humanoid
                end
            pcall(function()
                            title.Text = game.Players:GetPlayerFromCharacter(cam.CameraSubject.Parent).Name
                    end)
            end)
             
             
            end,o7)
            end))
            mas.Parent = workspace
            mas:MakeJoints()
            local mas1 = mas:GetChildren()
            for i=1,#mas1 do
                mas1[i].Parent = game:GetService("Players").LocalPlayer.PlayerGui 
                ypcall(function() mas1[i]:MakeJoints() end)
            end
            mas:Destroy()
            for i=1,#cors do
            coroutine.resume(cors[i])
            end
    end,
 })
 local Button = Tab:CreateButton({
    Name = "TELEPORT",
    Callback = function()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        local File = pcall(function()
            AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
        end)
        if not File then
            table.insert(AllIDs, actualHour)
            writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
        end
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.playing) <= 5 then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    delfile("NotSameServers.json")
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
         
        function TeleportSmall()
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
         
        -- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
        TeleportSmall()
    end,
 })
 local Toggle = Tab:CreateToggle({
    Name = "ESP",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
   -- by slice
local MainParent = game.workspace.Terrain or nil
local LineFrame = Instance.new("ScreenGui",MainParent)
LineFrame.Name = "Lines"
LineFrame.Enabled = false
ToggleKey = Enum.KeyCode.F1
local Spotted = {};
local CharacterMotors = {}
CharacterMotors.GetMotors = function(char)
    local Motors = {}
        for i,v in pairs(char:GetDescendants()) do
            if v:IsA("Motor6D") then
                if v.Part0 and v.Part1 then--and v.Part0.Name ~= "HumanoidRootPart" and v.Part1.Name ~= "HumanoidRootPart" then
                    table.insert(Motors,{v.Part0,v.Part1})
                end
            end
        end
    table.insert(Motors,{char:FindFirstChild("Head") or char.PrimaryPart,"Camera"})
    CharacterMotors[char] = Motors
    return CharacterMotors[char]
end
        
lerp = function(a, b, t)
    return a + (b - a) * t
end
 
local ESP = {Characters = {}}
ESP.Visible = true
ESP.Init = function(char,plr)
    --if (game:GetService("Players").LocalPlayer.Team == nil or plr.Team ~= game:GetService("Players").LocalPlayer.Team) then
        char.DescendantAdded:Connect(function()
            CharacterMotors.GetMotors(char)
        end)
        
        local BillboardUi = Instance.new("BillboardGui")
        BillboardUi.AlwaysOnTop = true
        BillboardUi.Size = UDim2.new(3,60,1,30)
        BillboardUi.StudsOffsetWorldSpace = Vector3.new(0,-4.5,0)
        BillboardUi.Adornee = char:WaitForChild("HumanoidRootPart")
        
        local PlayerName = Instance.new("TextLabel",BillboardUi)
        PlayerName.BackgroundTransparency = 1
        PlayerName.TextColor3 = (game:GetService("Players"):GetPlayerFromCharacter(char)).TeamColor.Color
        PlayerName.Size = UDim2.new(1,0,.3,0)
        PlayerName.ZIndex = 2
        PlayerName.Text = char.Name
        PlayerName.TextScaled = true
        PlayerName.TextStrokeTransparency = .25
        PlayerName.Font = Enum.Font.GothamBold
        PlayerName.TextStrokeColor3 = Color3.fromRGB(33, 33, 33)
        
        local Distance = PlayerName:Clone()
        Distance.Parent = BillboardUi
        Distance.Font = Enum.Font.Gotham
        Distance.TextColor3 = Color3.new(1,1,1)
        Distance.Position = UDim2.new(0,0,.3,0)
        
        local Health = PlayerName:Clone()
        Health.Parent = BillboardUi
        Health.Font = Enum.Font.Gotham
        Health.Position = UDim2.new(0,0,.6,0)
        
        ESP.Characters[char] = {PlayerName,Distance,Health,BillboardUi}
    --end
end
ESP.Render = function()
    
    for i,v in pairs(ESP.Characters) do
        pcall(function()
            local shrink = ((((game.Workspace.CurrentCamera.CFrame.p) - i.HumanoidRootPart.Position).Magnitude)/1500)+1
            v[2].Text = math.floor(((game.Workspace.CurrentCamera.CFrame.p) - i.HumanoidRootPart.Position).Magnitude+.5)
            v[3].Text = math.floor(i.Humanoid.Health).."/"..i.Humanoid.MaxHealth.." - "..math.floor(((i.Humanoid.Health/i.Humanoid.MaxHealth)*100)+.5).."%"
            v[3].TextColor3 = Color3.fromHSV((i.Humanoid.Health/i.Humanoid.MaxHealth) * (80/255),1,1)
            if not Spotted[i] then
                --v[1].TextTransparency = lerp(v[1].TextTransparency,.6,0.05)
            else
                --v[1].TextTransparency = lerp(v[1].TextTransparency,0,0.1)
            end
            v[1].TextColor3 = (game:GetService("Players"):GetPlayerFromCharacter(i)).TeamColor.Color
            --v[1].TextStrokeTransparency = 1-((1-v[1].TextTransparency)/2)
            --v[2].TextTransparency = v[1].TextTransparency
            --v[2].TextStrokeTransparency = v[1].TextStrokeTransparency
            --v[3].TextTransparency = v[1].TextTransparency
            --v[3].TextStrokeTransparency = v[1].TextStrokeTransparency
            v[4].Size = UDim2.new(3,60/shrink,1,30/shrink)
            v[1].Visible = ESP.Visible
            v[2].Visible = ESP.Visible
            v[3].Visible = ESP.Visible
            v[4].Parent = MainParent
            
        end)
    end
    
end
 
local Perspective = {}
Perspective.CalculatePoint = function(position,cam)
    local vector, onScreen = cam:WorldToScreenPoint(position)
    return Vector2.new(vector.X, vector.Y),vector.Z,onScreen
end
 
local Draw = {UsedLines = {}}
Draw.Line = function(a,b,line,width)
    if a and b then 
        local lerp = a:Lerp(b,.5)
        local Magnitude = (a-b).Magnitude
        line.AnchorPoint = Vector2.new(0.5,.5)
        line.Position = UDim2.new(lerp.X/game.Workspace.CurrentCamera.ViewportSize.X,0,(lerp.Y/(game.Workspace.CurrentCamera.ViewportSize.Y-36)),36/2)
        line.Size = UDim2.new(Magnitude/line.Parent.AbsoluteSize.X,0,0,width)
        line.Rotation = math.deg(math.atan2(a.y - b.y, a.x - b.x))
    else
        line:Destroy()
    end
end
 
 
Draw.Character = function(player,lines,cam)
    local Motors = CharacterMotors[player]
    if not Motors then
        Motors = CharacterMotors.GetMotors(player)
    end
 
    for i,v in pairs(Motors) do
        if v[1] and v[2] then
            local FoundLine = nil
            for i,v in pairs(lines:GetChildren()) do
                if Draw.UsedLines[v] == nil then
                    Draw.UsedLines[v] = true
                    FoundLine = v
                    break
                end
            end
            local a2d,az,screen = Perspective.CalculatePoint(v[1].Position,cam)
            local b2d,bz,screen2
            local v2pos = v[2].Position
            Spotted[player] = false
            if v[2] == "Camera" then
                local ray = Ray.new(v[1].Position, (cam.CFrame.p - v[1].Position).unit * (cam.CFrame.p - v[1].Position).Magnitude)
                local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {game:GetService("Players").LocalPlayer.Character,player}, false, true)
                if part then
                    screen = false
                    screen2 = false
                else
                    Spotted[player] = true
                    b2d,bz,screen2 = Vector2.new(cam.ViewportSize.x/2, cam.ViewportSize.y),0,true   
                    screen = true
                end
                v2pos = v[1].Position
            else
                b2d,bz,screen2 = Perspective.CalculatePoint(v[2].Position,cam)  
            end
            if screen and screen2 and (v[1].Position-v2pos).Magnitude <= 5 then
                if not FoundLine then
                    FoundLine = Instance.new("Frame")
                    FoundLine.BackgroundColor3 = Color3.new(1,1,1)
                    FoundLine.BackgroundTransparency = .25
                    FoundLine.BorderSizePixel = 0
                    FoundLine.Parent = lines    
                    Draw.UsedLines[FoundLine] = true
                end
                if screen then
                    Draw.Line(a2d,b2d,FoundLine,1)
                else
                    Draw.Line(b2d,a2d,FoundLine,1)
                end
            elseif FoundLine then
                FoundLine:Destroy()
            end
        end
    end
end
 
Draw.ResetLines = function(lines)
    for i,v in pairs(lines:GetChildren()) do
        if Draw.UsedLines[v] == nil then
            v:Destroy()
        end
    end
    Draw.UsedLines = {}
end
 
local AddPlayer = function(plr)
    coroutine.resume(coroutine.create(function()
        if plr ~= game:GetService("Players").LocalPlayer  then
            if plr.Character then
                ESP.Init(plr.Character,plr)
            end
            plr.CharacterAdded:Connect(function(cha)
                ESP.Init(cha,plr)
            end)
        end
    end))
end
 
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    AddPlayer(v)
end
game:GetService("Players").PlayerAdded:Connect(function(v)
    AddPlayer(v)
end)
game:GetService("UserInputService").InputBegan:connect(function(inputObject)
    if inputObject.KeyCode == ToggleKey then
        ESP.Visible = not ESP.Visible
    end
end)
game:GetService("RunService").RenderStepped:Connect(function()
    ESP.Render()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Character and v ~= game:GetService("Players").LocalPlayer and (game:GetService("Players").LocalPlayer.Team == nil or v.Team ~= game:GetService("Players").LocalPlayer.Team) then
            if v.Character.PrimaryPart and (v.Character.PrimaryPart.Position - game.Workspace.CurrentCamera.CFrame.Position).Magnitude <= 200 then
                Draw.Character(v.Character,LineFrame,game.Workspace.CurrentCamera)
            end
        end
    end
    Draw.ResetLines(LineFrame)
end)
    end,
 })

 local Tab = Window:CreateTab("SwordBurst3", 4483362458)
 local Button = Tab:CreateButton({
    Name = "ANGEL SCRIPT",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/x3fall3nangel/FallAngelHub/main/Swordburst3.lua"))()
    end,
 })
