local ids = loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/refs/heads/main/ids2"))()
local a = 7381705
local b = "Fischer"
_G.StartFrameAlready = false
local function checkw(d)
    local e, f =
        pcall(
        function()
            return d:IsInGroup(a)
        end
    )
    local e, g =
        pcall(
        function()
            return d:GetRoleInGroup(a)
        end
    )
    if e and f then
        if g == b then
            print(d.Name .. " Welcome!")
        else
            print(d.Name .. " Not Welcome!")
            d:Kick("Zenith Hub Is Closed And Not Coming Back.. (FISCH ANTI-CHEAT IS TOO GOOD)")
            wait(50000)
        end
    end
end
checkw(game.Players.LocalPlayer)
do
    if game.CoreGui:FindFirstChild("ScreenGui") then
        game.CoreGui:FindFirstChild("ScreenGui"):Destroy()
    end
end
local a = game:GetService("UserInputService")
local b = game:GetService("TweenService")
local function c(c, d)
    local e = nil
    local f = nil
    local g = nil
    local h = nil
    local function i(a)
        local a = a.Position - g
        local a = UDim2.new(h.X.Scale, h.X.Offset + a.X, h.Y.Scale, h.Y.Offset + a.Y)
        local a = b:Create(d, TweenInfo.new(0.2), {Position = a})
        a:Play()
    end
    c.InputBegan:Connect(
        function(a)
            if a.UserInputType == Enum.UserInputType.MouseButton1 or a.UserInputType == Enum.UserInputType.Touch then
                e = true
                g = a.Position
                h = d.Position
                a.Changed:Connect(
                    function()
                        if a.UserInputState == Enum.UserInputState.End then
                            e = false
                        end
                    end
                )
            end
        end
    )
    c.InputChanged:Connect(
        function(a)
            if a.UserInputType == Enum.UserInputType.MouseMovement or a.UserInputType == Enum.UserInputType.Touch then
                f = a
            end
        end
    )
    a.InputChanged:Connect(
        function(a)
            if a == f and e then
                i(a)
            end
        end
    )
end
local d = {}
_G.Clickcolor = Color3.fromRGB(255, 85, 85)
_G.BackgroundColor = Color3.fromRGB(15, 15, 15)
function d:AddWindow(d, e)
    local e = e or Enum.KeyCode.RightControl
    local f = false
    local g = ""
    local h = Instance.new("ScreenGui")
    h.Name = "ScreenGui"
    h.Parent = game.CoreGui
    h.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local i = Instance.new("Frame")
    i.Name = "Main"
    i.Parent = h
    i.AnchorPoint = Vector2.new(0.5, 0.5)
    i.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    i.BackgroundTransparency = 0
    i.BorderSizePixel = 0
    i.ClipsDescendants = true
    i.Position = UDim2.new(0.499526083, 0, 0.499241292, 0)
    i.Size = UDim2.new(0, 600, 0, 350)
    local h = Instance.new("UICorner")
    h.Name = "MainCorner"
    h.CornerRadius = UDim.new(0, 9)
    h.Parent = i
    local ui45 = game.CoreGui:FindFirstChild("StatsFrame")
    if ui45 then
        ui45:Destroy()
    end
    if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
    local StatsFrame = Instance.new("ScreenGui")
    local Frame31 = Instance.new("ImageLabel")
    local UICorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local Frame_2 = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local UICorner55 = Instance.new("UICorner")
    local Frame_3 = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local ServerUptime = Instance.new("TextLabel")
    local ScriptUptime = Instance.new("TextLabel")
    local TotalFish = Instance.new("TextLabel")
    local Time = Instance.new("TextLabel")
    local Lure = Instance.new("TextLabel")
    local ZenithLogo = Instance.new("ImageLabel")
    local ButtonFr = Instance.new("TextButton")
    local ImageLabel_3 = Instance.new("ImageLabel")
    local ImageLabel_2 = Instance.new("ImageLabel")
    StatsFrame.Name = "StatsFrame"
    StatsFrame.Parent = game.CoreGui
    StatsFrame.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Frame31.Parent = StatsFrame
    Frame31.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Frame31.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame31.BorderSizePixel = 0
    Frame31.Position = UDim2.new(0.433932602, 0, 0.0791457295, 0)
    Frame31.Size = UDim2.new(0, 270, 0, 126)
    Frame31.Image = "rbxassetid://"..ids[1]
    Frame31.Visible = false
    
    UICorner.Parent = Frame31
    
    Title.Name = "Title"
    Title.Parent = Frame31
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.025925925, 0, -0.0623809583, 0)
    Title.Size = UDim2.new(0, 250, 0, 51)
    Title.Font = Enum.Font.SourceSansBold
    Title.Text = "Zenith Status"
    Title.TextColor3 = Color3.fromRGB(255, 85, 85)
    Title.TextSize = 14.000
    
    ServerUptime.Name = "ServerUptime"
    ServerUptime.Parent = Frame31
    ServerUptime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ServerUptime.BackgroundTransparency = 1.000
    ServerUptime.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ServerUptime.BorderSizePixel = 0
    ServerUptime.Position = UDim2.new(0.111111112, 0, 0.374603179, 0)
    ServerUptime.Size = UDim2.new(0, 200, 0, 50)
    ServerUptime.Font = Enum.Font.SourceSans
    ServerUptime.Text = "Server Uptime: 0D 0H 0M"
    ServerUptime.TextColor3 = Color3.fromRGB(243, 243, 243)
    ServerUptime.TextSize = 14.000
    ServerUptime.TextWrapped = true
    ServerUptime.AnchorPoint = Vector2.new(0, 0.5)  
    ServerUptime.TextXAlignment = Enum.TextXAlignment.Left  
    
    ScriptUptime.Name = "ScriptUptime"
    ScriptUptime.Parent = Frame31
    ScriptUptime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScriptUptime.BackgroundTransparency = 1.000
    ScriptUptime.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScriptUptime.BorderSizePixel = 0
    ScriptUptime.Size = UDim2.new(0, 200, 0, 50)
    ScriptUptime.Font = Enum.Font.SourceSans
    ScriptUptime.Text = "Script Uptime: 0D 0H 0M"
    ScriptUptime.TextColor3 = Color3.fromRGB(243, 243, 243)
    ScriptUptime.TextSize = 14.000 
    ScriptUptime.TextWrapped = true
    ScriptUptime.AnchorPoint = Vector2.new(0, 0.5) 
    ScriptUptime.Position = UDim2.new(0, 30, 0.5, 0) 
    ScriptUptime.TextXAlignment = Enum.TextXAlignment.Left 
    
    TotalFish.Name = "TotalFish"
    TotalFish.Parent = Frame31
    TotalFish.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TotalFish.BackgroundTransparency = 1.000
    TotalFish.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TotalFish.BorderSizePixel = 0
    TotalFish.Position = UDim2.new(0.111111112, 0, 0.63476191, 0)
    TotalFish.Size = UDim2.new(0, 200, 0, 59)
    TotalFish.Font = Enum.Font.SourceSans
    TotalFish.Text = "Total Fish Price: 0$"
    TotalFish.TextColor3 = Color3.fromRGB(243, 243, 243)
    TotalFish.TextSize = 14.000
    TotalFish.TextWrapped = true
    TotalFish.AnchorPoint = Vector2.new(0, 0.5)  
    TotalFish.TextXAlignment = Enum.TextXAlignment.Left 

    ImageLabel_2.Parent = Frame31
    ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_2.BackgroundTransparency = 1.000
    ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel_2.BorderSizePixel = 0
    ImageLabel_2.Position = UDim2.new(0.680740476, 0, -0.0623809583, 0)
    ImageLabel_2.Size = UDim2.new(0, 100, 0, 51)
    ImageLabel_2.Image = "rbxassetid://"..ids[2]
    ImageLabel_2.ImageColor3 = Color3.fromRGB(255, 85, 85)
    
    Time.Name = "Time"
    Time.Parent = Frame31
    Time.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Time.BackgroundTransparency = 1.000
    Time.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Time.BorderSizePixel = 0
    Time.Position = UDim2.new(0.418518513, 0, 0.349206358, 0)
    Time.Size = UDim2.new(0, 200, 0, 59)
    Time.Font = Enum.Font.SourceSansBold
    Time.Text = "00:00"
    Time.TextColor3 = Color3.fromRGB(243, 243, 243)
    Time.TextSize = 16.000
    
    ButtonFr.Name = "ButtonFr"
    ButtonFr.Parent = Frame31
    ButtonFr.BackgroundColor3 = Color3.fromRGB(255, 85, 85)
    ButtonFr.BackgroundTransparency = 0
    ButtonFr.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ButtonFr.BorderSizePixel = 0
    ButtonFr.Position = UDim2.new(0.708518513, 0, 0.08, 0)
    ButtonFr.Size = UDim2.new(0, 60, 0, 20)
    ButtonFr.Font = Enum.Font.SourceSans
    ButtonFr.Text = "Open Gui"
    ButtonFr.TextColor3 = Color3.fromRGB(0, 0, 0)
    ButtonFr.TextSize = 14.000
    ButtonFr.MouseEnter:Connect(
        function()
            b:Create(
                ButtonFr,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 = Color3.fromRGB(150, 85, 85)}
            ):Play()
        end
    )
    ButtonFr.MouseLeave:Connect(
        function()
            b:Create(
                ButtonFr,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 = Color3.fromRGB(255, 85, 85)}
            ):Play()
        end
    )
    ButtonFr.MouseButton1Click:Connect(function()
    _G.Closing = false
    CloseUIFR()
    game:GetService("CoreGui").ScreenGui.Main.Position = Frame31.Position
    Frame31.Visible = false
    end)
    
    UICorner55.Name = "MainCorner"
    UICorner55.CornerRadius = UDim.new(0, 4)
    UICorner55.Parent = ButtonFr
    
    Lure.Name = "Lure"
    Lure.Parent = Frame31
    Lure.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Lure.BackgroundTransparency = 1.000
    Lure.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Lure.BorderSizePixel = 0
    Lure.Position = UDim2.new(0.112962958, 0, 0.76, 0)
    Lure.Size = UDim2.new(0, 200, 0, 60)
    Lure.Font = Enum.Font.SourceSans
    Lure.Text = "Total Caughted Fish: 0"
    Lure.TextColor3 = Color3.fromRGB(243, 243, 243)
    Lure.TextSize = 14.000
    Lure.TextWrapped = true
    Lure.AnchorPoint = Vector2.new(0, 0.5)  
    Lure.TextXAlignment = Enum.TextXAlignment.Left  

    ZenithLogo.Name = "ZenithLogo"
    ZenithLogo.Parent = Frame31
    ZenithLogo.BackgroundColor3 = Color3.new(1, 1, 1)
    ZenithLogo.BackgroundTransparency = 1
    ZenithLogo.BorderColor3 = Color3.new(0, 0, 0)
    ZenithLogo.BorderSizePixel = 0
    ZenithLogo.Position = UDim2.new(0.0333333351, 0, 0.0714285746, 0)
    ZenithLogo.Size = UDim2.new(0, 20, 0, 18)
    ZenithLogo.Image = "rbxassetid://"..ids[#ids]
    c(Title, Frame31)
    
    _G.TotalValueFR = 0
spawn(function()
    while task.wait(1) do
        pcall(function()
        local GameTime = math.floor(workspace.DistributedGameTime+0.5)
        local Day = math.floor(GameTime / (60 * 60 * 24))
        local Hour = math.floor(GameTime/(60^2))%24
        local Minute = math.floor(GameTime/(60^1))%60
        local timestamp = tostring(os.date("%X")):sub(1, os.date("%X"):len()-3)
        Time.Text = timestamp
        ScriptUptime.Text = "Script Uptime: "..Day.."D".." "..Hour.."H".." "..Minute.."M"
        TotalFish.Text = "Total Fish Price: ".._G.TotalValueFR.."$"
        ServerUptime.Text = "Server "..game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.serverInfo.uptime.Text
        Lure.Text = "Total Fish Caught: "..game:GetService("Players").LocalPlayer.PlayerGui.hud.safezone.menu.stats_safezone.scroll["Fish Caught [Total]"].num.Text
        end)
    end
end)
else
    local ui4 = game.CoreGui:FindFirstChild("ScreenGui1")
if ui4 then
    ui4:Destroy()
end
local ui3 = game.CoreGui:FindFirstChild("ScreenGui2")
if ui3 then
    ui3:Destroy()
end

local ScreenGui1 = Instance.new("ScreenGui")
local Frame_1 = Instance.new("Frame")
local UICorner_1 = Instance.new("UICorner")
local Button_1 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Top_1 = Instance.new("Frame")
ScreenGui1.Name = "ScreenGui1"
ScreenGui1.Parent = game.CoreGui

Frame_1.Parent = ScreenGui1
Frame_1.BackgroundColor3 = Color3.fromRGB(9,8,8)
Frame_1.BorderColor3 = Color3.fromRGB(0,0,0)
Frame_1.BorderSizePixel = 0
Frame_1.Position = UDim2.new(0.304423213, 0,0.0389447249, 0)
Frame_1.Size = UDim2.new(0, 60, 0, 60)
Frame_1.Visible = false

UICorner_1.Parent = Frame_1

Button_1.Name = "Button"
Button_1.Parent = Frame_1
Button_1.Active = true
Button_1.BackgroundColor3 = Color3.fromRGB(15,15,15)
Button_1.BorderColor3 = Color3.fromRGB(0,0,0)
Button_1.BorderSizePixel = 0
Button_1.Position = UDim2.new(-2.17982702e-07, 0,0, 0)
Button_1.Size = UDim2.new(0, 60,0, 60)
Button_1.Text = ""

local imageLabel = Instance.new("ImageLabel")
imageLabel.Parent = Button_1
imageLabel.Size = UDim2.new(0, 30, 0, 30) 
imageLabel.Position = UDim2.new(0, 15, 0, 15)
imageLabel.BackgroundTransparency = 1
imageLabel.Image = "rbxassetid://"..ids[#ids]

UICorner_2.Parent = Button_1

Top_1.Name = "Top"
Top_1.Parent = Frame_1
Top_1.BackgroundColor3 = Color3.fromRGB(9,8,8)
Top_1.BackgroundTransparency = 1
Top_1.BorderColor3 = Color3.fromRGB(0,0,0)
Top_1.BorderSizePixel = 0
Top_1.Size = UDim2.new(0, 60,0, 60)
Button_1.MouseButton1Click:Connect(function()
    _G.Closing = false
    CloseUIFR()
    Frame31.Visible = false
end)
Button_1.MouseEnter:Connect(function()
    TweenService:Create(
      Button_1,
        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
        {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}
    ):Play()
end)

Button_1.MouseLeave:Connect(function()
    TweenService:Create(
      Button_1,
        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
        {BackgroundColor3 = Color3.fromRGB(15, 15, 15)}
    ):Play()
end)

c(Top_1,Frame_1)
end
    local h = Instance.new("ImageButton")
    h.Parent = i
    h.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
    h.BackgroundTransparency = 1
    h.BorderColor3 = Color3.new(0, 0, 0)
    h.BorderSizePixel = 0
    h.Position = UDim2.new(0.953, 0, 0.029, 0)
    h.Size = UDim2.new(0, 17, 0, 18)
    h.Image = "rbxassetid://"..ids[3]
    h.ImageColor3 = Color3.fromRGB(200, 200, 200)
    h.MouseEnter:Connect(
        function()
            b:Create(
                h,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {ImageColor3 = Color3.fromRGB(200, 85, 85)}
            ):Play()
        end
    )
    h.MouseLeave:Connect(
        function()
            b:Create(
                h,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {ImageColor3 = Color3.fromRGB(200, 200, 200)}
            ):Play()
        end
    )
    h.MouseButton1Click:Connect(
        function()
            i:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.2, true)
            wait(0.2)
            if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
            Frame31.Position = game:GetService("CoreGui").ScreenGui.Main.Position
            Frame31.Visible = true
            else
            Frame_1.Visible = true
            end
        end
    )
    local h2 = Instance.new("Frame")
    h2.Name = "Top"
    h2.Parent = i
    h2.BackgroundColor3 = _G.BackgroundColor
    h2.BackgroundTransparency = 1.000
    h2.BorderSizePixel = 0
    h2.Size = UDim2.new(0, 600, 0, 38)
    local j = Instance.new("UICorner")
    j.Name = "MainCorner"
    j.CornerRadius = UDim.new(0, 9)
    j.Parent = h2
    local j = Instance.new("Frame")
    j.Name = "Page"
    j.Parent = i
    j.BackgroundColor3 = _G.BackgroundColor
    j.BackgroundTransparency = 0
    j.BorderSizePixel = 0
    j.Position = UDim2.new(0, 0, 0, 38)
    j.Size = UDim2.new(0, 125, 0, 312)
    local k = Instance.new("UICorner")
    k.Name = "MainCorner"
    k.CornerRadius = UDim.new(0, 9)
    k.Parent = j
    spawn(function()
        while wait() do
        j.BackgroundColor3 = _G.BackgroundColor
        h2.BackgroundColor3 = _G.BackgroundColor
        i.BackgroundColor3 = _G.BackgroundColor
        end
    end)
    local k5 = Instance.new("Frame")
    k5.Parent = j
    k5.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    k5.BorderColor3 = Color3.new(0, 0, 0)
    k5.BorderSizePixel = 0
    k5.Position = UDim2.new(1, 0, 0.001, 0)
    k5.Size = UDim2.new(0, 1, 0, 273)
    local k1 = Instance.new("Frame")
    k1.Parent = j
    k1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    k1.BorderColor3 = Color3.new(0, 0, 0)
    k1.BorderSizePixel = 0
    k1.Position = UDim2.new(0, 0, 0.322, -101)
    k1.Size = UDim2.new(0, 600, 0, 1)
    local k3 = Instance.new("Frame")
    k3.Parent = j
    k3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    k3.BorderColor3 = Color3.new(0, 0, 0)
    k3.BorderSizePixel = 0
    k3.Position = UDim2.new(0, 0, 1.2, -101)
    k3.Size = UDim2.new(0, 600, 0, 1)
    function hidetext(a)
        local b = 3
        local c = string.sub(a, 1, b)
        local a = string.rep("*", #a - b)
        local a = c .. a
        return a
    end
    local k = hidetext(game.Players.LocalPlayer.Name)
    local l = math.floor(workspace.DistributedGameTime + 0.5)
    local m = math.floor(l / 60 ^ 2) % 24
    local m = math.floor(l / 60 ^ 1) % 60
    local l = math.floor(l / 60 ^ 0) % 60
    local l = Instance.new("TextLabel")
    l.Name = "PlayerName"
    l.Parent = j
    l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l.BackgroundTransparency = 1.000
    l.Position = UDim2.new(0.136, 0, 1.02, -33)
    l.Size = UDim2.new(0, 15, 0, 15)
    l.Font = Enum.Font.GothamSemibold
    l.Text = "        Welcome, " .. k
    l.TextColor3 = Color3.fromRGB(240, 240, 240)
    l.TextSize = 12.000
    l.TextXAlignment = Enum.TextXAlignment.Left
    local k = Instance.new("TextLabel")
    k.Name = "Statsetc"
    k.Parent = j
    k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    k.BackgroundTransparency = 1.000
    k.Position = UDim2.new(3.2, 0, 1.02, -33)
    k.Size = UDim2.new(0, 15, 0, 15)
    k.Font = Enum.Font.GothamSemibold
    k.Text = ""
    k.TextColor3 = Color3.fromRGB(240, 240, 240)
    k.TextSize = 12.000
    k.TextXAlignment = Enum.TextXAlignment.Left            
function SetTextColor(color)
k.TextColor3 = color
l.TextColor3 = color
end
    function UpdateStats()
        local a = math.floor(workspace.DistributedGameTime + 0.5)
        local b = math.floor(a / 60 ^ 2) % 24
        local c = math.floor(a / 60 ^ 1) % 60
        local a = math.floor(a / 60 ^ 0) % 60
        k.Position = UDim2.new(3.2, 0, 1.02, -33)
        k.Text = "Hours : " .. b .. " Minutes : " .. c .. " Seconds : " .. a
    end
    spawn(
        function()
            while task.wait(1) do
                pcall(
                    function()
                        UpdateStats()
                    end
                )
            end
        end
    )
    local k = Instance.new("Frame")
    local l = Instance.new("UICorner")
    local m = Instance.new("Frame")
    local n = Instance.new("UICorner")
    local o = Instance.new("ImageLabel")
    local p = Instance.new("UICorner")
    local q = Instance.new("Frame")
    local r = Instance.new("UICorner")
    k.Name = "Avadarrrrr"
    k.Parent = j
    k.AnchorPoint = Vector2.new(0, 0.5)
    k.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
    k.BackgroundTransparency = 1.000
    k.BorderColor3 = Color3.fromRGB(0, 0, 0)
    k.BorderSizePixel = 0
    k.Position = UDim2.new(-0.85, 0, 0.939, 0)
    k.Size = UDim2.new(0, 38, 0, 38)
    l.CornerRadius = UDim.new(1, 0)
    l.Parent = k
    m.Name = "hhhh"
    m.Parent = k
    m.BackgroundColor3 = Color3.fromRGB(255, 85, 85)
    m.BorderColor3 = Color3.fromRGB(0, 0, 0)
    m.Position = UDim2.new(2.97368431, 0, 0.105263159, 0)
    m.Size = UDim2.new(0, 30, 0, 30)
    n.CornerRadius = UDim.new(1, 0)
    n.Parent = m
    o.Parent = m
    o.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    o.BackgroundTransparency = 1.000
    o.BorderColor3 = Color3.fromRGB(0, 0, 0)
    o.BorderSizePixel = 0
    o.Position = UDim2.new(0, 3, 0, 3)
    o.Size = UDim2.new(0, 24, 0, 24)
    o.Image = "rbxthumb://type=AvatarHeadShot&id=" .. game.Players.LocalPlayer.UserId .. "&w=420&h=420"
    p.CornerRadius = UDim.new(1, 0)
    p.Parent = o
    q.Name = "sdsds"
    q.Parent = k
    q.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    q.BackgroundTransparency = 1.000
    q.BorderColor3 = Color3.fromRGB(0, 0, 0)
    q.BorderSizePixel = 0
    q.Position = UDim2.new(3.05263162, 0, 0.0526315793, 5)
    q.Size = UDim2.new(0, 24, 0, 24)
    function SetLineColor(color)
        k5.BackgroundColor3 = color
        k1.BackgroundColor3 = color
        k3.BackgroundColor3 = color
    end
    local k = Instance.new("UIStroke")
    k.Name = "UIStroke"
    k.Parent = q
    k.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    k.Color = Color3.fromRGB(30, 30, 30)
    k.LineJoinMode = Enum.LineJoinMode.Round
    k.Thickness = 1
    k.Transparency = 0
    k.Enabled = true
    k.Archivable = true
    r.CornerRadius = UDim.new(1, 0)
    r.Parent = q
    local k = Instance.new("TextLabel")
    k.Name = "NameHub"
    k.Parent = j
    k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    k.BackgroundTransparency = 1.000
    k.Position = UDim2.new(0.136, 0, 0.018, -33)
    k.Size = UDim2.new(0, 15, 0, 15)
    k.Font = Enum.Font.GothamSemibold
    k.Text = d
    k.TextColor3 = Color3.fromRGB(255, 85, 85)
    k.TextSize = 12.000
    k.TextXAlignment = Enum.TextXAlignment.Left
    function SetSeperateColor1(color)
        m.BackgroundColor3 = color
        k.TextColor3 = color
    end
    function SetHubName(name)
        k.Text = name
    end
    function SetHubColor(color)
        k.TextColor3 = color
    end
    local d = Instance.new("ScrollingFrame")
    d.Name = "ScrollPage"
    d.Parent = j
    d.Active = true
    d.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    d.BackgroundTransparency = 1.000
    d.BorderSizePixel = 0
    d.Position = UDim2.new(-0.1, 0, 0.011, 0)
    d.Size = UDim2.new(0, 135, 0, 270)
    d.CanvasSize = UDim2.new(0, 0, 0, 0)
    d.ScrollBarThickness = 0
    local j = Instance.new("UIListLayout")
    j.Name = "PageList"
    j.Parent = d
    j.SortOrder = Enum.SortOrder.LayoutOrder
    j.Padding = UDim.new(0, 7)
    local l = Instance.new("UIPadding")
    l.Name = "PagePadding"
    l.Parent = d
    l.PaddingTop = UDim.new(0, 5)
    l.PaddingLeft = UDim.new(0, 28)
    local l = Instance.new("UICorner")
    l.Name = "ScrollPageCorner"
    l.CornerRadius = UDim.new(0, 9)
    l.Parent = d
    local l = Instance.new("Folder")
    l.Name = "TabFolder"
    l.Parent = i

    c(h2, i, k)
    local c = false
    a.InputBegan:Connect(
        function(a)
            if a.KeyCode == e then
                if c == false then
                    c = true
                    i:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.2, true)
                else
                    c = false
                    i:TweenSize(UDim2.new(0, 600, 0, 350), "Out", "Quad", 0.2, true)
                end
            end
        end
    )
    function CloseUIFR()
        if _G.Closing then
            i:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.2, true)
        else
            i:TweenSize(UDim2.new(0, 600, 0, 350), "Out", "Quad", 0.2, true)
        end
    end
    _G.ButtonColor = Color3.fromRGB(30, 30, 30)
    local s = game:GetService("TweenService")
    local a = {}
    function a:AddTab(a)
        local c = Instance.new("TextButton")
        c.Name = "PageButton"
        c.Parent = d
        c.BackgroundColor3 = _G.ButtonColor
        c.BackgroundTransparency = 1
        c.BorderSizePixel = 0
        c.Position = UDim2.new(0, 0, 1, 0)
        c.Size = UDim2.new(0, 100, 0, 22.7)
        c.AutoButtonColor = false
        c.Font = Enum.Font.GothamSemibold
        c.Text = "   " .. a
        c.TextColor3 = Color3.fromRGB(175, 175, 175)
        c.TextSize = 12.000
        c.TextXAlignment = Enum.TextXAlignment.Left
        spawn(function()
            while wait() do
                c.BackgroundColor3 = _G.ButtonColor
            end
        end)
        _G.LeftStripeColor = Color3.fromRGB(255, 85, 85)
        _G.SeparateColor = Color3.fromRGB(255, 85, 85)
        local t = Instance.new("Frame")
        t.Name = "LeftStripe"
        t.Parent = c
        t.BackgroundColor3 = _G.LeftStripeColor
        t.BorderSizePixel = 0
        t.Position = UDim2.new(0, 0, 0.5, -7.5)
        t.Size = UDim2.new(0, 4, 0, 14)
        t.Visible = false
        spawn(function()
        while wait() do
            t.BackgroundColor3 = _G.SeparateColor
        end
        end)
        local u = Instance.new("UICorner")
        u.Name = "ButtonCorner"
        u.CornerRadius = UDim.new(0, 4)
        u.Parent = t
        local a = Instance.new("UICorner")
        a.Name = "ButtonCorner"
        a.CornerRadius = UDim.new(0, 4)
        a.Parent = c
        local maintabfr = Instance.new("Frame")
        maintabfr.Name = "MainTab"
        maintabfr.Parent = l
        maintabfr.BackgroundColor3 = _G.BackgroundColor
        maintabfr.BorderSizePixel = 0
        maintabfr.Position = UDim2.new(0.21, 0, -0.024, 47)
        maintabfr.Size = UDim2.new(0, 474, 0, 273)
        maintabfr.Visible = false
        spawn(function()
            while wait() do
            maintabfr.BackgroundColor3 = _G.BackgroundColor
            end
        end)
        local e = Instance.new("UICorner")
        e.Name = "MainTabCorner"
        e.CornerRadius = UDim.new(0, 9)
        e.Parent = maintabfr
        local e = Instance.new("ScrollingFrame")
        e.Name = "ScrollTab"
        e.Parent = maintabfr
        e.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        e.BackgroundTransparency = 1.000
        e.BorderSizePixel = 0
        e.Position = UDim2.new(0, -1, 0, 0)
        e.Size = UDim2.new(0, 475, 0, 273)
        e.CanvasSize = UDim2.new(0, 0, 0, 0)
        e.ScrollBarThickness = 0
        local h = Instance.new("UIListLayout")
        h.Name = "TabList"
        h.Parent = e
        h.SortOrder = Enum.SortOrder.LayoutOrder
        h.Padding = UDim.new(0, 5)
        local i = Instance.new("UIPadding")
        i.Name = "TabPadding"
        i.Parent = e
        i.PaddingLeft = UDim.new(0, 10)
        i.PaddingTop = UDim.new(0, 10)
        
        if not _G.StartFrameAlready then
        local Main31 = Instance.new("ImageLabel")
        local UICorner = Instance.new("UICorner")
        local ImageLabel = Instance.new("ImageLabel")
        local TextLabel = Instance.new("TextLabel")
        local ImageLabel_2 = Instance.new("ImageLabel")
        local JoinDiscord = Instance.new("TextButton")
        local UICorner_2 = Instance.new("UICorner")
        local ImageLabel_3 = Instance.new("ImageLabel")
        local ImageLabel_4 = Instance.new("ImageLabel")
        local Start = Instance.new("TextButton")
        local UICorner_3 = Instance.new("UICorner")
        
        Main31.Name = "Main31"
        Main31.Parent = l
        Main31.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Main31.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Main31.BorderSizePixel = 0
        Main31.Position = UDim2.new(0, 0, 0, 0)
        Main31.Size = UDim2.new(0, 600, 0, 350)
        Main31.Image = "rbxassetid://"..ids[1]
        
        UICorner.CornerRadius = UDim.new(0, 9)
        UICorner.Parent = Main31
        
        ImageLabel.Parent = Main31
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ImageLabel.BorderSizePixel = 0
        ImageLabel.Position = UDim2.new(0.434268594, 0, 0.102857143, 0)
        ImageLabel.Size = UDim2.new(0, 73, 0, 73)
        ImageLabel.Image = "rbxassetid://"..ids[5]
        
        TextLabel.Parent = Main31
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0.300000012, 0, 0.311428577, 0)
        TextLabel.Size = UDim2.new(0, 233, 0, 67)
        TextLabel.Font = Enum.Font.SourceSansBold
        TextLabel.Text = "Welcome, Are You Ready? Let’s Start!"
        TextLabel.TextColor3 = Color3.fromRGB(207, 207, 207)
        TextLabel.TextSize = 24.000
        
        ImageLabel_2.Parent = Main31
        ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel_2.BackgroundTransparency = 1.000
        ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ImageLabel_2.BorderSizePixel = 0
        ImageLabel_2.Position = UDim2.new(0.111666359, 0, 0.537142873, 0)
        ImageLabel_2.Size = UDim2.new(0, 267, 0, 100)
        ImageLabel_2.Image = "rbxassetid://"..ids[2]
        ImageLabel_2.ImageColor3 = Color3.fromRGB(255, 85, 85)
        
        JoinDiscord.Name = "JoinDiscord"
        JoinDiscord.Parent = Main31
        JoinDiscord.BackgroundColor3 = Color3.fromRGB(255, 85, 85)
        JoinDiscord.BorderColor3 = Color3.fromRGB(0, 0, 0)
        JoinDiscord.BorderSizePixel = 0
        JoinDiscord.Position = UDim2.new(0.202526957, 0, 0.614285707, 0)
        JoinDiscord.Size = UDim2.new(0, 163, 0, 47)
        JoinDiscord.Font = Enum.Font.SourceSans
        JoinDiscord.Text = "Join Discord"
        JoinDiscord.TextColor3 = Color3.fromRGB(0, 0, 0)
        JoinDiscord.TextSize = 17.000
        JoinDiscord.MouseEnter:Connect(
            function()
                b:Create(
                    JoinDiscord,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = Color3.fromRGB(150, 85, 85)}
                ):Play()
            end
        )
        JoinDiscord.MouseLeave:Connect(
            function()
                b:Create(
                    JoinDiscord,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = Color3.fromRGB(255, 85, 85)}
                ):Play()
            end
        )
        JoinDiscord.MouseButton1Click:Connect(
            function()
                setclipboard("discord.gg/zenithhub")
                JoinDiscord.Text = "Copied!"
                wait(2)
                JoinDiscord.Text = "Join Discord"
            end
        )
        
        UICorner_2.CornerRadius = UDim.new(0, 4)
        UICorner_2.Parent = JoinDiscord
        
        ImageLabel_3.Parent = Main31
        ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel_3.BackgroundTransparency = 1.000
        ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ImageLabel_3.BorderSizePixel = 0
        ImageLabel_3.Position = UDim2.new(0.406666368, 0, 0.537142873, 0)
        ImageLabel_3.Size = UDim2.new(0, 267, 0, 100)
        ImageLabel_3.Image = "rbxassetid://"..ids[2]
        ImageLabel_3.ImageColor3 = Color3.fromRGB(255, 85, 85)
        
        ImageLabel_4.Parent = Main31
        ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel_4.BackgroundTransparency = 1.000
        ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ImageLabel_4.BorderSizePixel = 0
        ImageLabel_4.Position = UDim2.new(0.109999694, 0, 0.262857139, 0)
        ImageLabel_4.Size = UDim2.new(0, 481, 0, 100)
        ImageLabel_4.Image = "rbxassetid://"..ids[2]
        ImageLabel_4.ImageTransparency = 0.790

        Start.Name = "Start"
        Start.Parent = Main31
        Start.BackgroundColor3 = Color3.fromRGB(255, 85, 85)
        Start.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Start.BorderSizePixel = 0
        Start.Position = UDim2.new(0.494193614, 0, 0.614285707, 0)
        Start.Size = UDim2.new(0, 163, 0, 47)
        Start.Font = Enum.Font.SourceSans
        Start.Text = "Start"
        Start.TextColor3 = Color3.fromRGB(0, 0, 0)
        Start.TextSize = 16.000
        UICorner_3.CornerRadius = UDim.new(0, 4)
        UICorner_3.Parent = Start
        Start.MouseEnter:Connect(
            function()
                b:Create(
                    Start,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = Color3.fromRGB(150, 85, 85)}
                ):Play()
            end
        )
        Start.MouseLeave:Connect(
            function()
                b:Create(
                    Start,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = Color3.fromRGB(255, 85, 85)}
                ):Play()
            end
        )
        function GameNotify(Message)
            game.ReplicatedStorage.events.anno_localthoughtbig:Fire(Message, nil, nil, nil, "Exotic")
        end

        Start.Text = "Start (10)"
        wait(1)
        Start.Text = "Start (9)"
        wait(1)
        Start.Text = "Start (8)"
        wait(1)
        Start.Text = "Start (7)"
        wait(1)
        Start.Text = "Start (6)"
        wait(1)
        Start.Text = "Start (5)"
        wait(1)
        Start.Text = "Start (4)"
        wait(1)
        Start.Text = "Start (3)"
        wait(1)
        Start.Text = "Start (2)"
        wait(1)
        Start.Text = "Start (1)"
        wait(1)
        Start.Text = "Start"

        Start.MouseButton1Click:Connect(
            function()
                _G.TransDelay = 0.02
                Main31.ImageTransparency = 0.1   
                ImageLabel.ImageTransparency = 0.1     
                ImageLabel_2.ImageTransparency = 0.1 
                ImageLabel_3.ImageTransparency = 0.1 
                ImageLabel_4.ImageTransparency = 0.1 
                TextLabel.TextTransparency = 0.1 
                Main31.BackgroundTransparency = 0.1   
                Start.BackgroundTransparency = 0.1  
                Start.TextTransparency = 0.1 
                JoinDiscord.BackgroundTransparency = 0.1
                JoinDiscord.TextTransparency = 0.1
                task.wait(_G.TransDelay)
                Main31.ImageTransparency = 0.2 
                ImageLabel.ImageTransparency = 0.2       
                ImageLabel_2.ImageTransparency = 0.2  
                ImageLabel_3.ImageTransparency = 0.2  
                ImageLabel_4.ImageTransparency = 0.2 
                TextLabel.TextTransparency = 0.2  
                Main31.BackgroundTransparency = 0.2   
                Start.BackgroundTransparency = 0.2  
                Start.TextTransparency = 0.2  
                JoinDiscord.BackgroundTransparency = 0.2
                JoinDiscord.TextTransparency = 0.2
                task.wait(_G.TransDelay)
                Main31.ImageTransparency = 0.3  
                ImageLabel.ImageTransparency = 0.3       
                ImageLabel_2.ImageTransparency = 0.3 
                ImageLabel_3.ImageTransparency = 0.3  
                ImageLabel_4.ImageTransparency = 0.3 
                TextLabel.TextTransparency = 0.3  
                Main31.BackgroundTransparency = 0.3   
                Start.BackgroundTransparency = 0.3  
                Start.TextTransparency = 0.3  
                JoinDiscord.BackgroundTransparency = 0.3
                JoinDiscord.TextTransparency = 0.3
                task.wait(_G.TransDelay)
                Main31.ImageTransparency = 0.4  
                ImageLabel.ImageTransparency = 0.4       
                ImageLabel_2.ImageTransparency = 0.4  
                ImageLabel_3.ImageTransparency = 0.4  
                ImageLabel_4.ImageTransparency = 0.4 
                TextLabel.TextTransparency = 0.4  
                Main31.BackgroundTransparency = 0.4   
                Start.BackgroundTransparency = 0.4  
                Start.TextTransparency = 0.4  
                JoinDiscord.BackgroundTransparency = 0.4
                JoinDiscord.TextTransparency = 0.4
                task.wait(_G.TransDelay)
                Main31.ImageTransparency = 0.5  
                ImageLabel.ImageTransparency = 0.5       
                ImageLabel_2.ImageTransparency = 0.5  
                ImageLabel_3.ImageTransparency = 0.5  
                ImageLabel_4.ImageTransparency = 0.5 
                TextLabel.TextTransparency = 0.5  
                Main31.BackgroundTransparency = 0.5   
                Start.BackgroundTransparency = 0.5  
                Start.TextTransparency = 0.5  
                JoinDiscord.BackgroundTransparency = 0.5 
                JoinDiscord.TextTransparency = 0.5
                task.wait(_G.TransDelay)
                Main31.ImageTransparency = 0.6  
                ImageLabel.ImageTransparency = 0.6       
                ImageLabel_2.ImageTransparency = 0.6  
                ImageLabel_3.ImageTransparency = 0.6  
                ImageLabel_4.ImageTransparency = 0.6
                TextLabel.TextTransparency = 0.6  
                Main31.BackgroundTransparency = 0.6   
                Start.BackgroundTransparency = 0.6 
                Start.TextTransparency = 0.6  
                JoinDiscord.BackgroundTransparency = 0.6 
                JoinDiscord.TextTransparency = 0.6
                task.wait(_G.TransDelay)
                Main31.ImageTransparency = 0.7  
                ImageLabel.ImageTransparency = 0.7       
                ImageLabel_2.ImageTransparency = 0.7  
                ImageLabel_3.ImageTransparency = 0.7  
                ImageLabel_4.ImageTransparency = 0.7 
                TextLabel.TextTransparency = 0.7  
                Main31.BackgroundTransparency = 0.7   
                Start.BackgroundTransparency = 0.7  
                Start.TextTransparency = 0.7 
                JoinDiscord.BackgroundTransparency = 0.7
                JoinDiscord.TextTransparency = 0.7
                task.wait(_G.TransDelay)
                Main31.ImageTransparency = 0.8  
                ImageLabel.ImageTransparency = 0.8       
                ImageLabel_2.ImageTransparency = 0.8 
                ImageLabel_3.ImageTransparency = 0.8  
                ImageLabel_4.ImageTransparency = 0.8 
                TextLabel.TextTransparency = 0.8  
                Main31.BackgroundTransparency = 0.8   
                Start.BackgroundTransparency = 0.8  
                Start.TextTransparency = 0.8 
                JoinDiscord.BackgroundTransparency = 0.8
                JoinDiscord.TextTransparency = 0.8
                task.wait(_G.TransDelay)
                Main31.ImageTransparency = 0.9  
                ImageLabel.ImageTransparency = 0.9      
                ImageLabel_2.ImageTransparency = 0.9  
                ImageLabel_3.ImageTransparency = 0.9  
                ImageLabel_4.ImageTransparency = 0.9 
                TextLabel.TextTransparency = 0.9  
                Main31.BackgroundTransparency = 0.9   
                Start.BackgroundTransparency = 0.9 
                Start.TextTransparency = 0.9
                JoinDiscord.BackgroundTransparency = 0.9
                JoinDiscord.TextTransparency = 0.9
                task.wait(_G.TransDelay)
                Main31.ImageTransparency = 1 
                ImageLabel.ImageTransparency = 1       
                ImageLabel_2.ImageTransparency = 1 
                ImageLabel_3.ImageTransparency = 1  
                ImageLabel_4.ImageTransparency = 1
                TextLabel.TextTransparency = 1  
                Main31.BackgroundTransparency = 1  
                Start.BackgroundTransparency = 1 
                Start.TextTransparency = 1 
                JoinDiscord.BackgroundTransparency = 1
                JoinDiscord.TextTransparency = 1
                Main31:Destroy()
                pcall(function()
                    GameNotify("Zenith [ FISCH ] loaded successfully!")
                    local sound = Instance.new("Sound")
                    sound.SoundId = "rbxassetid://"..ids[6]
                    sound.Parent = game.Workspace
                    sound:Play()
                end)  
            end
        )
        _G.StartFrameAlready = true
        end

        c.MouseButton1Click:Connect(
            function()
                g = maintabfr.Name
                for v, w in next, l:GetChildren() do
                    if w.Name == "MainTab" then
                        w.Visible = false
                    end
                end
                for v, x in next, d:GetChildren() do
                    if x:IsA("TextButton") then
                        local y = x:FindFirstChild("LeftStripe")
                        if y then
                            y.Visible = false
                            y.Size = UDim2.new(0, 4, 0, 0)
                        end
                    end
                end
                maintabfr.Visible = true
                t.Visible = true
                local z =
                    s:Create(
                    t,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 4, 0, 14)}
                )
                z:Play()
                for v, x in next, d:GetChildren() do
                    if x:IsA("TextButton") then
                        b:Create(
                            x,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1}
                        ):Play()
                    end
                end
                b:Create(
                    c,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0}
                ):Play()
            end
        )
        if f == false then
            b:Create(
                c,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 0}
            ):Play()
            for b, b in next, l:GetChildren() do
                if b.Name == "MainTab" then
                    b.Visible = false
                    t.Visible = false
                end
                maintabfr.Visible = true
                t.Visible = true
            end
            f = true
        end
        game:GetService("RunService").Stepped:Connect(
            function()
                pcall(
                    function()
                        d.CanvasSize = UDim2.new(0, 0, 0, j.AbsoluteContentSize.Y + 10)
                        e.CanvasSize = UDim2.new(0, 0, 0, h.AbsoluteContentSize.Y + 30)
                    end
                )
            end
        )
        local a = {}
        function a:AddButton(a, c)
            local d = {}
            local f = Instance.new("TextButton")
            f.Name = "Button"
            f.Parent = e
            f.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            f.BackgroundTransparency = 0
            f.BorderSizePixel = 0
            f.Size = UDim2.new(0, 455, 0, 30)
            f.AutoButtonColor = false
            f.Font = Enum.Font.Gotham
            f.Text = a
            f.TextColor3 = Color3.fromRGB(225, 225, 225)
            f.TextSize = 11.000
            f.TextWrapped = true
            spawn(function()
                while wait() do
                    f.BackgroundColor3 = _G.ButtonColor
                end
            end)
            function d:SetButton(a)
                f.Text = a
            end
            local a = Instance.new("UICorner")
            a.Name = "ButtonCorner"
            a.CornerRadius = UDim.new(0, 4)
            a.Parent = f
            f.MouseEnter:Connect(
                function()
                    b:Create(
                        f,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = _G.Clickcolor}
                    ):Play()
                end
            )
            function SetSeperateColor3(color)
                _G.Clickcolor = color
            end
            f.MouseLeave:Connect(
                function()
                    b:Create(
                        f,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(225, 225, 225)}
                    ):Play()
                end
            )
            f.MouseButton1Click:Connect(
                function()
                    c()
                    f.TextSize = 7
                    b:Create(f, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {TextSize = 11}):Play(

                    )
                end
            )
            return d
        end
        
        function a:AddToggle(a, c, d)
            local f = {}
            local g = Instance.new("Frame")
            local h = Instance.new("TextButton")
            h.Name = "Toggle"
            h.Parent = e
            h.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            h.BackgroundTransparency = 0
            h.BorderSizePixel = 0
            h.AutoButtonColor = false
            h.Size = UDim2.new(0, 455, 0, 30)
            h.Font = Enum.Font.SourceSans
            h.Text = ""
            h.TextColor3 = Color3.fromRGB(0, 0, 0)
            h.TextSize = 14.000
            spawn(function()
                while wait() do
                    h.BackgroundColor3 = _G.ButtonColor
                end
            end)
            local e = Instance.new("UICorner")
            e.Name = "ToggleCorner"
            e.CornerRadius = UDim.new(0, 4)
            e.Parent = h
            local e = Instance.new("TextLabel")
            e.Name = "ToggleLabel"
            e.Parent = h
            e.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            e.BackgroundTransparency = 1.000
            e.Position = UDim2.new(0, 13, 0, 0)
            e.Size = UDim2.new(0, 410, 0, 30)
            e.Font = Enum.Font.Gotham
            e.Text = a
            e.TextColor3 = Color3.fromRGB(225, 225, 225)
            e.TextSize = 11.000
            e.TextXAlignment = Enum.TextXAlignment.Left
            function f:SetToggle(a)
                e.Text = a
            end
            g.Name = "ToggleImage"
            g.Parent = h
            g.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            g.Position = UDim2.new(0, 425, 0, 5)
            g.BorderSizePixel = 0
            g.Size = UDim2.new(0, 20, 0, 20)
            local a = Instance.new("UICorner")
            a.Name = "ToggleImageCorner"
            a.CornerRadius = UDim.new(0, 5)
            a.Parent = g
            local a = Instance.new("UIStroke")
            a.Name = "UIStroke"
            a.Parent = g
            a.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            a.Color = Color3.fromRGB(40, 40, 40)
            a.LineJoinMode = Enum.LineJoinMode.Round
            a.Thickness = 1
            a.Transparency = 0
            a.Enabled = true
            a.Archivable = true
            local a = Instance.new("ImageLabel")
            a.Name = "ToggleImage2"
            a.Parent = g
            a.Image = "rbxassetid://"..ids[7]
            a.AnchorPoint = Vector2.new(0.5, 0.5)
            a.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
            a.Position = UDim2.new(0, 10, 0, 10)
            a.ImageColor3 = _G.Clickcolor
            a.Visible = false
            a.BackgroundTransparency = 1.000
            local g = Instance.new("UICorner")
            g.Name = "ToggleImageCorner"
            g.CornerRadius = UDim.new(0, 5)
            g.Parent = a
            h.MouseEnter:Connect(
                function()
                    b:Create(
                        e,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = _G.Clickcolor}
                    ):Play()
                end
            )
            spawn(function()
                while wait() do
                    a.ImageColor3 = _G.SeparateColor
                    _G.Clickcolor = _G.SeparateColor
                end
            end)
            function SetTry(color)
                a.ImageColor3 = color
                _G.Clickcolor = color
            end
            h.MouseLeave:Connect(
                function()
                    b:Create(
                        e,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(225, 225, 225)}
                    ):Play()
                end
            )
            if c == nil then
                c = false
            end
            local b = c or false
            h.MouseButton1Click:Connect(
                function()
                    if b == false then
                        b = true
                        a.Visible = true
                        a:TweenSize(UDim2.new(0, 26, 0, 26), "In", "Quad", 0.1, true)
                    else
                        b = false
                        a:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.1, true)
                        wait(0.1)
                        a.Visible = false
                    end
                    d(b)
                end
            )
            if c == true then
                a.Visible = true
                a:TweenSize(UDim2.new(0, 26, 0, 26), "In", "Quad", 0.1, true)
                b = true
                d(b)
            end
            return f
        end
        function a:AddTextbox(a, b, c, c)
            local d = {}
            local f = Instance.new("Frame")
            local g = Instance.new("UICorner")
            local h = Instance.new("TextLabel")
            local i = Instance.new("TextBox")
            local j = Instance.new("UICorner")
            f.Name = "Textboxx"
            f.Parent = e
            f.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            f.Size = UDim2.new(0, 455, 0, 30)
            spawn(function()
                while wait() do
                    f.BackgroundColor3 = _G.ButtonColor
                end
            end)
            g.CornerRadius = UDim.new(0, 4)
            g.Name = "TextboxxCorner"
            g.Parent = f
            h.Name = "TextboxTitle"
            h.Parent = f
            h.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            h.BackgroundTransparency = 1.000
            h.Position = UDim2.new(0, 15, 0, 0)
            h.Size = UDim2.new(0, 300, 0, 30)
            h.Font = Enum.Font.Gotham
            h.Text = a
            h.TextColor3 = Color3.fromRGB(225, 225, 225)
            h.TextSize = 11.000
            h.TextXAlignment = Enum.TextXAlignment.Left
            function d:SetTextbox(a)
                h.Text = a
            end
            i.Name = "Textbox"
            i.Parent = f
            i.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            i.Position = UDim2.new(0, 310, 0, 5)
            i.Size = UDim2.new(0, 140, 0, 20)
            i.Font = Enum.Font.GothamSemibold
            i.Text = b
            i.TextColor3 = Color3.fromRGB(150, 150, 150)
            i.TextSize = 11.000
            i.TextTruncate = Enum.TextTruncate.AtEnd
            i.ClearTextOnFocus = false
            spawn(function()
                while wait() do
                    i.BackgroundColor3 = _G.ButtonColor
                end
            end)
            local A = b
            local a = Instance.new("UIStroke")
            a.Name = "UIStroke"
            a.Parent = i
            a.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            a.Color = Color3.fromRGB(50, 50, 50)
            a.LineJoinMode = Enum.LineJoinMode.Round
            a.Thickness = 1
            a.Transparency = 0
            a.Enabled = true
            a.Archivable = true
            i.FocusLost:Connect(
                function()
                    if #i.Text > 0 then
                        c(i.Text)
                    else
                        i.Text = A
                        i.TextColor3 = Color3.fromRGB(150, 150, 150)
                    end
                end
            )
            i.Focused:Connect(
                function()
                    if i.Text == A then
                        i.Text = ""
                        i.TextColor3 = Color3.fromRGB(225, 225, 225)
                    end
                end
            )
            j.Name = "TextboxCorner"
            j.CornerRadius = UDim.new(0, 5)
            j.Parent = i
            return d
        end
        function a:AddMultiDropdown(a, c, d, f)
            local g = Instance.new("Frame")
            local h = Instance.new("UICorner")
            local i = Instance.new("TextButton")
            local j = Instance.new("TextLabel")
            local k = Instance.new("ScrollingFrame")
            local l = Instance.new("UIListLayout")
            local m = Instance.new("UIPadding")
            local n = Instance.new("ImageLabel")
            local textBox = Instance.new("TextBox")
            local textBoxStroke = Instance.new("UIStroke")
            local textBoxCorner = Instance.new("UICorner")
        
            local selectedItems = {}
            local isOpen = false
        
            local dropdownFunctions = {}
        
            g.Name = "Dropdown"
            g.Parent = e
            g.Active = true
            g.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            g.ClipsDescendants = true
            g.Size = UDim2.new(0, 455, 0, 30)
            spawn(function()
                while wait() do
                    g.BackgroundColor3 = _G.ButtonColor
                end
            end)
        
            h.CornerRadius = UDim.new(0, 4)
            h.Parent = g
        
            i.Name = "DropButton"
            i.Parent = g
            i.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            i.BackgroundTransparency = 1.000
            i.Size = UDim2.new(0, 455, 0, 30)
            i.Font = Enum.Font.SourceSans
            i.Text = ""
            i.TextColor3 = Color3.fromRGB(0, 0, 0)
            i.TextSize = 14.000
        
            j.Name = "Droptitle"
            j.Parent = g
            j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            j.BackgroundTransparency = 1.000
            j.Position = UDim2.new(0.028, 0, 0, 0)
            j.Size = UDim2.new(0, 300, 0, 30)
            j.Font = Enum.Font.Gotham
            j.Text = a .. " : " .. c
            j.TextColor3 = Color3.fromRGB(225, 225, 225)
            j.TextSize = 11.000
            j.TextXAlignment = Enum.TextXAlignment.Left
            j.TextTruncate = Enum.TextTruncate.AtEnd
        
            n.Name = "DropImage"
            n.Parent = g
            n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            n.BackgroundTransparency = 1.000
            n.Position = UDim2.new(0, 425, 0, 5)
            n.Rotation = 0
            n.Size = UDim2.new(0, 20, 0, 20)
            n.Image = "rbxassetid://"..ids[8]
        
            textBox.Name = "SearchBox"
            textBox.Parent = g
            textBox.Size = UDim2.new(0.2, 0, 0, 20)
            textBox.Position = UDim2.new(0, 330, 0.1, -13)
            textBox.PlaceholderText = "Search..."
            textBox.Font = Enum.Font.Gotham
            textBox.TextSize = 11
            textBox.TextColor3 = Color3.fromRGB(225, 225, 225)
            textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            textBox.Text = ""
            textBox.Visible = false
            spawn(function()
                while wait() do
                    textBox.BackgroundColor3 = _G.ButtonColor
                end
            end)
        
            textBoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            textBoxStroke.Color = Color3.fromRGB(50, 50, 50)
            textBoxStroke.Thickness = 1.2
            textBoxStroke.Parent = textBox
        
            textBoxCorner.CornerRadius = UDim.new(0, 4)
            textBoxCorner.Parent = textBox
        
            k.Name = "DropScroll"
            k.Parent = g
            k.Active = true
            k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            k.BackgroundTransparency = 1.000
            k.BorderSizePixel = 0
            k.Position = UDim2.new(0, 0, 0, 30)
            k.Size = UDim2.new(0, 455, 0, 135)
            k.CanvasSize = UDim2.new(0, 0, 0, 2)
            k.ScrollBarThickness = 4
            k.Visible = false
        
            l.Name = "DropdownList"
            l.Parent = k
            l.SortOrder = Enum.SortOrder.LayoutOrder
            l.Padding = UDim.new(0, 5)
        
            m.Name = "DropdownPadding"
            m.Parent = k
            m.PaddingTop = UDim.new(0, 5)
        
            function dropdownFunctions:UpdateSelectedText()
                j.Text = a .. " : " .. table.concat(selectedItems, ", ")
            end
        
            function dropdownFunctions:Add(item)
                local itemButton = Instance.new("TextButton")
                itemButton.Name = "DropButton2"
                itemButton.Parent = k
                itemButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                itemButton.BackgroundTransparency = 1.000
                itemButton.Size = UDim2.new(0, 455, 0, 30)
                itemButton.Font = Enum.Font.Gotham
                itemButton.TextColor3 = Color3.fromRGB(225, 225, 225)
                itemButton.TextSize = 11.000
                itemButton.Text = tostring(item)
                itemButton.MouseButton1Click:Connect(function()
                    local itemIndex = table.find(selectedItems, item)
                    
                    if itemIndex then
                        table.remove(selectedItems, itemIndex)
                        b:Create(itemButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(225, 225, 225)}):Play()
                    else
                        table.insert(selectedItems, item)
                        b:Create(itemButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = _G.Clickcolor}):Play()
                    end

                    dropdownFunctions:UpdateSelectedText()
                    f(selectedItems)
                end)      
                function SetSeperateColor2(color)
                    _G.Clickcolor = color
                end          
                k.CanvasSize = UDim2.new(0, 0, 0, l.AbsoluteContentSize.Y + 10)
            end
        
            i.MouseButton1Click:Connect(function()
                isOpen = not isOpen
                k.Visible = isOpen
                textBox.Visible = isOpen
                if isOpen then
                    textBox.Visible = true
                    textBox.Position = UDim2.new(0, 330, 0.1, -12)
                    b:Create(
                        g,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 455, 0, 180)}
                    ):Play()
                    b:Create(
                        n,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = -180}
                    ):Play()
                else
                    textBox.Text = ""
                    textBox.Visible = false
                    textBox.Position = UDim2.new(0, 330, 0.1, 2)
                    b:Create(
                        g,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 455, 0, 30)}
                    ):Play()
                    b:Create(n, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play(

                    )
                end
            end)
        
            textBox:GetPropertyChangedSignal("Text"):Connect(function()
                local searchText = string.lower(textBox.Text)
                for _, child in ipairs(k:GetChildren()) do
                    if child:IsA("TextButton") then
                        child.Visible = string.find(string.lower(child.Text), searchText) ~= nil
                    end
                end
                k.CanvasSize = UDim2.new(0, 0, 0, l.AbsoluteContentSize.Y + 10)
            end)
        
            for _, value in ipairs(d) do
                dropdownFunctions:Add(value)
            end
        
            return dropdownFunctions
        end
        function a:AddColorPickerDropdown(title, defaultColor, callback)
            local g = Instance.new("Frame")
            local h = Instance.new("UICorner")
            local i = Instance.new("TextButton")
            local j = Instance.new("TextLabel")
            local k = Instance.new("ImageLabel")
            local n = Instance.new("ImageLabel")
            local Spectrum = Instance.new("ImageLabel")
            local Pointer = Instance.new("ImageLabel")
            local BrightnessSlider = Instance.new("Frame")
            local BrightnessKnob = Instance.new("Frame")
            local Preview = Instance.new("Frame")
            local RedBox = Instance.new("TextBox")
            local GreenBox = Instance.new("TextBox")
            local BlueBox = Instance.new("TextBox")
            local E = {}
        
            g.Name = "Dropdown"
            g.Parent = e
            g.Active = true
            g.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            g.ClipsDescendants = true
            g.Size = UDim2.new(0, 455, 0, 30)
            spawn(function()
                while wait() do
                    g.BackgroundColor3 = _G.ButtonColor
                end
            end)
            h.CornerRadius = UDim.new(0, 4)
            h.Parent = g
            i.Name = "DropButton"
            i.Parent = g
            i.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            i.BackgroundTransparency = 1.000
            i.Size = UDim2.new(0, 455, 0, 30)
            i.Font = Enum.Font.SourceSans
            i.Text = ""
            i.TextColor3 = Color3.fromRGB(0, 0, 0)
            i.TextSize = 14.000
            j.Name = "Droptitle"
            j.Parent = g
            j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            j.BackgroundTransparency = 1.000
            j.Position = UDim2.new(0.028, 0, 0, 0)
            j.Size = UDim2.new(0, 410, 0, 30)
            j.Font = Enum.Font.Gotham
            j.Text = title .. " : " .. tostring(defaultColor)
            j.TextColor3 = Color3.fromRGB(225, 225, 225)
            j.TextSize = 11.000
            j.TextXAlignment = Enum.TextXAlignment.Left
            n.Name = "DropImage"
            n.Parent = g
            n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            n.BackgroundTransparency = 1.000
            n.Position = UDim2.new(0, 425, 0, 5)
            n.Rotation = 0
            n.Size = UDim2.new(0, 20, 0, 20)
            n.Image = "rbxassetid://"..ids[8]

            local function addUIGradient(element)
                local gradient = Instance.new("UIGradient")
                gradient.Parent = element
                gradient.Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
                }
                gradient.Rotation = 90 
            end
        
            Spectrum.Name = "Spectrum"
            Spectrum.Parent = g
            Spectrum.Size = UDim2.new(0, 200, 0, 200)
            Spectrum.Position = UDim2.new(0, 10, 0, 40)
            Spectrum.Image = "rbxassetid://"..ids[9]
            Spectrum.BackgroundColor3 = Color3.new(1, 1, 1)
            Spectrum.ClipsDescendants = true
            Spectrum.Visible = false 
            local function addUICorner(element)
                local corner = Instance.new("UICorner")
                corner.Parent = element
            end
            addUICorner(Spectrum)
        
            Pointer.Size = UDim2.new(0, 10, 0, 10)
            Pointer.AnchorPoint = Vector2.new(0.5, 0.5)
            Pointer.BackgroundTransparency = 1
            Pointer.Image = "rbxassetid://"..ids[10]
            Pointer.Parent = Spectrum
        
            BrightnessSlider.Size = UDim2.new(0, 20, 0, 200)
            BrightnessSlider.Position = UDim2.new(0, 220, 0, 40)
            BrightnessSlider.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
            BrightnessSlider.Visible = true
            BrightnessSlider.Parent = g

            addUICorner(BrightnessSlider)
            addUIGradient(BrightnessSlider)
        
            BrightnessKnob.Size = UDim2.new(1, 0, 0, 10)
            BrightnessKnob.Position = UDim2.new(0, 0, 0.5, -5)
            BrightnessKnob.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
            addUICorner(BrightnessKnob)
            BrightnessKnob.Parent = BrightnessSlider
        
            Preview.Size = UDim2.new(0, 50, 0, 50)
            Preview.Position = UDim2.new(0, 250, 0, 40)
            Preview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            addUICorner(Preview)
            Preview.Parent = g
        
            RedBox.Size = UDim2.new(0, 50, 0, 30)
            RedBox.Position = UDim2.new(0, 250, 0, 110)
            RedBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
            RedBox.Text = "255"
            RedBox.TextColor3 = Color3.new(1, 1, 1)
            addUICorner(RedBox)
            RedBox.Parent = g
        
            GreenBox.Size = UDim2.new(0, 50, 0, 30)
            GreenBox.Position = UDim2.new(0, 250, 0, 155)
            GreenBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
            GreenBox.Text = "255"
            GreenBox.TextColor3 = Color3.new(1, 1, 1)
            addUICorner(GreenBox)
            GreenBox.Parent = g
        
            BlueBox.Size = UDim2.new(0, 50, 0, 30)
            BlueBox.Position = UDim2.new(0, 250, 0, 200)
            BlueBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
            BlueBox.Text = "255"
            BlueBox.TextColor3 = Color3.new(1, 1, 1)
            addUICorner(BlueBox)
            BlueBox.Parent = g
        
            local selectedColor = Color3.new(1, 1, 1)
            local brightness = 1
            local isDraggingSpectrum = false
            local isDraggingBrightness = false
        
            local function updateRGBBoxes(color)
                local r, g, b = math.floor(color.R * 255), math.floor(color.G * 255), math.floor(color.B * 255)
                RedBox.Text = tostring(r)
                GreenBox.Text = tostring(g)
                BlueBox.Text = tostring(b)
            end
        
            local function updatePointerPositionFromColor()
                local h, s, _ = selectedColor:ToHSV()
                Pointer.Position = UDim2.new(h, 0, 1 - s, 0)
            end
        
            local function updatePreviewColor()
                local h, s, _ = selectedColor:ToHSV()
                local color = Color3.fromHSV(h, s, brightness)
                Preview.BackgroundColor3 = color
                callback(color)
                j.Text = title .. " : " ..tostring(color)
                updateRGBBoxes(color)
            end
        
            local function updatePointer(input)
                local x = math.clamp(input.Position.X - Spectrum.AbsolutePosition.X, 0, Spectrum.AbsoluteSize.X)
                local y = math.clamp(input.Position.Y - Spectrum.AbsolutePosition.Y, 0, Spectrum.AbsoluteSize.Y)
        
                Pointer.Position = UDim2.new(0, x, 0, y)
        
                local hue = x / Spectrum.AbsoluteSize.X
                local saturation = 1 - (y / Spectrum.AbsoluteSize.Y)
        
                selectedColor = Color3.fromHSV(hue, saturation, brightness)
                updatePreviewColor()
            end
        
            Spectrum.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    isDraggingSpectrum = true
                    updatePointer(input)
                end
            end)
        
            Spectrum.InputChanged:Connect(function(input)
                if isDraggingSpectrum and input.UserInputType == Enum.UserInputType.MouseMovement then
                    updatePointer(input)
                end
            end)
        
            Spectrum.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    isDraggingSpectrum = false
                end
            end)
        
            local function updateBrightness(input)
                local y = math.clamp(input.Position.Y - BrightnessSlider.AbsolutePosition.Y, 0, BrightnessSlider.AbsoluteSize.Y)
                BrightnessKnob.Position = UDim2.new(0, 0, 0, y - 5)
        
                brightness = 1 - (y / BrightnessSlider.AbsoluteSize.Y)
                updatePreviewColor()
            end
        
            BrightnessSlider.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    isDraggingBrightness = true
                    updateBrightness(input)
                end
            end)
        
            BrightnessSlider.InputChanged:Connect(function(input)
                if isDraggingBrightness and input.UserInputType == Enum.UserInputType.MouseMovement then
                    updateBrightness(input)
                end
            end)
        
            BrightnessSlider.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    isDraggingBrightness = false
                end
            end)
        
            local function updateFromTextBoxes()
                local r = tonumber(RedBox.Text) or 0
                local g = tonumber(GreenBox.Text) or 0
                local b = tonumber(BlueBox.Text) or 0
                r = math.clamp(r, 0, 255)
                g = math.clamp(g, 0, 255)
                b = math.clamp(b, 0, 255)
                selectedColor = Color3.new(r / 255, g / 255, b / 255)
                updatePointerPositionFromColor()
                updatePreviewColor()
            end
        
            RedBox.FocusLost:Connect(function()
                updateFromTextBoxes()
                updatePreviewColor()
            end)
            GreenBox.FocusLost:Connect(function()
                updateFromTextBoxes()
                updatePreviewColor()
            end)
            BlueBox.FocusLost:Connect(function()
                updateFromTextBoxes()
                updatePreviewColor()
            end)                                
        
            local e = false
            i.MouseButton1Click:Connect(
                function()
                    e = not e
                    if e then
                        Spectrum.Visible = true
                    BrightnessSlider.Visible = true
                        b:Create(
                            g,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 250)}
                        ):Play()
                        b:Create(
                            n,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = -180}
                        ):Play()
                    else
                        Spectrum.Visible = false
                    BrightnessSlider.Visible = false
                        b:Create(
                            g,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 30)}
                        ):Play()
                        b:Create(n, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play(

                        )
                    end
                end
            )
        
            return E
        end                                                 
        function a:AddDropdown(a, c, d, f)
            local g = Instance.new("Frame")
            local h = Instance.new("UICorner")
            local i = Instance.new("TextButton")
            local j = Instance.new("TextLabel")
            local k = Instance.new("ScrollingFrame")
            local l = Instance.new("UIListLayout")
            local m = Instance.new("UIPadding")
            local n = Instance.new("ImageLabel")
            local B = Instance.new("TextBox")
            local C = Instance.new("UIStroke")
            local D = Instance.new("UICorner")
            local E = {}
            g.Name = "Dropdown"
            g.Parent = e
            g.Active = true
            g.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            g.ClipsDescendants = true
            g.Size = UDim2.new(0, 455, 0, 30)
            spawn(function()
                while wait() do
                    g.BackgroundColor3 = _G.ButtonColor
                end
            end)
            h.CornerRadius = UDim.new(0, 4)
            h.Parent = g
            i.Name = "DropButton"
            i.Parent = g
            i.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            i.BackgroundTransparency = 1.000
            i.Size = UDim2.new(0, 455, 0, 30)
            i.Font = Enum.Font.SourceSans
            i.Text = ""
            i.TextColor3 = Color3.fromRGB(0, 0, 0)
            i.TextSize = 14.000
            j.Name = "Droptitle"
            j.Parent = g
            j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            j.BackgroundTransparency = 1.000
            j.Position = UDim2.new(0.028, 0, 0, 0)
            j.Size = UDim2.new(0, 410, 0, 30)
            j.Font = Enum.Font.Gotham
            j.Text = a .. " : " .. c
            j.TextColor3 = Color3.fromRGB(225, 225, 225)
            j.TextSize = 11.000
            j.TextXAlignment = Enum.TextXAlignment.Left
            n.Name = "DropImage"
            n.Parent = g
            n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            n.BackgroundTransparency = 1.000
            n.Position = UDim2.new(0, 425, 0, 5)
            n.Rotation = 0
            n.Size = UDim2.new(0, 20, 0, 20)
            n.Image = "rbxassetid://"..ids[8]
            B.Name = "SearchBox"
            B.Parent = g
            B.Size = UDim2.new(0.2, 0, 0, 20)
            B.Position = UDim2.new(0, 330, 0.1, 2)
            B.PlaceholderText = "Search..."
            B.Font = Enum.Font.Gotham
            B.TextSize = 11
            B.TextColor3 = Color3.fromRGB(225, 225, 225)
            B.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            B.Text = ""
            B.AnchorPoint = Vector2.new(0, 0)
            B.AutomaticSize = Enum.AutomaticSize.None
            B.Visible = false
            spawn(function()
                while wait() do
                    B.BackgroundColor3 = _G.ButtonColor
                end
            end)
            C.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            C.Color = Color3.fromRGB(50, 50, 50)
            C.Thickness = 1.2
            C.Parent = B
            D.CornerRadius = UDim.new(0, 4)
            D.Parent = B
            k.Name = "DropScroll"
            k.Parent = g
            k.Active = true
            k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            k.BackgroundTransparency = 1.000
            k.BorderSizePixel = 0
            k.Position = UDim2.new(0, 0, 0, 30)
            k.Size = UDim2.new(0, 455, 0, 135)
            k.CanvasSize = UDim2.new(0, 0, 0, 2)
            k.ScrollBarThickness = 4
            k.ScrollingDirection = Enum.ScrollingDirection.Y
            k.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
            k.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
            l.Name = "DropdownList"
            l.Parent = k
            l.SortOrder = Enum.SortOrder.LayoutOrder
            l.Padding = UDim.new(0, 5)
            m.Name = "DropdownPadding"
            m.Parent = k
            m.PaddingTop = UDim.new(0, 5)
            function E:Clear()
                for v, w in ipairs(k:GetChildren()) do
                    if w:IsA("TextButton") then
                        w:Destroy()
                    end
                end
            end
            function E:SetDropdown(F)
                j.Text = a .. " : " .. tostring(F)
            end
            local e = false
            function E:Add(G)
                local H = Instance.new("TextButton")
                H.Name = "DropButton2"
                H.Parent = k
                H.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                H.BackgroundTransparency = 1.000
                H.Size = UDim2.new(0, 455, 0, 30)
                H.Font = Enum.Font.Gotham
                H.TextColor3 = Color3.fromRGB(225, 225, 225)
                H.TextSize = 11.000
                H.Text = tostring(G)
                H.MouseEnter:Connect(
                    function()
                        b:Create(
                            H,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = _G.Clickcolor}
                        ):Play()
                    end
                )
                H.MouseLeave:Connect(
                    function()
                        b:Create(
                            H,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(225, 225, 225)}
                        ):Play()
                    end
                )
                function SetSeperateColor4(color)
                    _G.Clickcolor = color
                end
                H.MouseButton1Click:Connect(
                    function()
                        self:SetDropdown(G)
                        f(G)
                        e = not e
                        B.Text = ""
                        B.Visible = false
                        B.Position = UDim2.new(0, 330, 0.1, 2)
                        b:Create(
                            g,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 30)}
                        ):Play()
                        b:Create(n, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play(

                        )
                    end
                )
            end
            i.MouseButton1Click:Connect(
                function()
                    e = not e
                    if e then
                        B.Visible = true
                        B.Position = UDim2.new(0, 330, 0.1, -12)
                        b:Create(
                            g,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 180)}
                        ):Play()
                        b:Create(
                            n,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = -180}
                        ):Play()
                        k.CanvasSize = UDim2.new(0, 0, 0, l.AbsoluteContentSize.Y + 10)
                    else
                        B.Text = ""
                        B.Visible = false
                        B.Position = UDim2.new(0, 330, 0.1, 2)
                        b:Create(
                            g,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 30)}
                        ):Play()
                        b:Create(n, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play(

                        )
                    end
                end
            )
            B:GetPropertyChangedSignal("Text"):Connect(
                function()
                    local I = string.lower(B.Text)
                    for v, w in ipairs(k:GetChildren()) do
                        if w:IsA("TextButton") then
                            w.Visible = string.find(string.lower(w.Text), I) ~= nil
                        end
                    end
                    k.CanvasSize = UDim2.new(0, 0, 0, l.AbsoluteContentSize.Y + 10)
                end
            )
            for v, F in ipairs(d) do
                E:Add(F)
            end
            return E
        end
        function a:AddSlider(a, b, c, d, f)
            local g = {}
            d = math.clamp(d, b, c)
            local h = Instance.new("Frame")
            local i = Instance.new("UICorner")
            local j = Instance.new("TextLabel")
            local k = Instance.new("TextLabel")
            local l = Instance.new("TextButton")
            local m = Instance.new("Frame")
            local n = Instance.new("Frame")
            local o = Instance.new("UICorner")
            local p = Instance.new("Frame")
            local q = Instance.new("UICorner")
            local r = Instance.new("UICorner")
            local J = Instance.new("UIStroke")
            h.Name = "Slider"
            h.Parent = e
            h.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            h.Size = UDim2.new(0, 455, 0, 40)
            spawn(function()
                while wait() do
                    h.BackgroundColor3 = _G.ButtonColor
                end
            end)
            i.CornerRadius = UDim.new(0, 4)
            i.Parent = h
            j.Name = "SliderTitle"
            j.Parent = h
            j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            j.BackgroundTransparency = 1.000
            j.Position = UDim2.new(0.028, 0, 0, 0)
            j.Size = UDim2.new(0, 290, 0, 20)
            j.Font = Enum.Font.Gotham
            j.Text = a
            j.TextColor3 = Color3.fromRGB(225, 225, 225)
            j.TextSize = 11.000
            j.TextXAlignment = Enum.TextXAlignment.Left
            k.Name = "SliderValue"
            k.Parent = h
            k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            k.BackgroundTransparency = 1.000
            k.Position = UDim2.new(0.88, 0, 0, 0)
            k.Size = UDim2.new(0, 40, 0, 20)
            k.Font = Enum.Font.Gotham
            k.Text = tostring(d)
            k.TextColor3 = Color3.fromRGB(225, 225, 225)
            k.TextSize = 11.000
            l.Name = "SliderButton"
            l.Parent = h
            l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            l.BackgroundTransparency = 1.000
            l.Position = UDim2.new(0, 10, 0, 25)
            l.Size = UDim2.new(0, 435, 0, 5)
            l.AutoButtonColor = false
            l.Font = Enum.Font.SourceSans
            l.Text = ""
            l.TextSize = 14.000
            m.Name = "Bar1"
            m.Parent = l
            m.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            m.Size = UDim2.new(1, 0, 0, 5)
            spawn(function()
                while wait() do
                    m.BackgroundColor3 = _G.ButtonColor
                end
            end)
            J.Parent = m
            J.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            J.Color = Color3.fromRGB(50, 50, 50)
            J.LineJoinMode = Enum.LineJoinMode.Round
            J.Thickness = 1
            o.CornerRadius = UDim.new(0, 100)
            o.Parent = m
            n.Name = "Bar"
            n.Parent = m
            n.BackgroundColor3 = Color3.fromRGB(255, 85, 85)
            n.Size = UDim2.new((d - b) / (c - b), 0, 1, 0)
            spawn(function()
            while wait() do
                n.BackgroundColor3 = _G.SeparateColor
            end
            end)
            o.CornerRadius = UDim.new(0, 100)
            o.Parent = n
            p.Name = "CircleBar"
            p.Parent = n
            p.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            p.AnchorPoint = Vector2.new(0.5, 0.5)
            p.Position = UDim2.new(1, 0, 0.5, 0)
            p.Size = UDim2.new(0, 10, 0, 10)
            q.CornerRadius = UDim.new(0, 100)
            q.Parent = p
            r.CornerRadius = UDim.new(0, 100)
            r.Parent = m
            local K = game.Players.LocalPlayer:GetMouse()
            local L = game:GetService("UserInputService")
            local M = false
            l.MouseButton1Down:Connect(
                function()
                    M = true
                end
            )
            L.InputEnded:Connect(
                function(N)
                    if N.UserInputType == Enum.UserInputType.MouseButton1 then
                        M = false
                    end
                end
            )
            L.InputChanged:Connect(
                function(N)
                    if M and N.UserInputType == Enum.UserInputType.MouseMovement then
                        local O = math.clamp(K.X - m.AbsolutePosition.X, 0, m.AbsoluteSize.X)
                        local P = math.floor(O / m.AbsoluteSize.X * (c - b) + b)
                        n.Size = UDim2.new(O / m.AbsoluteSize.X, 0, 1, 0)
                        p.Position = UDim2.new(1, 0, 0.5, 0)
                        k.Text = tostring(P)
                        pcall(
                            function()
                                f(P)
                            end
                        )
                    end
                end
            )
            return g
        end
        function a:AddSeperator(a)
            local b = {}
            local c = Instance.new("Frame")
            local d = Instance.new("TextLabel")
            c.Name = "Seperator"
            c.Parent = e
            c.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            c.BackgroundTransparency = 1.000
            c.ClipsDescendants = true
            c.Size = UDim2.new(0, 455, 0, 20)
            local e = Instance.new("UICorner")
            e.Name = "MainCorner"
            e.CornerRadius = UDim.new(0, 9)
            e.Parent = c
            local e = Instance.new("UICorner")
            e.Name = "MainCorner"
            e.CornerRadius = UDim.new(0, 9)
            e.Parent = Sep1
            d.Name = "SepLabel"
            d.Parent = c
            d.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            d.BackgroundTransparency = 1.000
            d.Position = UDim2.new(0, 5, 0, 0)
            d.Size = UDim2.new(0, 255, 0, 20)
            d.Font = Enum.Font.GothamSemibold
            d.Text = a
            d.TextColor3 = Color3.fromRGB(91, 91, 91)
            d.TextXAlignment = Enum.TextXAlignment.Left
            d.TextSize = 12.000
            function b:SetSep(a)
                d.Text = a
            end
            return b
        end
        function a:AddLine()
            local a = Instance.new("Frame")
            local b = Instance.new("Frame")
            a.Name = "Line"
            a.Parent = e
            a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            a.BackgroundTransparency = 1.000
            a.ClipsDescendants = true
            a.Size = UDim2.new(0, 455, 0, 20)
            b.Name = "Linee"
            b.Parent = a
            b.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            b.BorderSizePixel = 0
            b.Position = UDim2.new(0, 0, 0, 10)
            b.Size = UDim2.new(0, 455, 0, 2)
        end
        function a:AddNLabel(a)
            local b = Instance.new("TextLabel")
            local c = Instance.new("UIPadding")
            local d = {}
            b.Name = "Label"
            b.Parent = e
            b.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            b.BackgroundTransparency = 0
            b.Size = UDim2.new(0, 455, 0, 57)
            b.Font = Enum.Font.GothamSemibold
            b.TextColor3 = Color3.fromRGB(225, 225, 225)
            b.TextSize = 11.000
            b.Text = a
            b.TextXAlignment = Enum.TextXAlignment.Left
            spawn(function()
                while wait() do
                    b.BackgroundColor3 = _G.ButtonColor
                end
            end)
            c.PaddingLeft = UDim.new(0, 10)
            c.Parent = Label
            c.Name = "PaddingLabel"
            local a = Instance.new("UICorner")
            a.Name = "MainCorner"
            a.CornerRadius = UDim.new(0, 5)
            a.Parent = b
            local a = Instance.new("ImageLabel")
            a.Parent = b
            a.BackgroundColor3 = Color3.new(1, 1, 1)
            a.BorderColor3 = Color3.new(0, 0, 0)
            a.BackgroundTransparency = 1.000
            a.BorderSizePixel = 0
            a.Position = UDim2.new(0.851666677, 0, -0.1, 0)
            a.Size = UDim2.new(0, 60, 0, 60)
            a.Image =
                "https://www.roblox.com/headshot-thumbnail/image?userId=" ..
                game.Players.LocalPlayer.UserId .. "&width=420&height=420&format=png"
            function d:Set2(a)
                b.Text = a
            end
            return d
        end
        function a:AddLabel(a, b)
            local c = Instance.new("Frame")
            c.Name = "Mainl"
            c.Parent = e
            c.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            c.BackgroundTransparency = 0
            c.BorderSizePixel = 0
            c.Size = UDim2.new(0, 455, 0, 35)
            local d = Instance.new("TextLabel")
            local e = Instance.new("UIPadding")
            local f = {}
            d.Name = "Title"
            d.Parent = c
            d.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            d.BackgroundTransparency = 1
            d.Size = UDim2.new(0, 455, 0, 35)
            d.Font = Enum.Font.GothamBold
            d.TextColor3 = Color3.fromRGB(225, 225, 225)
            d.TextSize = 11.000
            d.Position = UDim2.new(-0.009, 0, -0.2, 0)
            d.Text = a
            d.TextXAlignment = Enum.TextXAlignment.Left
            local a = Instance.new("TextLabel")
            a.Name = "Text"
            a.Parent = c
            a.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            a.BackgroundTransparency = 1
            a.Size = UDim2.new(0, 455, 0, 35)
            a.Font = Enum.Font.Gotham
            a.TextColor3 = Color3.fromRGB(175, 175, 175)
            a.TextSize = 11.000
            a.Position = UDim2.new(0.014, 0, 0.18, 0)
            a.Text = b
            a.TextXAlignment = Enum.TextXAlignment.Left
            e.PaddingLeft = UDim.new(0, 10)
            e.Parent = d
            e.Name = "PaddingLabel"
            spawn(function()
                while wait() do
                    c.BackgroundColor3 = _G.ButtonColor
                    d.BackgroundColor3 = _G.ButtonColor
                    a.BackgroundColor3 = _G.ButtonColor
                end
            end)
            local b = Instance.new("UICorner")
            b.Name = "MainCorner"
            b.CornerRadius = UDim.new(0, 4)
            b.Parent = c
            function f:Set(b)
                a.Text = b
            end
            return f
        end
        return a
    end
    return a
end
return d
