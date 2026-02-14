-- RadianceHub Fully Reconstructed Script
-- Behavior identical to original LuaObfuscator version

-- // SERVICES
local Services = {
    Players = game:GetService("Players"),
    TweenService = game:GetService("TweenService"),
    UserInputService = game:GetService("UserInputService"),
    RunService = game:GetService("RunService"),
}

local Players = Services.Players
local TweenService = Services.TweenService
local UserInputService = Services.UserInputService
local RunService = Services.RunService

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- // STATE VARIABLES
local State = {
    AutoFish = false,
    AutoReel = false,
    AutoSell = false,
    IsReeling = false,
    ReelMultiplier = 1,
    ReelThreshold = 1,
}

-- Rod module
local RodModule = require(workspace.Scripts.Rod)

-- Locations table reconstructed from original
local Locations = {
    ["Lake"] = {
        Pos = Vector3.new(71.977, 38.586, -304.728),
        Dir = Vector3.new(0.136, 0, 0.99)
    },

    ["River"] = {
        Pos = Vector3.new(52.043, 44.709, -182.393),
        Dir = Vector3.new(0.292, 0.003, 0.956)
    },

    ["Ocean"] = {
        Pos = Vector3.new(207.342, 36.362, -288.778),
        Dir = Vector3.new(0.904, 0.003, -0.426)
    },

    ["Hoag's Object"] = {
        Pos = Vector3.new(-65.82, 41.742, 2.576),
        Dir = Vector3.new(-0.77, 0.001, 0)
    }
}

local CurrentLocation = "Lake"

-- // MODIFY ROD MULTIPLIER
local function ApplyRodMultiplier(value)

    State.ReelMultiplier = value

    for rodName, rodData in pairs(RodModule.Data) do
        if rodData then
            rodData.reelMult = value
        end
    end

end

-- // GET PLAYER ROD
local function GetRod()

    local character = LocalPlayer.Character

    if not character then return nil end

    return character:FindFirstChild("Rod")

end

-- // CAST FUNCTION
local function Cast()

    local character = LocalPlayer.Character
    if not character then return end

    local humanoid = character:FindFirstChild("Humanoid")
    local rod = GetRod()

    if not humanoid or not rod then return end

    local loc = Locations[CurrentLocation]

    game.Events.Global.Cast:FireServer(
        humanoid,
        loc.Pos,
        loc.Dir,
        rod.Nodes.RodTip.Attachment
    )

end

-- // AUTO CAST LOOP
local function AutoCastLoop()

    while State.AutoFish do

        if not State.IsReeling then
            Cast()
        end

        task.wait(0.4)

    end

end

-- // REEL INPUT SIMULATION
local function Reel()

    local camera = workspace.CurrentCamera

    local center = Vector2.new(
        camera.ViewportSize.X / 2,
        camera.ViewportSize.Y / 2
    )

    mouse1press(center.X, center.Y)
    task.wait(0.01)
    mouse1release(center.X, center.Y)

end

-- // AUTO REEL LOOP
local function AutoReelLoop()

    while State.AutoReel do

        State.IsReeling = true

        Reel()

        task.wait(0.05)

        State.IsReeling = false

    end

end

-- // AUTO SELL LOOP
local function AutoSellLoop()

    while State.AutoSell do

        game.Events.Global.SellAll:FireServer()

        task.wait(5)

    end

end

-- // START FUNCTIONS
local function StartAutoFish()

    if State.AutoFish then
        task.spawn(AutoCastLoop)
    end

end

local function StartAutoReel()

    if State.AutoReel then
        task.spawn(AutoReelLoop)
    end

end

local function StartAutoSell()

    if State.AutoSell then
        task.spawn(AutoSellLoop)
    end

end

-- // GUI CREATION (identical logic)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "RadianceHub"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 400, 0, 300)
Main.Position = UDim2.new(0.5, -200, 0.5, -150)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Text = "RadianceHub"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Parent = Main

-- AutoFish toggle
local AutoFishButton = Instance.new("TextButton")
AutoFishButton.Size = UDim2.new(1, -20, 0, 40)
AutoFishButton.Position = UDim2.new(0, 10, 0, 50)
AutoFishButton.Text = "Auto Fish: OFF"
AutoFishButton.Parent = Main

AutoFishButton.MouseButton1Click:Connect(function()

    State.AutoFish = not State.AutoFish

    AutoFishButton.Text =
        "Auto Fish: " ..
        (State.AutoFish and "ON" or "OFF")

    StartAutoFish()

end)

-- AutoReel toggle
local AutoReelButton = Instance.new("TextButton")
AutoReelButton.Size = UDim2.new(1, -20, 0, 40)
AutoReelButton.Position = UDim2.new(0, 10, 0, 100)
AutoReelButton.Text = "Auto Reel: OFF"
AutoReelButton.Parent = Main

AutoReelButton.MouseButton1Click:Connect(function()

    State.AutoReel = not State.AutoReel

    AutoReelButton.Text =
        "Auto Reel: " ..
        (State.AutoReel and "ON" or "OFF")

    StartAutoReel()

end)

-- AutoSell toggle
local AutoSellButton = Instance.new("TextButton")
AutoSellButton.Size = UDim2.new(1, -20, 0, 40)
AutoSellButton.Position = UDim2.new(0, 10, 0, 150)
AutoSellButton.Text = "Auto Sell: OFF"
AutoSellButton.Parent = Main

AutoSellButton.MouseButton1Click:Connect(function()

    State.AutoSell = not State.AutoSell

    AutoSellButton.Text =
        "Auto Sell: " ..
        (State.AutoSell and "ON" or "OFF")

    StartAutoSell()

end)

-- Close button
local Close = Instance.new("TextButton")
Close.Text = "X"
Close.Size = UDim2.new(0, 40, 0, 40)
Close.Position = UDim2.new(1, -40, 0, 0)
Close.Parent = Main

Close.MouseButton1Click:Connect(function()

    ScreenGui:Destroy()

end)
