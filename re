_G.Authenicated = false
    local ui = game.CoreGui:FindFirstChild("RaitoLib")
        function Script()
        do
        local keyui = game.CoreGui:FindFirstChild("ScreenGui")
            if keyui then
            keyui:Destroy()
            end
        end
        if _G.Authenicated ~= string.reverse(game.Players.LocalPlayer.UserId)then while true do end end
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/SaltyHB/Poggers/main/LoadVariables"))()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/ahmadsgamer2/main/Hook"))()
    if _G.Version == "Chest Farm" then
-- SELECT TEAM
if _G.Team == nil then
	_G.Team = "Marines"
end
local function SelectTeam()
    local ChooseTeam = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam", true)
    local UIController = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController", true)

    if UIController and ChooseTeam then
        for i, v in pairs(getgc()) do
            if type(v) == "function" and getfenv(v).script == UIController then
                local constant = getconstants(v)
                if constant[1] == _G.Team and #constant == 1 then
                    v(_G.Team)
                end
            end
        end
    end
end
repeat
    task.wait()
    if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        break
    end

    local success, errorMessage = pcall(SelectTeam)
    if not success then
        warn("Select Team Function Error: " .. errorMessage)
    end

    wait(1)
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
-- SELECT TEAM
local ChestFarm = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Head = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local Discord = Instance.new("TextLabel")
local UserImage = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local Username = Instance.new("TextLabel")
local Time = Instance.new("TextLabel")
local Ping = Instance.new("TextLabel")
local NextWebhook = Instance.new("TextLabel")
local BELI = Instance.new("TextLabel")
local TextStatus = Instance.new("TextLabel")

ChestFarm.Name = "ChestFarm"
ChestFarm.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ChestFarm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ChestFarm
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Frame.Position = UDim2.new(0.513698637, 0, 0.521197021, 0)
Frame.Size = UDim2.new(0, 450, 0, 227)
local FrameCorner = Instance.new("UICorner")
FrameCorner.CornerRadius = UDim.new(0, 8)
FrameCorner.Name = "UserImageCorner"
FrameCorner.Parent = Frame
local FrameStroke = Instance.new("UIStroke")
FrameStroke.Name = "UIStroke"
FrameStroke.Parent = Frame
FrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
FrameStroke.Color = Color3.fromRGB(225,225,225)
FrameStroke.LineJoinMode = Enum.LineJoinMode.Round
FrameStroke.Thickness = 0.7
FrameStroke.Transparency = 0.5
FrameStroke.Enabled = true
FrameStroke.Archivable = true

UICorner.Parent = Frame

Head.Name = "Head"
Head.Parent = Frame
Head.BackgroundColor3 = Color3.fromRGB(162, 210, 255)
Head.BackgroundTransparency = 1.000
Head.Position = UDim2.new(0.27704373, 0, 0.0264317188, 0)
Head.Size = UDim2.new(0, 200, 0, 37)
Head.Font = Enum.Font.Gotham
Head.Text = "Raito Hub Chest Farm"
Head.TextColor3 = Color3.fromRGB(214, 214, 214)
Head.TextSize = 18.000
Head.TextWrapped = true

local Stop = Instance.new("TextButton")
Stop.Font = Enum.Font.Gotham
Stop.Text = "Stop"
Stop.TextColor3 = Color3.new(1, 1, 1)
Stop.TextSize = 13
Stop.BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804)
Stop.BorderColor3 = Color3.new(0, 0, 0)
Stop.BorderSizePixel = 0
Stop.Position = UDim2.new(0.698026201, 0, 0.653179996, 0)
Stop.Size = UDim2.new(0, 85, 0, 35)
Stop.Visible = true
Stop.Name = "GetKey"
Stop.Parent = Frame
Stop.MouseButton1Click:Connect(function()
    _G.FarmChestHop = false
    _G.FarmChest = false
    delfolder("Raito Hub Fluent") 
    delfolder("FluentSettings") 
end)

local stopStroke = Instance.new("UIStroke")
stopStroke.Name = "UIStroke"
stopStroke.Parent = Stop
stopStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stopStroke.Color = Color3.fromRGB(225,225,225)
stopStroke.LineJoinMode = Enum.LineJoinMode.Round
stopStroke.Thickness = 0.6
stopStroke.Transparency = 0.9
stopStroke.Enabled = true
stopStroke.Archivable = true

local uicorner_5 = Instance.new("UICorner")
uicorner_5.CornerRadius = UDim.new(0, 4)
uicorner_5.Parent = Stop

Status.Name = "Status"
Status.Parent = Frame
Status.BackgroundColor3 = Color3.fromRGB(162, 210, 255)
Status.BackgroundTransparency = 1.000
Status.Position = UDim2.new(0.576026201, 0, 0.385179996, 0)
Status.Size = UDim2.new(0, 197, 0, 50)
Status.Font = Enum.Font.Gotham
Status.Text = "$100,000,000"
Status.TextColor3 = Color3.fromRGB(102, 255, 0)
Status.TextSize = 18.000
Status.TextWrapped = true
spawn(function()
    while task.wait() do
    pcall(function()
    Status.Text = "$"..game:GetService("Players").LocalPlayer.Data.Beli.Value
    end)
    end
end)

Frame_2.Name = "|"
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 0.191709891, 0)
Frame_2.Size = UDim2.new(0, 448, 0, 1)

Frame_3.Name = "|"
Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.589986682, 0, 0.196890816, 0)
Frame_3.Size = UDim2.new(0, -1, 0, 182)

Discord.Name = "Discord"
Discord.Parent = Frame
Discord.BackgroundColor3 = Color3.fromRGB(162, 210, 255)
Discord.BackgroundTransparency = 1.000
Discord.Position = UDim2.new(0.568797171, 0, 0.703619003, 0)
Discord.Size = UDim2.new(0, 204, 0, 68)
Discord.Font = Enum.Font.Gotham
Discord.Text = "discord.gg/raitohub"
Discord.TextColor3 = Color3.fromRGB(108, 108, 108)
Discord.TextSize = 11.000
Discord.TextWrapped = true

UserImage.Name = "UserImage"
UserImage.Parent = Frame
UserImage.BackgroundColor3 = Color3.fromRGB(146, 253, 255)
UserImage.BackgroundTransparency = 1.000
UserImage.BorderSizePixel = 0
UserImage.Position = UDim2.new(0.0289156623, 0, 0.248704657, 0)
UserImage.Size = UDim2.new(0, 64, 0, 56)
UserImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
local UserImageCorner = Instance.new("UICorner")
UserImageCorner.CornerRadius = UDim.new(0, 100)
UserImageCorner.Name = "UserImageCorner"
UserImageCorner.Parent = UserImage
UICorner_2.Parent = UserImage

Username.Name = "Username"
Username.Parent = Frame
Username.BackgroundColor3 = Color3.fromRGB(162, 210, 255)
Username.BackgroundTransparency = 1.000
Username.Position = UDim2.new(0.102826737, 0, 0.243523315, 0)
Username.Size = UDim2.new(0, 189, 0, 56)
Username.Font = Enum.Font.Gotham
Username.Text = "@"..game.Players.LocalPlayer.Name
Username.TextColor3 = Color3.fromRGB(214, 214, 214)
Username.TextSize = 18.000
Username.TextWrapped = true

Time.Name = "Time"
Time.Parent = Frame
Time.BackgroundColor3 = Color3.fromRGB(162, 210, 255)
Time.BackgroundTransparency = 1.000
Time.Position = UDim2.new(-0.0321129486, 0, 0.538860083, 0)
Time.Size = UDim2.new(0, 271, 0, 49)
Time.Font = Enum.Font.Gotham
Time.Text = "Hr(s) : 1  Min(s) : 1  Sec(s) : 15"
Time.TextColor3 = Color3.fromRGB(214, 214, 214)
Time.TextSize = 15.000
Time.TextWrapped = true
function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime+0.5)
    local Hour = math.floor(GameTime/(60^2))%24
    local Minute = math.floor(GameTime/(60^1))%60
    local Second = math.floor(GameTime/(60^0))%60
    Time.Text = "Hr(s) : "..Hour.." Min(s) : "..Minute.." Sec(s) : "..Second
  end
          
  spawn(function()
  while task.wait() do
  pcall(function()
  UpdateTime()
  end)
  end
  end)

Ping.Name = "Ping"
Ping.Parent = Frame
Ping.BackgroundColor3 = Color3.fromRGB(162, 210, 255)
Ping.BackgroundTransparency = 1.000
Ping.Position = UDim2.new(0.0289156623, 0, 0.703619003, 0)
Ping.Size = UDim2.new(0, 232, 0, 50)
Ping.Font = Enum.Font.Gotham
Ping.Text = "Fps : 60 Ping : 201.691 (80%CV)"
Ping.TextColor3 = Color3.fromRGB(214, 214, 214)
Ping.TextSize = 14.000
Ping.TextWrapped = true
spawn(function()
    while task.wait() do
    pcall(function()
    Ping.Text = "Fps : "..workspace:GetRealPhysicsFPS().." Ping : "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    end)
    end
end)

BELI.Name = "BELI"
BELI.Parent = Frame
BELI.BackgroundColor3 = Color3.fromRGB(162, 210, 255)
BELI.BackgroundTransparency = 1.000
BELI.Position = UDim2.new(0.55990833, 0, 0.431259096, 0)
BELI.Size = UDim2.new(0, 208, 0, 73)
BELI.Font = Enum.Font.Gotham
BELI.Text = "BELI"
BELI.TextColor3 = Color3.fromRGB(79, 79, 79)
BELI.TextSize = 18.000
BELI.TextWrapped = true

TextStatus.Name = "TextStatus"
TextStatus.Parent = Frame
TextStatus.BackgroundColor3 = Color3.fromRGB(162, 210, 255)
TextStatus.BackgroundTransparency = 1.000
TextStatus.Position = UDim2.new(0.571581781, 0, 0.186942086, 0)
TextStatus.Size = UDim2.new(0, 197, 0, 50)
TextStatus.Font = Enum.Font.Gotham
TextStatus.Text = "STATUS"
TextStatus.TextColor3 = Color3.fromRGB(35, 35, 35)
TextStatus.TextSize = 18.000
TextStatus.TextWrapped = true

_G.FarmChestHop = true
_G.FarmChest = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/FarmChest"))()
spawn(function()
    pcall(function()
        while wait(5) do
            if _G.FarmChest then
            if not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
            game.Players.LocalPlayer.Character.Head:Destroy()
            wait(5)
            end
            end 
        end
    end)
end)

    local url = ChestWebhook
    local data = {
        ["username"] = 'Raito Hub', -- Webhook name here
        ['content'] = '',
        ["avatar_url"] = "https://cdn.discordapp.com/icons/1092853395947278478/5b4f2be2034be3322dd40d1d9b0a802f.png",
        ["embeds"] = {
            {
                ["description"] = "**Information Webhook**",
                ["color"] = tonumber(5763719), -- color id		
                ["type"] = "rich",
                ["fields"] =  {
                    {
                        ["name"] = "[👥] Username - "..game.Players.LocalPlayer.DisplayName,
                        ["value"] = ''
                    },
                    {
                        ["name"] = "[💸] Beli - "..game:GetService("Players").LocalPlayer.Data.Beli.Value,
                        ["value"] = '',
                    }
                },
                ["footer"] = {
                    ["text"] = 'Chest Farm',
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
    print("[ Raito Hub ] Chest Farm Config Loaded!")
elseif _G.Version == "Fruit Farm" then
    do
        local ui = game.CoreGui:FindFirstChild("RaitoLib")
         if ui then
             ui:Destroy()
         end
     end 
    repeat wait() until game.IsLoaded and (game.Players.LocalPlayer or game.Players.PlayerAdded:Wait()) and (game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait())
    game.NetworkClient.ChildRemoved:Connect(function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end)
    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
    game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
    end)
    if Ran then
        return
    else
        getgenv().Ran = true
    end
    
-- SELECT TEAM
if _G.Team == nil then
	_G.Team = "Marines"
end
local function SelectTeam()
    local ChooseTeam = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam", true)
    local UIController = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController", true)

    if UIController and ChooseTeam then
        for i, v in pairs(getgc()) do
            if type(v) == "function" and getfenv(v).script == UIController then
                local constant = getconstants(v)
                if constant[1] == _G.Team and #constant == 1 then
                    v(_G.Team)
                end
            end
        end
    end
end
repeat
    task.wait()
    if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        break
    end

    local success, errorMessage = pcall(SelectTeam)
    if not success then
        warn("Select Team Function Error: " .. errorMessage)
    end

    wait(1)
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
-- SELECT TEAM
    wait(1)
    -- UI LIBRARY
    _G.Send = true
    AutoStore = true
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local Head = Instance.new("TextLabel")
    local Status = Instance.new("TextLabel")
    local Frame_2 = Instance.new("Frame")
    local Frame_3 = Instance.new("Frame")
    local Discord = Instance.new("TextLabel")
    local UserImage = Instance.new("ImageLabel")
    local Username = Instance.new("TextLabel")
    local Time = Instance.new("TextLabel")
    local Ping = Instance.new("TextLabel")
     
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Frame.Parent = ScreenGui
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = UDim2.new(0, 415, 0, 193)
    local FrameCorner = Instance.new("UICorner")
    FrameCorner.CornerRadius = UDim.new(0, 8)
    FrameCorner.Name = "UserImageCorner"
    FrameCorner.Parent = Frame
    local FrameStroke = Instance.new("UIStroke")
    FrameStroke.Name = "UIStroke"
    FrameStroke.Parent = Frame
    FrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    FrameStroke.Color = Color3.fromRGB(225,225,225)
    FrameStroke.LineJoinMode = Enum.LineJoinMode.Round
    FrameStroke.Thickness = 0.7
    FrameStroke.Transparency = 0.5
    FrameStroke.Enabled = true
    FrameStroke.Archivable = true
    
    Head.Name = "Head"
    Head.Parent = Frame
    Head.BackgroundColor3 = Color3.new(0.635294, 0.823529, 1)
    Head.BackgroundTransparency = 1
    Head.Position = UDim2.new(0.257043749, 0, 0, 0)
    Head.Size = UDim2.new(0, 200, 0, 37)
    Head.Font = Enum.Font.Gotham
    Head.Text = "Raito Hub Fruit Farm"
    Head.TextColor3 = Color3.new(0.839216, 0.839216, 0.839216)
    Head.TextSize = 18
    Head.TextWrapped = true
    
    Status.Name = "Status"
    Status.Parent = Frame
    Status.BackgroundColor3 = Color3.new(0.635294, 0.823529, 1)
    Status.BackgroundTransparency = 1
    Status.Position = UDim2.new(0.558248401, 0, 0.366831422, 0)
    Status.Size = UDim2.new(0, 197, 0, 50)
    Status.Font = Enum.Font.Gotham
    Status.Text = "Waiting.."
    Status.TextColor3 = Color3.new(162, 210, 255)
    Status.TextSize = 16
    Status.TextWrapped = true
    
    Frame_2.Name = "|"
    Frame_2.Parent = Frame
    Frame_2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    Frame_2.BorderSizePixel = 0
    Frame_2.Position = UDim2.new(0, 0, 0.191709846, 0)
    Frame_2.Size = UDim2.new(0, 415, 0, 1)
    
    Frame_3.Name = "|"
    Frame_3.Parent = Frame
    Frame_3.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    Frame_3.BorderSizePixel = 0
    Frame_3.Position = UDim2.new(0.585542202, 0, 0.196891189, 0)
    Frame_3.Size = UDim2.new(0, 1, 0, 155)
    
    Discord.Name = "Discord"
    Discord.Parent = Frame
    Discord.BackgroundColor3 = Color3.new(0.635294, 0.823529, 1)
    Discord.BackgroundTransparency = 1
    Discord.Position = UDim2.new(0.55101949, 0, 0.703619003, 0)
    Discord.Size = UDim2.new(0, 204, 0, 68)
    Discord.Font = Enum.Font.Gotham
    Discord.Text = "discord.gg/raitohub"
    Discord.TextColor3 = Color3.new(0.839216, 0.839216, 0.839216)
    Discord.TextSize = 11
    Discord.TextWrapped = true
    
    UserImage.Name = "UserImage"
    UserImage.Parent = Frame
    UserImage.BackgroundColor3 = Color3.new(0.572549, 0.992157, 1)
    UserImage.BackgroundTransparency = 1
    UserImage.BorderSizePixel = 0
    UserImage.Position = UDim2.new(0.0289156623, 0, 0.248704657, 0)
    UserImage.Size = UDim2.new(0, 64, 0, 56)
    UserImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
    local UserImageCorner = Instance.new("UICorner")
    UserImageCorner.CornerRadius = UDim.new(0, 100)
    UserImageCorner.Name = "UserImageCorner"
    UserImageCorner.Parent = UserImage
    
    Username.Name = "Username"
    Username.Parent = Frame
    Username.BackgroundColor3 = Color3.new(0.635294, 0.823529, 1)
    Username.BackgroundTransparency = 1
    Username.Position = UDim2.new(0.102826737, 0, 0.243523315, 0)
    Username.Size = UDim2.new(0, 189, 0, 56)
    Username.Font = Enum.Font.Gotham
    Username.Text = "@"..game.Players.LocalPlayer.Name
    Username.TextColor3 = Color3.new(0.839216, 0.839216, 0.839216)
    Username.TextSize = 18
    Username.TextWrapped = true
    
    Time.Name = "Time"
    Time.Parent = Frame
    Time.BackgroundColor3 = Color3.new(0.635294, 0.823529, 1)
    Time.BackgroundTransparency = 1
    Time.Position = UDim2.new(-0.032, 0,0.539, 0)
    Time.Size = UDim2.new(0, 271,0, 49)
    Time.Font = Enum.Font.Gotham
    Time.Text = "Hr(s) :  Min(s) :  Sec(s) : "
    Time.TextColor3 = Color3.new(0.839216, 0.839216, 0.839216)
    Time.TextSize = 15
    Time.TextWrapped = true
    function UpdateTime()
      local GameTime = math.floor(workspace.DistributedGameTime+0.5)
      local Hour = math.floor(GameTime/(60^2))%24
      local Minute = math.floor(GameTime/(60^1))%60
      local Second = math.floor(GameTime/(60^0))%60
      Time.Text = "Hr(s) : "..Hour.." Min(s) : "..Minute.." Sec(s) : "..Second
    end

    local Stop = Instance.new("TextButton")
Stop.Font = Enum.Font.Gotham
Stop.Text = "Stop"
Stop.TextColor3 = Color3.new(1, 1, 1)
Stop.TextSize = 13
Stop.BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804)
Stop.BorderColor3 = Color3.new(0, 0, 0)
Stop.BorderSizePixel = 0
Stop.Position = UDim2.new(0.698026201, 0, 0.603179996, 0)
Stop.Size = UDim2.new(0, 85, 0, 35)
Stop.Visible = true
Stop.Name = "GetKey"
Stop.Parent = Frame
Stop.MouseButton1Click:Connect(function()
    delfolder("Raito Hub Fluent") 
    delfolder("FluentSettings")  
end)

local stopStroke = Instance.new("UIStroke")
stopStroke.Name = "UIStroke"
stopStroke.Parent = Stop
stopStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stopStroke.Color = Color3.fromRGB(225,225,225)
stopStroke.LineJoinMode = Enum.LineJoinMode.Round
stopStroke.Thickness = 0.6
stopStroke.Transparency = 0.9
stopStroke.Enabled = true
stopStroke.Archivable = true

local uicorner_5 = Instance.new("UICorner")
uicorner_5.CornerRadius = UDim.new(0, 4)
uicorner_5.Parent = Stop
            
    spawn(function()
    while task.wait() do
    pcall(function()
    UpdateTime()
    end)
    end
    end)
            
    Ping.Name = "Ping"
    Ping.Parent = Frame
    Ping.BackgroundColor3 = Color3.new(0.635294, 0.823529, 1)
    Ping.BackgroundTransparency = 1
    Ping.Position = UDim2.new(0.029, 0,0.704, 0)
    Ping.Size = UDim2.new(0, 232,0, 50)
    Ping.Font = Enum.Font.Gotham
    Ping.Text = "Fps And Ping"
    Ping.TextColor3 = Color3.new(0.839216, 0.839216, 0.839216)
    Ping.TextSize = 14
    Ping.TextWrapped = true
    spawn(function()
    while task.wait() do
    pcall(function()
    Ping.Text = "Fps : "..workspace:GetRealPhysicsFPS().." Ping : "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    end)
    end
    end)
    -- SCRIPT
    _G.SendCheck = false
    if TeleportSafe then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12550.5518, 337.194061, -7509.89062, 0.999955118, -3.64926735e-11, 0.00947228167, 3.65680507e-11, 1, -7.78468262e-12, -0.00947228167, 8.13071572e-12, 0.999955118))
    Status.Text = "Teleported Safezone!"
    end
    spawn(function()
    while task.wait() do
    if AutoStore then
    pcall(function()
    local plr = game.Players.LocalPlayer
    local chr = plr.Character
    local fruit = chr:FindFirstChildOfClass("Tool") and chr:FindFirstChildOfClass("Tool").Name:find("Fruit") and chr:FindFirstChildOfClass("Tool") or (function()
    for _,fr in plr.Backpack:GetChildren() do
    if fr.Name:find("Fruit") then
    _G.Store = true
    return fr
    else
    _G.Store = false
    end
    end
    end)()
    if _G.Store then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", fruit:GetAttribute("OriginalName"), fruit)
    if _G.Send == true then
    local datas = {
    ["content"] = "",
    ["embeds"] = {{
    ["title"] = "You Got This Fruit!",
    ["description"] = "```- "..fruit:GetAttribute("OriginalName").."```",
    ["type"] = "rich",
    ["color"] = tonumber(5763719)}}}
    local newdatas = game:GetService("HttpService"):JSONEncode(datas)
    local headers = {["content-type"] = "application/json"}
    local requests = http_request or request or HttpPost or syn.request
    local abcdefs = {Url = Webhook, Body = newdatas, Method = "POST", Headers = headers}
    requests(abcdefs)
    else
    if _G.SendCheck == false then
    local datas = {
    ["content"] = "",
    ["embeds"] = {{
    ["title"] = "Storage Failed!",
    ["description"] = "```- Maximum Capacity```",
    ["type"] = "rich",
    ["color"] = tonumber(5763719)}}}
    local newdatas = game:GetService("HttpService"):JSONEncode(datas)
    local headers = {["content-type"] = "application/json"}
    local requests = http_request or request or HttpPost or syn.request
    local abcdefs = {Url = Webhook, Body = newdatas, Method = "POST", Headers = headers}
    requests(abcdefs)
    _G.SendCheck = true 
    end
    end
    end
    end)
    end
    end
    end)
    
    function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
    _G.NotAutoEquip = true
    wait(.5)
    game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
    wait(.1)
    _G.NotAutoEquip = false
    end
    end
    spawn(function()
    pcall(function()
    while wait(.1) do
    for i,v in pairs(game:GetService("Workspace").Characters[game.Players.LocalPlayer.Name]:GetChildren()) do
    if string.find(v.Name, "Fruit") then
    UnEquipWeapon(v.Name)
    end
    end 
    end
    end)
    end)
    
                spawn(function()
                    game:GetService("RunService").RenderStepped:Connect(function()
                        pcall(function()
                            if AutoStore then
                                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                                    if v.Name == "NotificationTemplate" then
                                        if string.find(v.Text,"You can only store 4 of each fruit.") or string.find(v.Text,"You can only store 1 of each fruit.") or string.find(v.Text,"You can only store 2 of each fruit.") or string.find(v.Text,"You can only store 3 of each fruit.") or string.find(v.Text,"You can only store 5 of each fruit.") or string.find(v.Text,"You can only store 6 of each fruit.") or string.find(v.Text,"You can only store 7 of each fruit.") or string.find(v.Text,"You can only store 8 of each fruit.") or string.find(v.Text,"You can only store 9 of each fruit.") or string.find(v.Text,"You can only store 10 of each fruit.") then
                                            v:Destroy()
                                            _G.Send = false
                                        end
                                    end
                                end
                            end
                        end)
                    end)
                end)
    
    local plr = game.Players.LocalPlayer
    local chr = plr.Character
    local fruit = chr:FindFirstChildOfClass("Tool") and chr:FindFirstChildOfClass("Tool").Name:find("Fruit") and chr:FindFirstChildOfClass("Tool") or (function()
    for _,fr in plr.Backpack:GetChildren() do
    if fr.Name:find("Fruit") then
    _G.Store = true
    return fr
    else
    _G.Store = false
    end
    end
    end)()
    if _G.Store then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", fruit:GetAttribute("OriginalName"), fruit)
    end
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    
    local plr = game.Players.LocalPlayer
    local chr = plr.Character
    local t = game.TweenService
    local bv = Instance.new("BodyVelocity")
    bv.MaxForce = Vector3.new(1/0, 1/0, 1/0)
    bv.Velocity = Vector3.new()
    bv.Name = "bV"
    local bav = Instance.new("BodyAngularVelocity")
    bav.AngularVelocity = Vector3.new()
    bav.MaxTorque = Vector3.new(1/0, 1/0, 1/0)
    bav.Name = "bAV"
    for _,v in next, workspace:GetChildren() do
        if v.Name:find("Fruit") and (v:IsA("Tool") or v:IsA("Model")) then
            Status.Text = "Founded A Fruit Teleporting.."
            repeat
                local anc1 = bv:Clone()
                anc1.Parent = chr.HumanoidRootPart
                local anc2 = bav:Clone()
                anc2.Parent = chr.HumanoidRootPart
                local p = t:Create(chr.HumanoidRootPart, TweenInfo.new((plr:DistanceFromCharacter(v.Handle.Position)-100)/320, Enum.EasingStyle.Linear), {CFrame=v.Handle.CFrame + Vector3.new(0, 10, 0)})
                p:Play()
                p.Completed:Wait()
                chr.HumanoidRootPart.CFrame = v.Handle.CFrame
                anc1:Destroy()
                anc2:Destroy()
                wait(1)
            until v.Parent ~= workspace
        end
    end
    
    Status.Text = "Changing Server.."
    local currentJobId = game.JobId
    repeat
    task.spawn(pcall, function()
    repeat wait() until game:IsLoaded()
    wait(ServerHopTimer)
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
       local Site;
       if foundAnything == "" then
           Site = game.HttpService:JSONDecode(game:HttpGetAsync('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
       else
           Site = game.HttpService:JSONDecode(game:HttpGetAsync('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
       end
       local ID = ""
       if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
           foundAnything = Site.nextPageCursor
       end
       local num = 0;
       for i,v in pairs(Site.data) do
           local Possible = true
           ID = tostring(v.id)
           if tonumber(v.maxPlayers) > tonumber(v.playing) then
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
    
    function Teleport()
       while wait() do
           pcall(function()
               TPReturner()
               if foundAnything ~= "" then
                   TPReturner()
               end
           end)
       end
    end
    
    Teleport()
        end)
        wait(2)
    until game.JobId ~= currentJobId
else
-- SCRIPTS
wait(1)
                
if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

local Fluent = loadstring(game:HttpGetAsync("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/SaltyHB/Poggers/main/SaveManagerr"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Interface"))()
Fluent:Notify({
    Title = "Raito Hub",
    Content = "The script is loading.",
    Duration = 7
})
-- SELECT TEAM
if _G.Team == nil then
	_G.Team = "Pirates"
end
local function SelectTeam()
    local ChooseTeam = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam", true)
    local UIController = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController", true)

    if UIController and ChooseTeam then
        for i, v in pairs(getgc()) do
            if type(v) == "function" and getfenv(v).script == UIController then
                local constant = getconstants(v)
                if constant[1] == _G.Team and #constant == 1 then
                    v(_G.Team)
                end
            end
        end
    end
end
repeat
    task.wait()
    if not game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        break
    end

    local success, errorMessage = pcall(SelectTeam)
    if not success then
        warn("Select Team Function Error: " .. errorMessage)
    end

    wait(1)
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
-- SELECT TEAM
if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
    _G.Color = Color3.fromRGB(0,0,0)
    if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
    
    repeat wait() until game:GetService("Players")
    
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") end
        
    wait(1)
 --------------------------------------------------------------------
        if game.PlaceId == 2753915549 then
            World1 = true
        elseif game.PlaceId == 4442272183 then
            World2 = true
        elseif game.PlaceId == 7449423635 then
            World3 = true
        end
        
function CheckQuest() 
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 or _G.SelectMob == "Bandit [Lv. 5]" then -- Bandit
        Mon = "Bandit"
            NameQuest = "BanditQuest1"
            LevelQuest = 1
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
            CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
            LevelFarm = 1
        elseif MyLevel == 10 or MyLevel <= 14 or _G.SelectMob == "Monkey [Lv. 14]" then -- Monkey
        Mon = "Monkey"
            NameQuest = "JungleQuest"
            LevelQuest = 1
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
            CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
            LevelFarm = 2
        elseif MyLevel == 15 or MyLevel <= 29 or _G.SelectMob == "Gorilla [Lv. 20]" then -- Gorilla
        Mon = "Gorilla"
            NameQuest = "JungleQuest"
            LevelQuest = 2
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
            CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
            LevelFarm = 3
        elseif MyLevel == 30 or MyLevel <= 39 or _G.SelectMob == "Pirate [Lv. 35]" then -- Pirate
        Mon = "Pirate"
            NameQuest = "BuggyQuest1"
            LevelQuest = 1
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
            CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
            LevelFarm = 4
        elseif MyLevel == 40 or MyLevel <= 59 or _G.SelectMob == "Brute [Lv. 45]" then -- Brute
        Mon = "Brute"
            NameQuest = "BuggyQuest1"
            LevelQuest = 2
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
            CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
            LevelFarm = 5
        elseif MyLevel == 60 or MyLevel <= 74 or _G.SelectMob == "Desert Bandit [Lv. 60]" then -- Desert Bandit
        Mon = "Desert Bandit"
            NameQuest = "DesertQuest"
            LevelQuest = 1
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
            CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
            LevelFarm = 6
        elseif MyLevel == 75 or MyLevel <= 89 or _G.SelectMob == "Desert Officer [Lv. 70]" then -- Desert Officre
        Mon = "Desert Officer"
            NameQuest = "DesertQuest"
            LevelQuest = 2
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
            CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
            LevelFarm = 7
        elseif MyLevel == 90 or MyLevel <= 99 or _G.SelectMob == "Snow Bandit [Lv. 90]" then -- Snow Bandits
        Mon = "Snow Bandit"
            NameQuest = "SnowQuest"
            LevelQuest = 1
            NameMon = "Snow Bandits"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
            LevelFarm = 8
        elseif MyLevel == 100 or MyLevel <= 119 or _G.SelectMob == "Snowman [Lv. 100]"  then -- Snowman
        Mon = "Snowman"
            NameQuest = "SnowQuest"
            LevelQuest = 2
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
            LevelFarm = 9
        elseif MyLevel == 120 or MyLevel <= 149 or _G.SelectMob == "Chief Petty Officer [Lv. 120]" then -- Chief Petty Officer
        Mon = "Chief Petty Officer"
            NameQuest = "MarineQuest2"
            LevelQuest = 1
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
            CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
            LevelFarm = 10
        elseif MyLevel == 150 or MyLevel <= 174 or _G.SelectMob == "Sky Bandit [Lv. 150]" then -- Sky Bandit
        Mon = "Sky Bandit"
            NameQuest = "SkyQuest"
            LevelQuest = 1
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
            CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
            LevelFarm = 11
        elseif MyLevel == 175 or MyLevel <= 189 or _G.SelectMob == "Dark Master [Lv. 175]" then -- Dark Master
        Mon = "Dark Master"
            NameQuest = "SkyQuest"
            LevelQuest = 2
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
            CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
            LevelFarm = 12
        elseif MyLevel == 190 or MyLevel <= 209 or _G.SelectMob == "Prisoner [Lv. 190]" then
            Mon = "Prisoner"
            NameQuest = "PrisonerQuest"
            LevelQuest = 1
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
            LevelFarm = 13
        elseif MyLevel == 210 or MyLevel <= 249 or _G.SelectMob == "Dangerous Prisoner [Lv. 210]" then
            Mon = "Dangerous Prisoner"
            NameQuest = "PrisonerQuest"
            LevelQuest = 2
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
            LevelFarm = 14
        elseif MyLevel == 250 or MyLevel <= 299 or _G.SelectMob == "Toga Warrior [Lv. 225]" then -- Toga Warrior
        Mon = "Toga Warrior"
            NameQuest = "ColosseumQuest"
            LevelQuest = 1
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
            CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
            LevelFarm = 15
        elseif MyLevel == 300 or MyLevel <= 324 or _G.SelectMob == "Military Soldier [Lv. 300]" then -- Military Soldier
        Mon = "Military Soldier"
            NameQuest = "MagmaQuest"
            LevelQuest = 1
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
            CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
            LevelFarm = 16
        elseif MyLevel == 325 or MyLevel <= 374 or _G.SelectMob == "Military Spy [Lv. 330]" then -- Military Spy
        Mon = "Military Spy"
            NameQuest = "MagmaQuest"
            LevelQuest = 2
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
            CFrameMon = CFrame.new(-5865.52979, 77.2564392, 8847.52832, 0.886435747, -8.73096937e-08, 0.462851614, 1.11671731e-07, 1, -2.52351402e-08, -0.462851614, 7.40567714e-08, 0.886435747)
            LevelFarm = 17
        elseif MyLevel == 375 or MyLevel <= 399 or _G.SelectMob == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
        Mon = "Fishman Warrior"
            NameQuest = "FishmanQuest"
            LevelQuest = 1
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
            CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
            LevelFarm = 18
        elseif MyLevel == 400 or MyLevel <= 449 or _G.SelectMob == "Fishman Commando [Lv. 400]" then -- Fishman Commando
        Mon = "Fishman Commando"
            NameQuest = "FishmanQuest"
            LevelQuest = 2
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
            CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
            LevelFarm = 19
        elseif MyLevel == 450 or MyLevel <= 474 or _G.SelectMob == "God's Guard [Lv. 450]" then -- God's Guards
        Mon = "God's Guard"
            NameQuest = "SkyExp1Quest"
            LevelQuest = 1
            NameMon = "God's Guards"
            CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
            CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
            LevelFarm = 20
        elseif MyLevel == 475 or MyLevel <= 524 or _G.SelectMob == "Shanda [Lv. 475]" then -- Shandas
            sky = false
            Mon = "Shanda"
            NameQuest = "SkyExp1Quest"
            LevelQuest = 2
            NameMon = "Shandas"
            CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
            CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
            LevelFarm = 21
        elseif MyLevel == 525 or MyLevel <= 549 or _G.SelectMob == "Royal Squad [Lv. 525]" then -- Royal Squad
            sky = true
            Mon = "Royal Squad"
            NameQuest = "SkyExp2Quest"
            LevelQuest = 1
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
            CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
            LevelFarm = 22
        elseif MyLevel == 550 or MyLevel <= 624 or _G.SelectMob == "Royal Soldier [Lv. 550]" then -- Royal Soldier
            Dis = 240
            sky = true
            Mon = "Royal Soldier"
            NameQuest = "SkyExp2Quest"
            LevelQuest = 2
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
            CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
            LevelFarm = 23
        elseif MyLevel == 625 or MyLevel <= 649 or _G.SelectMob == "Galley Pirate [Lv. 625]" then -- Galley Pirate
            Dis = 240
            sky = false
            Mon = "Galley Pirate"
            NameQuest = "FountainQuest"
            LevelQuest = 1
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
            CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
            LevelFarm = 24
        elseif MyLevel >= 650 or _G.SelectMob == "Galley Captain [Lv. 650]" then -- Galley Captain
            Dis = 240
            Mon = "Galley Captain"
            NameQuest = "FountainQuest"
            LevelQuest = 2
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
            CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
            LevelFarm = 25
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 or _G.SelectMob == "Raider [Lv. 700]" then -- Raider [Lv. 700]
        Mon = "Raider"
            NameQuest = "Area1Quest"
            LevelQuest = 1
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
            CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
            LevelFarm = 1
        elseif MyLevel == 725 or MyLevel <= 774 or _G.SelectMob == "Mercenary [Lv. 725]" then -- Mercenary [Lv. 725]
        Mon = "Mercenary"
            NameQuest = "Area1Quest"
            LevelQuest = 2
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
            CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
            LevelFarm = 2
        elseif MyLevel == 775 or MyLevel <= 799 or _G.SelectMob == "Swan Pirate [Lv. 775]" then -- Swan Pirate [Lv. 775]
        Mon = "Swan Pirate"
            NameQuest = "Area2Quest"
            LevelQuest = 1
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
            LevelFarm = 3
        elseif MyLevel == 800 or MyLevel <= 874 or _G.SelectMob == "Factory Staff [Lv. 800]" then -- Factory Staff [Lv. 800]
        Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
            LevelFarm = 4
        elseif MyLevel == 875 or MyLevel <= 899 or _G.SelectMob == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant [Lv. 875]
        Mon = "Marine Lieutenant"
            NameQuest = "MarineQuest3"
            LevelQuest = 1
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
            CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
            LevelFarm = 5
        elseif MyLevel == 900 or MyLevel <= 949 or _G.SelectMob == "Marine Captain [Lv. 900]" then -- Marine Captain [Lv. 900]
        Mon = "Marine Captain"
            NameQuest = "MarineQuest3"
            LevelQuest = 2
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
            CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
            LevelFarm = 6
        elseif MyLevel == 950 or MyLevel <= 974 or _G.SelectMob == "Zombie [Lv. 950]" then -- Zombie [Lv. 950]
        Mon = "Zombie"
            NameQuest = "ZombieQuest"
            LevelQuest = 1
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
            CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
            LevelFarm = 7
        elseif MyLevel == 975 or MyLevel <= 999 or _G.SelectMob == "Vampire [Lv. 975]" then -- Vampire [Lv. 975]
        Mon = "Vampire"
            NameQuest = "ZombieQuest"
            LevelQuest = 2
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
            CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
            LevelFarm = 8
        elseif MyLevel == 1000 or MyLevel <= 1049 or _G.SelectMob == "Snow Trooper [Lv. 1000]" then -- Snow Trooper [Lv. 1000] **
        Mon = "Snow Trooper"
            NameQuest = "SnowMountainQuest"
            LevelQuest = 1
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
            CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
            LevelFarm = 9
        elseif MyLevel == 1050 or MyLevel <= 1099 or _G.SelectMob == "Winter Warrior [Lv. 1050]" then -- Winter Warrior [Lv. 1050]
        Mon = "Winter Warrior"
            NameQuest = "SnowMountainQuest"
            LevelQuest = 2
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
            CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
            LevelFarm = 10
        elseif MyLevel == 1100 or MyLevel <= 1124 or _G.SelectMob == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate [Lv. 1100]
        Mon = "Lab Subordinate"
            NameQuest = "IceSideQuest"
            LevelQuest = 1
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
            CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
            LevelFarm = 11
        elseif MyLevel == 1125 or MyLevel <= 1174 or _G.SelectMob == "Horned Warrior [Lv. 1125]" then -- Horned Warrior [Lv. 1125]
        Mon = "Horned Warrior"
            NameQuest = "IceSideQuest"
            LevelQuest = 2
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
            CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
            LevelFarm = 12
        elseif MyLevel == 1175 or MyLevel <= 1199 or _G.SelectMob == "Magma Ninja [Lv. 1175]" then -- Magma Ninja [Lv. 1175]
        Mon = "Magma Ninja"
            NameQuest = "FireSideQuest"
            LevelQuest = 1
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
            CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
            LevelFarm = 13
        elseif MyLevel == 1200 or MyLevel <= 1249 or _G.SelectMob == "Lava Pirate [Lv. 1200]" then -- Lava Pirate [Lv. 1200]
        Mon = "Lava Pirate"
            NameQuest = "FireSideQuest"
            LevelQuest = 2
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
            CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
            LevelFarm = 14
        elseif MyLevel == 1250 or MyLevel <= 1274 or _G.SelectMob == "Ship Deckhand [Lv. 1250]" then -- Ship Deckhand [Lv. 1250]
        Mon = "Ship Deckhand"
            NameQuest = "ShipQuest1"
            LevelQuest = 1
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
            LevelFarm = 15
        elseif MyLevel == 1275 or MyLevel <= 1299 or _G.SelectMob == "Ship Engineer [Lv. 1275]"  then -- Ship Engineer [Lv. 1275]
        Mon = "Ship Engineer"
            NameQuest = "ShipQuest1"
            LevelQuest = 2
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
            LevelFarm = 16
        elseif MyLevel == 1300 or MyLevel <= 1324 or _G.SelectMob == "Ship Steward [Lv. 1300]" then -- Ship Steward [Lv. 1300]
        Mon = "Ship Steward"
            NameQuest = "ShipQuest2"
            LevelQuest = 1
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
            CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
            LevelFarm = 17
        elseif MyLevel == 1325 or MyLevel <= 1349 or _G.SelectMob == "Ship Officer [Lv. 1325]" then -- Ship Officer [Lv. 1325]
        Mon = "Ship Officer"
            NameQuest = "ShipQuest2"
            LevelQuest = 2
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
            CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
            LevelFarm = 18
        elseif MyLevel == 1350 or MyLevel <= 1374 or _G.SelectMob == "Arctic Warrior [Lv. 1350]" then -- Arctic Warrior [Lv. 1350]
        Mon = "Arctic Warrior"
            NameQuest = "FrostQuest"
            LevelQuest = 1
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
            CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
            LevelFarm = 19
        elseif MyLevel == 1375 or MyLevel <= 1424 or _G.SelectMob == "Snow Lurker [Lv. 1375]" then -- Snow Lurker [Lv. 1375]
        Mon = "Snow Lurker"
            NameQuest = "FrostQuest"
            LevelQuest = 2
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
            CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
            LevelFarm = 20
        elseif MyLevel == 1425 or MyLevel <= 1449 or _G.SelectMob == "Sea Soldier [Lv. 1425]" then -- Sea Soldier [Lv. 1425]
        Mon = "Sea Soldier"
            NameQuest = "ForgottenQuest"
            LevelQuest = 1
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
            CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
            LevelFarm = 21
        elseif MyLevel >= 1450 or _G.SelectMob == "Water Fighter [Lv. 1450]" then -- Water Fighter [Lv. 1450]
        Mon = "Water Fighter"
            NameQuest = "ForgottenQuest"
            LevelQuest = 2
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
            CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
            LevelFarm = 22
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 or _G.SelectMob == "Pirate Millionaire [Lv. 1500]" then
            Mon = "Pirate Millionaire"
            NameQuest = "PiratePortQuest"
            LevelQuest = 1
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
            LevelFarm = 1
        elseif MyLevel == 1525 or MyLevel <= 1574 or _G.SelectMob == "Pistol Billionaire [Lv. 1525]" then
            Mon = "Pistol Billionaire"
            NameQuest = "PiratePortQuest"
            LevelQuest = 2
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
            LevelFarm = 2
        elseif MyLevel == 1575 or MyLevel <= 1599 or _G.SelectMob == "Dragon Crew Warrior [Lv. 1575]" then
            Mon = "Dragon Crew Warrior"
            NameQuest = "AmazonQuest"
            LevelQuest = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
            LevelFarm = 3
        elseif MyLevel == 1600 or MyLevel <= 1624 or _G.SelectMob == "Dragon Crew Archer [Lv. 1600]" then
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
            LevelFarm = 4
        elseif MyLevel == 1625 or MyLevel <= 1649 or _G.SelectMob == "Female Islander [Lv. 1625]" then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
            LevelFarm = 5
        elseif MyLevel == 1650 or MyLevel <= 1699 or _G.SelectMob == "Giant Islander [Lv. 1650]" then
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
            LevelFarm = 6
        elseif MyLevel == 1700 or MyLevel <= 1724 or _G.SelectMob == "Marine Commodore [Lv. 1700]" then
            Mon = "Marine Commodore"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 1
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
            LevelFarm = 7
        elseif MyLevel == 1725 or MyLevel <= 1774 or _G.SelectMob == "Marine Rear Admiral [Lv. 1725]" then
            Mon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            NameMon = "Marine Rear Admiral"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
            LevelFarm = 8
        elseif MyLevel == 1775 or MyLevel <= 1799 or _G.SelectMob == "Fishman Raider [Lv. 1775]" then
            Mon = "Fishman Raider"
            NameQuest = "DeepForestIsland3"
            LevelQuest = 1
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
            LevelFarm = 9
        elseif MyLevel == 1800 or MyLevel <= 1824 or _G.SelectMob == "Fishman Captain [Lv. 1800]" then
            Mon = "Fishman Captain"
            NameQuest = "DeepForestIsland3"
            LevelQuest = 2
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
            LevelFarm = 10
        elseif MyLevel == 1825 or MyLevel <= 1849 or _G.SelectMob == "Forest Pirate [Lv. 1825]" then
            Mon = "Forest Pirate"
            NameQuest = "DeepForestIsland"
            LevelQuest = 1
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
            LevelFarm = 11
        elseif MyLevel == 1850 or MyLevel <= 1899 or _G.SelectMob == "Mythological Pirate [Lv. 1850]" then
            Mon = "Mythological Pirate"
            NameQuest = "DeepForestIsland"
            LevelQuest = 2
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
            LevelFarm = 12
        elseif MyLevel == 1900 or MyLevel <= 1924 or _G.SelectMob == "Jungle Pirate [Lv. 1900]" then
            Mon = "Jungle Pirate"
            NameQuest = "DeepForestIsland2"
            LevelQuest = 1
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
            LevelFarm = 13
        elseif MyLevel == 1925 or MyLevel <= 1974 or _G.SelectMob == "Musketeer Pirate [Lv. 1925]" then
            Mon = "Musketeer Pirate"
            NameQuest = "DeepForestIsland2"
            LevelQuest = 2
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
            LevelFarm = 14
        elseif MyLevel == 1975 or MyLevel <= 1999 or _G.SelectMob == "Reborn Skeleton [Lv. 1975]" then
            Mon = "Reborn Skeleton"
            NameQuest = "HauntedQuest1"
            LevelQuest = 1
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
            LevelFarm = 15
        elseif MyLevel == 2000 or MyLevel <= 2024 or _G.SelectMob == "Living Zombie [Lv. 2000]" then
            Mon = "Living Zombie"
            NameQuest = "HauntedQuest1"
            LevelQuest = 2
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
            LevelFarm = 16
        elseif MyLevel == 2025 or MyLevel <= 2049 or _G.SelectMob == "Demonic Soul [Lv. 2025]" then
            Mon = "Demonic Soul"
            NameQuest = "HauntedQuest2"
            LevelQuest = 1
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
            CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
            LevelFarm = 17
        elseif MyLevel == 2050 or MyLevel <= 2074 or _G.SelectMob == "Posessed Mummy [Lv. 2050]" then
            Mon = "Posessed Mummy" 
            NameQuest = "HauntedQuest2"
            LevelQuest = 2
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
            CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
            LevelFarm = 18
        elseif MyLevel == 2075 or MyLevel <= 2099 or _G.SelectMob == "Peanut Scout [Lv. 2075]" then
            Mon = "Peanut Scout"
            NameQuest = "NutsIslandQuest"
            LevelQuest = 1
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
            LevelFarm = 19
        elseif MyLevel == 2100 or MyLevel <= 2124 or _G.SelectMob == "Peanut President [Lv. 2100]" then
            Mon = "Peanut President"
            NameQuest = "NutsIslandQuest"
            LevelQuest = 2
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
            LevelFarm = 20
        elseif MyLevel == 2125 or MyLevel <= 2149 or _G.SelectMob == "Ice Cream Chef [Lv. 2125]" then
            Mon = "Ice Cream Chef"
            NameQuest = "IceCreamIslandQuest"
            LevelQuest = 1
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
            CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
            LevelFarm = 21
        elseif MyLevel == 2150 or MyLevel <= 2199 or _G.SelectMob == "Ice Cream Commander [Lv. 2150]" then
            Mon = "Ice Cream Commander"
            NameQuest = "IceCreamIslandQuest"
            LevelQuest = 2
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
            CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
            LevelFarm = 22
        elseif MyLevel == 2200 or MyLevel <= 2224 or _G.SelectMob == "Cookie Crafter [Lv. 2200]" then
            Mon = "Cookie Crafter"
            NameQuest = "CakeQuest1"
            LevelQuest = 1
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
            CFrameMon = CFrame.new(-2273.00244140625, 90.22590637207031, -12151.62109375)
            LevelFarm = 23
        elseif MyLevel == 2225 or MyLevel <= 2249 or _G.SelectMob == "Cake Guard [Lv. 2225]" then
            Mon = "Cake Guard"
            NameQuest = "CakeQuest1"
            LevelQuest = 2
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
            CFrameMon = CFrame.new(-1442.373046875, 158.14111328125, -12277.37109375)
            LevelFarm = 24
        elseif MyLevel == 2250 or MyLevel <= 2274 or _G.SelectMob == "Baking Staff [Lv. 2250]" then
            Mon = "Baking Staff"
            NameQuest = "CakeQuest2"
            LevelQuest = 1
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
            CFrameMon = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
            LevelFarm = 25
        elseif MyLevel == 2275 or MyLevel <= 2299 or _G.SelectMob == "Head Baker [Lv. 2275]" then
            Mon = "Head Baker"
            NameQuest = "CakeQuest2"
            LevelQuest = 2
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
            CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)
            LevelFarm = 26
        elseif MyLevel == 2300 or MyLevel <= 2324 or _G.SelectMob == "Cocoa Warrior [Lv. 2300]" then
            Mon = "Cocoa Warrior"
            NameQuest = "ChocQuest1"
            LevelQuest = 1
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            CFrameMon = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            LevelFarm = 27
        elseif MyLevel == 2325 or MyLevel <= 2349 or _G.SelectMob == "Chocolate Bar Battler [Lv. 2325]" then
            Mon = "Chocolate Bar Battler"
            NameQuest = "ChocQuest1"
            LevelQuest = 2
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            CFrameMon = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            LevelFarm = 28
        elseif MyLevel == 2350 or MyLevel <= 2374 or _G.SelectMob == "Sweet Thief [Lv. 2350]" then
            Mon = "Sweet Thief"
            NameQuest = "ChocQuest2"
            LevelQuest = 1
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            CFrameMon = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            LevelFarm = 29
        elseif MyLevel == 2375 or MyLevel <= 2399 or _G.SelectMob == "Candy Rebel [Lv. 2375]" then
            Mon = "Candy Rebel"
            NameQuest = "ChocQuest2"
            LevelQuest = 2
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            CFrameMon = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            LevelFarm = 30
        elseif MyLevel == 2400 or MyLevel <= 2424 or _G.SelectMob == "Candy Pirate [Lv. 2400]" then
            Mon = "Candy Pirate"
            NameQuest = "CandyQuest1"
            LevelQuest = 1
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1149.328, 16.5750427, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
            CFrameMon = CFrame.new(-1230.95032, 89.3472443, -14437.3379, -0.228816152, 9.6939317e-08, 0.973469675, 8.52869508e-09, 1, -9.75765531e-08, -0.973469675, -1.4024665e-08, -0.228816152)
            LevelFarm = 31
		elseif MyLevel == 2425 or MyLevel <= 2449 or _G.SelectMob == "Snow Demon [Lv. 2425]" then
            Mon = "Snow Demon"
            NameQuest = "CandyQuest1"
            LevelQuest = 2
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1149.328, 16.5750427, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
            CFrameMon = CFrame.new(-948.348083, 89.3464279, -14405.1602, -0.490399271, -1.11626353e-08, -0.871497869, -3.04060102e-08, 1, 4.30115676e-09, 0.871497869, 2.86080564e-08, -0.490399271)
            LevelFarm = 32
		elseif MyLevel == 2450 or MyLevel <= 2474 or _G.SelectMob == "Isle Outlaw [Lv. 2450]" then
            Mon = "Isle Outlaw"
            NameQuest = "TikiQuest1"
            LevelQuest = 1
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16543.6094, 55.6605682, -173.547287, -0.0976720527, 8.32636999e-08, 0.995218635, -3.72381024e-08, 1, -8.73183197e-08, -0.995218635, -4.55886138e-08, -0.0976720527)
            CFrameMon = CFrame.new(-16298.6201, 94.0417786, -171.398422, 0.979232192, -6.3381755e-08, -0.202742025, 5.44197363e-08, 1, -4.97785173e-08, 0.202742025, 3.77115583e-08, 0.979232192)
            LevelFarm = 33
		elseif MyLevel == 2475 or MyLevel <= 2499 or _G.SelectMob == "Island Boy [Lv. 2475]" then
            Mon = "Island Boy"
            NameQuest = "TikiQuest1"
            LevelQuest = 2
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16543.6094, 55.6605682, -173.547287, -0.0976720527, 8.32636999e-08, 0.995218635, -3.72381024e-08, 1, -8.73183197e-08, -0.995218635, -4.55886138e-08, -0.0976720527)
            CFrameMon = CFrame.new(-16820.5234, 94.2150803, -165.288879, 0.271069676, -7.73478348e-09, -0.96255976, -1.84899951e-09, 1, -8.55634319e-09, 0.96255976, 4.09913747e-09, 0.271069676)
            LevelFarm = 34
		elseif MyLevel == 2500 or MyLevel <= 2524 or _G.SelectMob == "Sun-kissed Warrior [Lv. 2500]" then
            Mon = "Sun-kissed Warrior"
            NameQuest = "TikiQuest2"
            LevelQuest = 1
            NameMon = "Sun-kissed Warrior"
            CFrameQuest = CFrame.new(-16535.4512, 55.6605415, 1051.60229, 0.00823832024, 2.28100419e-08, 0.999966085, 1.07816838e-07, 1, -2.36990747e-08, -0.999966085, 1.08008422e-07, 0.00823832024)
            CFrameMon = CFrame.new(-16464.9648, 126.315163, 1057.79553, -0.999545217, 1.54771485e-08, -0.0301560778, 1.33030991e-08, 1, 7.22938864e-08, 0.0301560778, 7.18598443e-08, -0.999545217)
            LevelFarm = 35
		elseif MyLevel >= 2525 or _G.SelectMob == "Isle Champion [Lv. 2525]" then
			Mon = "Isle Champion"
            NameQuest = "TikiQuest2"
            LevelQuest = 2
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16535.4512, 55.6605415, 1051.60229, 0.00823832024, 2.28100419e-08, 0.999966085, 1.07816838e-07, 1, -2.36990747e-08, -0.999966085, 1.08008422e-07, 0.00823832024)
            CFrameMon = CFrame.new(-16464.9648, 126.315163, 1057.79553, -0.999545217, 1.54771485e-08, -0.0301560778, 1.33030991e-08, 1, 7.22938864e-08, 0.0301560778, 7.18598443e-08, -0.999545217)
            LevelFarm = 36
        end
    end
end

function CheckBossQuest()
    if _G.SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
        MsBoss = "Saber Expert [Lv. 200] [Boss]"
        NameBoss = "Saber Expert"
        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
    elseif _G.SelectBoss == "The Saw [Lv. 100] [Boss]" then
        MsBoss = "The Saw [Lv. 100] [Boss]"
        NameBoss = "The Saw"
        CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
    elseif _G.SelectBoss == "Greybeard [Lv. 750] [Raid Boss]" then
        MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
        NameBoss = "Greybeard"
        CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
    elseif _G.SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
        MsBoss = "The Gorilla King [Lv. 25] [Boss]"
        NameBoss = "The Gorilla King"
        NameQuestBoss = "JungleQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
    elseif _G.SelectBoss == "Bobby [Lv. 55] [Boss]" then
        MsBoss = "Bobby [Lv. 55] [Boss]"
        NameBoss = "Bobby"
        NameQuestBoss = "BuggyQuest1"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
    elseif _G.SelectBoss == "Yeti [Lv. 110] [Boss]" then
        MsBoss = "Yeti [Lv. 110] [Boss]"
        NameBoss = "Yeti"
        NameQuestBoss = "SnowQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
        CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
    elseif _G.SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
        MsBoss = "Mob Leader [Lv. 120] [Boss]"
        NameBoss = "Mob Leader"
        CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
    elseif _G.SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
        MsBoss = "Vice Admiral [Lv. 130] [Boss]"
        NameBoss = "Vice Admiral"
        NameQuestBoss = "MarineQuest2"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
        CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
    elseif _G.SelectBoss == "Warden [Lv. 175] [Boss]" then
        MsBoss = "Warden [Lv. 175] [Boss]"
        NameBoss = "Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 1
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
        MsBoss = "Chief Warden [Lv. 200] [Boss]"
        NameBoss = "Chief Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.SelectBoss == "Swan [Lv. 225] [Boss]" then
        MsBoss = "Swan [Lv. 225] [Boss]"
        NameBoss = "Swan"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
        MsBoss = "Magma Admiral [Lv. 350] [Boss]"
        NameBoss = "Magma Admiral"
        NameQuestBoss = "MagmaQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
        CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
    elseif _G.SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
        MsBoss = "Fishman Lord [Lv. 425] [Boss]"
        NameBoss = "Fishman Lord"
        NameQuestBoss = "FishmanQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
    elseif _G.SelectBoss == "Wysper [Lv. 500] [Boss]" then
        MsBoss = "Wysper [Lv. 500] [Boss]"
        NameBoss = "Wysper"
        NameQuestBoss = "SkyExp1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
        CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
    elseif _G.SelectBoss == "Thunder God [Lv. 575] [Boss]" then
        MsBoss = "Thunder God [Lv. 575] [Boss]"
        NameBoss = "Thunder God"
        NameQuestBoss = "SkyExp2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
        CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
    elseif _G.SelectBoss == "Cyborg [Lv. 675] [Boss]" then
        MsBoss = "Cyborg [Lv. 675] [Boss]"
        NameBoss = "Cyborg"
        NameQuestBoss = "FountainQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
        CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
    -- New World
    elseif _G.SelectBoss == "Diamond [Lv. 750] [Boss]" then
        MsBoss = "Diamond [Lv. 750] [Boss]"
        NameBoss = "Diamond"
        NameQuestBoss = "Area1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
    elseif _G.SelectBoss == "Jeremy [Lv. 850] [Boss]" then
        MsBoss = "Jeremy [Lv. 850] [Boss]"
        NameBoss = "Jeremy"
        NameQuestBoss = "Area2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
    elseif _G.SelectBoss == "Fajita [Lv. 925] [Boss]" then
        MsBoss = "Fajita [Lv. 925] [Boss]"
        NameBoss = "Fajita"
        NameQuestBoss = "MarineQuest3"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
        CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
    elseif _G.SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
        MsBoss = "Don Swan [Lv. 1000] [Boss]"
        NameBoss = "Don Swan"
        CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
    elseif _G.SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
        MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
        NameBoss = "Smoke Admiral"
        NameQuestBoss = "IceSideQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
    elseif _G.SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
        MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
        NameBoss = "Cursed Captain"
        CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
    elseif _G.SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
        MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
        NameBoss = "Darkbeard"
        CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
    elseif _G.SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
        MsBoss = "Order [Lv. 1250] [Raid Boss]"
        NameBoss = "Order"
        CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
    elseif _G.SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
        MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
        NameBoss = "Awakened Ice Admiral"
        NameQuestBoss = "FrostQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
    elseif _G.SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
        MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
         NameBoss = "Tide Keeper"
        NameQuestBoss = "ForgottenQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
    -- Thire World
    elseif _G.SelectBoss == "Stone [Lv. 1550] [Boss]" then
        MsBoss = "Stone [Lv. 1550] [Boss]"
        NameBoss = "Stone"
        NameQuestBoss = "PiratePortQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-290, 44, 5577)
        CFrameBoss = CFrame.new(-1085, 40, 6779)
    elseif _G.SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
        MsBoss = "Island Empress [Lv. 1675] [Boss]"
         NameBoss = "Island Empress"
        NameQuestBoss = "AmazonQuest2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5443, 602, 752)
        CFrameBoss = CFrame.new(5659, 602, 244)
    elseif _G.SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
        MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
        NameBoss = "Kilo Admiral"
        NameQuestBoss = "MarineTreeIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
        CFrameBoss =CFrame.new(2846, 433, -7100)
    elseif _G.SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
        MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
        NameBoss = "Captain Elephant"
        NameQuestBoss = "DeepForestIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
        CFrameBoss = CFrame.new(-13221, 325, -8405)
    elseif _G.SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
        MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
        NameBoss = "Beautiful Pirate"
        NameQuestBoss = "DeepForestIsland2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
        CFrameBoss = CFrame.new(5182, 23, -20)
    elseif _G.SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then
        MsBoss = "Cake Queen [Lv. 2175] [Boss]"
        NameBoss = "Cake Queen"
        NameQuestBoss = "IceCreamIslandQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-716, 382, -11010)
        CFrameBoss = CFrame.new(-821, 66, -10965)
    elseif _G.SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
        MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
        NameBoss = "rip_indra True Form"
        CFrameBoss = CFrame.new(-5359, 424, -2735)
    elseif _G.SelectBoss == "Longma [Lv. 2000] [Boss]" then
        MsBoss = "Longma [Lv. 2000] [Boss]"
        NameBoss = "Longma"
        CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
    elseif _G.SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
        MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
        NameBoss = "Soul Reaper"
        CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
    end
end

function CheckNotifyComplete()
for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications"):GetChildren()) do
if v.Name == "NotificationTemplate" then
if string.lower(v.Text):find("quest completed") then
    pcall(function()
        v:Destroy()
    end)
    return true
end
end
end
return false
end
        
        function Hop()
            local PlaceID = game.PlaceId
            local AllIDs = {}
            local foundAnything = ""
            local actualHour = os.date("!*t").hour
            local Deleted = false
            function TPReturner()
                local Site;
                if foundAnything == "" then
                    Site = game.HttpService:JSONDecode(game:HttpGetAsync('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                else
                    Site = game.HttpService:JSONDecode(game:HttpGetAsync('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                end
                local ID = ""
                if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                    foundAnything = Site.nextPageCursor
                end
                local num = 0;
                for i,v in pairs(Site.data) do
                    local Possible = true
                    ID = tostring(v.id)
                    if tonumber(v.maxPlayers) > tonumber(v.playing) then
                        for _,Existing in pairs(AllIDs) do
                            if num ~= 0 then
                                if ID == tostring(Existing) then
                                    Possible = false
                                end
                            else
                                if tonumber(actualHour) ~= tonumber(Existing) then
                                    local delFile = pcall(function()
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
                                wait()
                                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                            end)
                            wait(4)
                        end
                    end
                end
            end
            function Teleport() 
                while wait() do
                    pcall(function()
                        TPReturner()
                        if foundAnything ~= "" then
                            TPReturner()
                        end
                    end)
                end
            end
            Teleport()
        end                   
        
        function isnil(thing)
            return (thing == nil)
        end
        local function round(n)
            return math.floor(tonumber(n) + 0.5)
        end
        
        function InfAb()
            if InfAbility then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                    local inf = Instance.new("ParticleEmitter")
                    inf.Acceleration = Vector3.new(0,0,0)
                    inf.Archivable = true
                    inf.Drag = 20
                    inf.EmissionDirection = Enum.NormalId.Top
                    inf.Enabled = true
                    inf.Lifetime = NumberRange.new(0.2,0.2)
                    inf.LightInfluence = 0
                    inf.LockedToPart = true
                    inf.Name = "Agility"
                    inf.Rate = 500
                    local numberKeypoints2 = {
                        NumberSequenceKeypoint.new(0, 0);
                        NumberSequenceKeypoint.new(1, 4); 
                    }
                    inf.Size = NumberSequence.new(numberKeypoints2)
                    inf.RotSpeed = NumberRange.new(999, 9999)
                    inf.Rotation = NumberRange.new(0, 0)
                    inf.Speed = NumberRange.new(200, 200)
                    inf.SpreadAngle = Vector2.new(360,360)
                    inf.Texture = "rbxassetid://7157487174"
                    inf.VelocityInheritance = 0
                    inf.ZOffset = 2
                    inf.Transparency = NumberSequence.new(1)
                    inf.Color = ColorSequence.new(Color3.fromRGB(80,245,245),Color3.fromRGB(80,245,245))
                    inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                end
            else
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
                end
            end
        end
        
        local LocalPlayer = game:GetService'Players'.LocalPlayer
        local originalstam = LocalPlayer.Character.Energy.Value
        function infinitestam()
            LocalPlayer.Character.Energy.Changed:connect(function()
                if InfiniteEnergy then
                    LocalPlayer.Character.Energy.Value = originalstam
                end 
            end)
        end
        
        spawn(function()
            pcall(function()
                while wait(.1) do
                    if InfiniteEnergy then
                        wait(0.3)
                        originalstam = LocalPlayer.Character.Energy.Value
                        infinitestam()
                    end
                end
            end)
        end)
        
        function NoDodgeCool()
            if nododgecool then
                for i,v in next, getgc() do
                    if game:GetService("Players").LocalPlayer.Character.Dodge then
                        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                            for i2,v2 in next, getupvalues(v) do
                                if tostring(v2) == "0.4" then
                                repeat wait(.1)
                                    setupvalue(v,i2,0)
                                until not nododgecool
                                end
                            end
                        end
                    end
                end
            end
        end

        local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
        local CombatFrameworkR = getupvalues(CombatFramework)[2]
        local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
        local RigControllerR = getupvalues(RigController)[2]
        
        function CurrentWeapon()
            local ac = CombatFrameworkR.activeController
            local ret = ac.blades[1]
            if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
            pcall(function()
                while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
            end)
            if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
            return ret
        end
        
        function getAllBladeHitsPlayers(Sizes)
            local Hits = {}
            local Client = game.Players.LocalPlayer
            local Characters = game:GetService("Workspace").Characters:GetChildren()
            for i=1,#Characters do local v = Characters[i]
                local Human = v:FindFirstChildOfClass("Humanoid")
                if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
                    table.insert(Hits,Human.RootPart)
                end
            end
            return Hits
        end
        
        function getAllBladeHits(Sizes)
            local Hits = {}
            local Client = game.Players.LocalPlayer
            local Enemies = game:GetService("Workspace").Enemies:GetChildren()
            for i=1,#Enemies do local v = Enemies[i]
                local Human = v:FindFirstChildOfClass("Humanoid")
                if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
                    table.insert(Hits,Human.RootPart)
                end
            end
            return Hits
        end
        
        function DamageAura()
            local ac = CombatFrameworkR.activeController
            if ac and ac.equipped then
                for indexincrement = 1, 1 do
                    local bladehit = getAllBladeHits(150) local a = getAllBladeHitsPlayers(150)
                    if #bladehit or #a > 0 then
                        local AcAttack8 = debug.getupvalue(ac.attack, 5)
                        local AcAttack9 = debug.getupvalue(ac.attack, 6)
                        local AcAttack7 = debug.getupvalue(ac.attack, 4)
                        local AcAttack10 = debug.getupvalue(ac.attack, 7)
                        local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
                        local NumberAc13 = AcAttack7 * 798405
                        (function()
                            NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
                            AcAttack8 = math.floor(NumberAc12 / AcAttack9)
                            AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
                        end)()
                        AcAttack10 = AcAttack10 + 1
                        debug.setupvalue(ac.attack, 5, AcAttack8)
                        debug.setupvalue(ac.attack, 6, AcAttack9)
                        debug.setupvalue(ac.attack, 4, AcAttack7)
                        debug.setupvalue(ac.attack, 7, AcAttack10)
                        for k, v in pairs(ac.animator.anims.basic) do
                            v:Play(0.01,0.01,0.01)
                        end                 
                        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
                            game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "") 
                        end
                    end
                end
            end
        end

        function AttackFunction()
            local ac = CombatFrameworkR.activeController
            if ac and ac.equipped then
                for indexincrement = 1, 1 do
                    local bladehit = getAllBladeHits(60)
                    if #bladehit > 0 then
                        local AcAttack8 = debug.getupvalue(ac.attack, 5)
                        local AcAttack9 = debug.getupvalue(ac.attack, 6)
                        local AcAttack7 = debug.getupvalue(ac.attack, 4)
                        local AcAttack10 = debug.getupvalue(ac.attack, 7)
                        local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
                        local NumberAc13 = AcAttack7 * 798405
                        (function()
                            NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
                            AcAttack8 = math.floor(NumberAc12 / AcAttack9)
                            AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
                        end)()
                        AcAttack10 = AcAttack10 + 1 
                        debug.setupvalue(ac.attack, 5, AcAttack8)
                        debug.setupvalue(ac.attack, 6, AcAttack9)
                        debug.setupvalue(ac.attack, 4, AcAttack7)
                        debug.setupvalue(ac.attack, 7, AcAttack10)
                        for k, v in pairs(ac.animator.anims.basic) do
                            v:Play(0.01,0.01,0.01)
                        end                 
                        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
                            game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "")
                        end
                    end
                end
            end
        end
    
function Click()
wait(AttackDelay)
AttackFunction()
end   

        function AutoHaki()
            if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
        end
        
        function UnEquipWeapon(Weapon)
            if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
                _G.NotAutoEquip = true
                wait(.5)
                game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
                wait(.1)
                _G.NotAutoEquip = false
            end
        end
        
        function EquipWeapon(ToolSe)
            if not _G.NotAutoEquip then
                if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                    Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                    wait(.1)
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
                end
            end
        end
        
        function GetDistance(target)
            return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
        end

        spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoAdvanceDungeon or _G.Frozen or _G.AutoEvent or _G.AutoCollectEmber or _G.Kitsune or AutoSecondSea or _G.AutoLeviathan or _G.AutoFarmLevelReal or _G.AutoPrince or _G.AutoPrince or _G.Auto_DungeonMobAura or _G.Auto_Farm_Chest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.KillSelectedPlayer or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or AutoSoulGuitar or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.MaterialFarmm or _G.AutoKing or _G.AutoDarkBeard or _G.AutoFarmBoss or getgenv().Chest or Auto_Dark_Coat or _G.AutoChalice or AutoMobAura or _G.AutoNevaSoulGuitar or _G.AutoCdk or _G.AutoFactory or _G.Mirage or _G.Next or _G.TeleportNPC or _G.Auto_Bone or _G.AutoPlayerHunter or _G.Auto_Farm_Heart or _G.FarmPirateRaid or _G.AutoTrain or _G.SeaBeast or _G.AutoFarmDungeon or AutoFarmChest or _G.Auto_Farm_Bone == true then
                        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                            local Noclip = Instance.new("BodyVelocity")
                            Noclip.Name = "BodyClip"
                            Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                            Noclip.MaxForce = Vector3.new(100000,100000,100000)
                            Noclip.Velocity = Vector3.new(0,0,0)
                        end
                    end
                end
            end)
        end)
        
        spawn(function()
            pcall(function()
                game:GetService("RunService").Stepped:Connect(function()
                    if _G.AutoAdvanceDungeon or _G.Frozen or _G.AutoEvent or _G.AutoCollectEmber or _G.Kitsune or AutoSecondSea or _G.AutoLeviathan or _G.AutoFarmLevelReal or _G.AutoPrince or _G.AutoPrince or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.KillSelectedPlayer or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or AutoSoulGuitar or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.MaterialFarmm or _G.AutoKing or _G.AutoDarkBeard or _G.AutoFarmBoss or getgenv().Chest or Auto_Dark_Coat or _G.AutoChalice or AutoMobAura or _G.AutoNevaSoulGuitar or _G.AutoCdk or _G.AutoFactory or _G.Mirage or _G.Next or _G.TeleportNPC or _G.Auto_Bone or _G.AutoPlayerHunter or _G.Auto_Farm_Heart or _G.FarmPirateRaid or _G.AutoTrain or _G.SeaBeast or _G.AutoFarmDungeon or AutoFarmChest or _G.Auto_Farm_Bone == true then
                        for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false    
                            end
                        end
                    end
                end)
            end)
        end)
        
        spawn(function()
            while wait() do
                if _G.AutoPrince or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.KillSelectedPlayer or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.MaterialFarmm or _G.AutoKing or AutoMobAura or _G.Auto_Bone == true then
                    pcall(function()
                        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                    end)
                end    
            end
        end)
        
        function StopTween(target)
            if not target then
                _G.StopTween = true
                wait()
                TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
                _G.StopTween = false
                _G.Clip = false
            end
        end
        
        spawn(function()
            pcall(function()
                while wait() do
                    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                        if v:IsA("Tool") then
                            if v:FindFirstChild("RemoteFunctionShoot") then 
                                SelectWeaponGun = v.Name
                            end
                        end
                    end
                end
            end)
        end)
        
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
        
        local ScreenGui = Instance.new("ScreenGui")
        local Toggle = Instance.new("TextButton")
        
        ScreenGui.Name = "ScreenGui"
        ScreenGui.Parent = game.CoreGui
        
        function TP(P1)
            Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance < 250 then
                Speed = 500
            elseif Distance < 500 then
                Speed = 400
            elseif Distance < 1000 then
                Speed = 350
            elseif Distance >= 1000 then
                Speed = 300
            end
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                {CFrame = P1}
            ):Play()
        end
        
        function TP2(P1)
            Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance < 1000 then
                Speed = 500
            elseif Distance >= 1000 then
                Speed = 250
            end
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                {CFrame = P1}
            ):Play()
            Clip = true
            wait(Distance/Speed)
            Clip = false
        end
        
local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
spawn(function()
    while wait() do
        if _G.Aimbot_Skill_Fov then
            pcall(function()
                local MaxDist, Closest = math.huge
                for i,v in pairs(game:GetService("Players"):GetChildren()) do 
                    local Head = v.Character:FindFirstChild("HumanoidRootPart")
                    local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
                    local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
                    local Dist = (TheirPos - MousePos).Magnitude
                    if Dist < MaxDist and v.Name ~= game.Players.LocalPlayer.Name then
                        MaxDist = Dist
                        _G.Aim_Players = v
                    end
                end
            end)
        end
    end
end)

spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.Aimbot_Skill_Fov then
                        args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

function BTP(P1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
wait(0.1)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end

function InMyNetWork(object)
if isnetworkowner then
return isnetworkowner(object)
else
if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
return true
end
return false
end
end

task.spawn(function()
while task.wait() do
pcall(function()
if StartMagnet2 then
    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
            if InMyNetWork(v.HumanoidRootPart) then
                v.HumanoidRootPart.CFrame = PosMon
                v.Humanoid.JumpPower = 0
                v.Humanoid.WalkSpeed = 0
                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                v.HumanoidRootPart.Transparency = 1
                v.HumanoidRootPart.CanCollide = false
                v.Head.CanCollide = false
                if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                end
                v.Humanoid:ChangeState(11)
                v.Humanoid:ChangeState(14)
            end
        end
    end
end
end)
end
end)

spawn(function()
local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
local method = getnamecallmethod()
local args = {...}
if tostring(method) == "FireServer" then
if tostring(args[1]) == "RemoteEvent" then
    if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
        if _G.UseSkill then
            if type(args[2]) == "vector" then
                args[2] = PositionSkillMasteryDevilFruit
            else
                args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
            end
            return old(unpack(args))
        end
    end
end
end
--return args
return old(...)
end)
end)

spawn(function()
while task.wait(.1) do
if _G.UseSkill then
pcall(function()
    if _G.UseSkill then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                repeat game:GetService("RunService").Heartbeat:wait()
                    EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                    TP(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit
                        local DevilFruitMastery = game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value
                        if _G.SkillZ and DevilFruitMastery >= 1 then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                            wait(.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                        end
                        if _G.SkillX and DevilFruitMastery >= 1 then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                            wait(.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                        end
                        if _G.SkillC and DevilFruitMastery >= 1 then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                            wait(.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                        end
                        if _G.SkillV and DevilFruitMastery >= 1 then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                            wait(.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                        end
                        if _G.SkillF and DevilFruitMastery >= 1 then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                            wait(.1)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                        end
                    end
                until not _G.AutoFarm or not _G.UseSkill or v.Humanoid.Health == 0
            end
        end
    end
end)
end
end
end)

task.spawn(function()
while task.wait() do
if _G.BringMobs then
pcall(function()
    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v.Name == MonFarm and StartFruitMagnet and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
            if InMyNetWork(v.HumanoidRootPart) then
                v.HumanoidRootPart.CFrame = FarmPos
                v.Humanoid.JumpPower = 0
                v.Humanoid.WalkSpeed = 0
                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                v.HumanoidRootPart.CanCollide = false
                v.Head.CanCollide = false
                --v.Humanoid:ChangeState(11)
                --v.Humanoid:ChangeState(14)
                if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                end
            end
        end
    end
end)
end
end
end)

        -- [Bring Mob]
        
        task.spawn(function()
            while true do wait()
                if setscriptable then
                    setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                end
                if sethiddenproperty then
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end
            end
        end)
        
        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if FastFarmMagnet or StartMagnet then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
                                if InMyNetWork(v.HumanoidRootPart) then
                                    v.HumanoidRootPart.CFrame = PosMon
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                end
                            end
                        end
                    end
                end)
            end
        end)
                
                spawn(function()
                    while task.wait() do
                        pcall(function()
                            if _G.BringMobs then
                                CheckQuest()
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = PosMon
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = PosMon
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    end
                                    if _G.MaterialFarmm and StartEctoplasmMagnet then
                                        if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= 350 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CFrame = EctoplasmMon
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.AutoRengoku and StartRengokuMagnet then
                                        if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = RengokuMon
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.AutoFarm and FastFarmMagnet then
                                        if (v.Name == "God's Guard" or v.Name == "Galley Captain" or v.Name == "Galley Pirate") and (v.HumanoidRootPart.Position - FastFarmMon.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = FastFarmMon
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                                        if v.Name == "Forest Pirate" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = MusketeerHatMon
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.Auto_EvoRace and StartEvoMagnet then
                                        if v.Name == "Zombie" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosMonEvo
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.AutoBartilo and AutoBartiloBring then
                                        if v.Name == "Swan Pirate" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosMonBarto
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                                        if v.Name == "Monkey" then
                                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            end
                                        elseif v.Name == "Factory Staff" then
                                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            end
                                        elseif v.Name == Mon then
                                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            end
                                        end
                                    end
                                    if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                                        if v.Name == "Monkey" then
                                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            end
                                        elseif v.Name == "Factory Staff" then
                                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            end
                                        elseif v.Name == Mon then
                                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.Humanoid:ChangeState(14)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            end
                                        end
                                    end
                                    if _G.MaterialFarmm and MagnetConjured then
                                        if (v.Name == "Cocoa Warrior") and (v.HumanoidRootPart.Position - POSCON.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = POSCON
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.MaterialFarmm and MagnetScale then
                                        if (v.Name == "Dragon Crew Archer") and (v.HumanoidRootPart.Position - POSSC.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = POSSC
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.MaterialFarmm and MagnetFish then
                                        if (v.Name == "Fishman Raider") and (v.HumanoidRootPart.Position - POSFT.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = POSFT
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.MaterialFarmm and MagnetDroplet then
                                        if (v.Name == "Water Fighter") and (v.HumanoidRootPart.Position - POSMP.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = POSMD
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.MaterialFarmm and MagnetOre then
                                        if (v.Name == "Magma Ninja") and (v.HumanoidRootPart.Position - POSMO.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = POSMO
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.MaterialFarmm and MagnetPirate then
                                        if (v.Name == "Jungle Pirate") and (v.HumanoidRootPart.Position - POSJT.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = POSJP
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.MaterialFarmm and MagnetTusk then
                                        if (v.Name == "Mythological Pirate") and (v.HumanoidRootPart.Position - POSMT.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = POSMP
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.MaterialFarmm and MagnetPowder then
                                        if (v.Name == "Pistol Billionaire") and (v.HumanoidRootPart.Position - POSPB.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = POSPB
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.MaterialFarmm and MagnetDemonic then
                                        if (v.Name == "Demonic Soul") and (v.HumanoidRootPart.Position - POSDS.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = POSDS
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.MaterialFarmm and MagnetStaff then
                                        if (v.Name == "Factory Staff") and (v.HumanoidRootPart.Position - POSFS.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = POSFS
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.MaterialFarmm and MagnetVampire then
                                        if (v.Name == "Vampire") and (v.HumanoidRootPart.Position - POSV.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = POSV
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.Auto_Bone and StartMagnetBoneMon then
                                        if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosMonBone
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.AutoPrince and MagnetDought then
                                        if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.AutoKing and MagnetKing then
                                        if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                    if _G.AutoCandy and StartMagnetCandy then
                                        if (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CFrame = PosMonCandy
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end)

spawn(function()
    game:GetService('RunService').Stepped:Connect(function()
        if _G.Remove_EffectDeath1 then
            for i, v in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
                if v.Name == "Death" then
                    v:Destroy() 
                end
            end
        end
    end)
end)


spawn(function()
game:GetService('RunService').Stepped:Connect(function()
    if _G.Remove_Effect1 then
        for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
            if v.Name == "CurvedRing" or v.Name == "SwordSlash" or v.Name == "SlashHit" then--or v.Name == "SlashHit"
                v:Destroy() 
            end
        end
    end
end)
end)

function CameraShaker()
    task.spawn(function()
        local Camera = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
        while wait() do
            pcall(function()
                if _G.CameraShaker1 then
                    Camera.CameraShakeInstance.CameraShakeState.Inactive = 0
                else
                    Camera.CameraShakeInstance.CameraShakeState.Inactive = 3
                end
            end)
        end
    end)
end

   require(game.ReplicatedStorage.Util.CameraShaker):Stop()
   
   xShadowFastAttackx = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
   
   xShadowx = debug.getupvalues(xShadowFastAttackx)[2]
   
   spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
           if _G.FastAttack then
               if typeof(xShadowx) == "table" then
                   pcall(function()
                       xShadowx.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                       xShadowx.activeController.timeToNextAttack = 0
                       if _G.Hitbox then
                       xShadowx.activeController.hitboxMagnitude = 50
                       end
                       xShadowx.activeController.active = false
                       xShadowx.activeController.timeToNextBlock = 0
                       xShadowx.activeController.focusStart = 0
                       xShadowx.activeController.increment = 4
                       xShadowx.activeController.blocking = false
                       xShadowx.activeController.attacking = false
                       xShadowx.activeController.humanoid.AutoRotate = 50
                   end)
               end
           end
       end)
   end)  
   
   spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.AutoFarm and StartMagnetSun and (v.Name == "Sun-kissed Warrior") and (v.HumanoidRootPart.Position - PosMonSun.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = PosMonSun
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.AutoFarm and StartMagnetIsle and (v.Name == "Isle Champion") and (v.HumanoidRootPart.Position - PosMonIsle.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = PosMonIsle
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)
   
   spawn(function()
    while task.wait() do
        if _G.AutoFarm then
            if _G.SelectMode == "Normal Mode" then
            if World3 and game.Players.LocalPlayer.Data.Level.Value >= 2500 and game.Players.LocalPlayer.Data.Level.Value <= 2524 and _G.SelectMode == "Normal Mode" and _G.SelectMob == "Level Farming Mode" or _G.SelectMob == "Sun-kissed Warrior [Lv. 2500]" then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Sun-kissed Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Sun-kissed Warrior [Lv. 2500]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == "Sun-kissed Warrior" or v.Name == "Sun-kissed Warrior [Lv. 2500]" then
                                repeat game:GetService("RunService").Heartbeat:wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    PosMonSun = v.HumanoidRootPart.CFrame
                                    StartMagnetSun = true
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                    Click()
                                until not _G.AutoFarm or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) or game:GetService("ReplicatedStorage"):FindFirstChild(Mon)
                                end
                            end
                        end
                        else
                            StartMagnetSun = false
                            TP(CFrame.new(-16464.9648, 126.315163, 1057.79553, -0.999545217, 1.54771485e-08, -0.0301560778, 1.33030991e-08, 1, 7.22938864e-08, 0.0301560778, 7.18598443e-08, -0.999545217))
                        end
                    else
                        local args = {
                            [1] = "StartQuest",
                            [2] = "TikiQuest2",
                            [3] = 1
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                    end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 0 and game.Players.LocalPlayer.Data.Level.Value <= 80 then
                local x2Code = {
                    "TY_FOR_WATCHING",
                    "GAMER_ROBOT_1M ",
                    "Enyu_is_Pro",
                    "Magicbus",
                    "Sub2Fer999",
                    "Starcodeheo",
                    "JCWK",
                    "KittGaming",
                    "Bluxxy",
                    "Sub2OfficialNoobie",
                    "TheGreatAce",
                    "Axiore",
                    "Sub2Daigrock",
                    "TantaiGaming",
                    "StrawHatMaine",
                    "SUB2GAMERROBOT_EXP1",
                    "3BVISITS",
                    "UPD16",
                    "FUDD10",
                    "BIGNEWS",
                    "THEGREATACE",
                    "SUB2GAMERROBOT_EXP1",
                    "StrawHatMaine",
                    "Sub2OfficialNoobie",
                    "SUB2NOOBMASTER123",
                    "Sub2Daigrock",
                    "Axiore",
                    "TantaiGaming",
                    "STRAWHATMAINE"
                }
            _G.Auto_Stats_Kaitun = true
            function RedeemCode(value)
                game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
            end
            for i,v in pairs(x2Code) do
                RedeemCode(v)
            end
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "God's Guard" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        FastFarmMagnet = true
                                        FastFarmMon = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        Click()
                                    until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        FastFarmMagnet = false
                        _G.Auto_Stats_Kaitun = false
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "God's Guard" then
                                TP(v.HumanoidRootPart.CFrame * PositionFarm)
                            end
                        end
                        if not game:GetService("Workspace").Enemies:FindFirstChild("God's Guard") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                            wait(2)
                            TP(CFrame.new(-4625.93408, 867.257629, -1940.13538, -0.454333842, -0.0788073093, 0.887338758, 0.0354527347, 0.99369067, 0.106405184, -0.890125751, 0.0798020512, -0.448673308))
                        end
                    end
                end)
            elseif game.Players.LocalPlayer.Data.Level.Value >= 80 and game.Players.LocalPlayer.Data.Level.Value <= 125 then
                local x2Code = {
                    "TY_FOR_WATCHING",
                    "GAMER_ROBOT_1M ",
                    "Enyu_is_Pro",
                    "Magicbus",
                    "Sub2Fer999",
                    "Starcodeheo",
                    "JCWK",
                    "KittGaming",
                    "Bluxxy",
                    "Sub2OfficialNoobie",
                    "TheGreatAce",
                    "Axiore",
                    "Sub2Daigrock",
                    "TantaiGaming",
                    "StrawHatMaine",
                    "SUB2GAMERROBOT_EXP1",
                    "3BVISITS",
                    "UPD16",
                    "FUDD10",
                    "BIGNEWS",
                    "THEGREATACE",
                    "SUB2GAMERROBOT_EXP1",
                    "StrawHatMaine",
                    "Sub2OfficialNoobie",
                    "SUB2NOOBMASTER123",
                    "Sub2Daigrock",
                    "Axiore",
                    "TantaiGaming",
                    "STRAWHATMAINE"
                }
            _G.Auto_Stats_Kaitun = true
            function RedeemCode(value)
                game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
            end
            for i,v in pairs(x2Code) do
                RedeemCode(v)
            end
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") or game:GetService("Workspace").Enemies:FindFirstChild("Galley Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Galley Captain" or v.Name == "Galley Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        FastFarmMagnet = true
                                        FastFarmMon = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        Click()
                                    until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        FastFarmMagnet = false
                        _G.Auto_Stats_Kaitun = false
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Galley Captain" or v.Name == "Galley Pirate" then
                                TP(v.HumanoidRootPart.CFrame * PositionFarm)
                            end
                        end
                    if not game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") and not game:GetService("Workspace").Enemies:FindFirstChild("Galley Pirate") then
                        TP(CFrame.new(5387.88867, 47.2360687, 4090.2915, 0.218222544, 0, -0.975899041, -0, 1, -0, 0.975899041, 0, 0.218222544))
                    end
                    end
                end)
            else
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        StartMagnet2 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMagnet2 = false
                        CheckQuest()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 375 and game:GetService("Players").LocalPlayer.Data.Level.Value <= 399 or _G.SelectMob == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                        wait(2)
                        TP(CFrameQuest)
                        elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 400 and game:GetService("Players").LocalPlayer.Data.Level.Value <= 449 or _G.SelectMob == "Fishman Commando [Lv. 400]" then -- Fishman Commando
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                        wait(2)
                        TP(CFrameQuest)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
                        TP(CFrameQuest)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 2000 then
                        TP(CFrameQuest)
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 250 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        end
                        end
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 750 then
                            wait(1.2)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                            wait(0.5)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()                                            
                                                PosMon = v.HumanoidRootPart.CFrame
                                                TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                StartMagnet2 = true
                                                Click()
                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartMagnet2 = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            StartMagnet2 = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                TP(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                            else	
                                if _G.KillExtra == true then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name and v:FindFirstChild("Humanoid") then
                                    if v.Humanoid.Health > 0 then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 400 then
                                    repeat game:GetService("RunService").Heartbeat:wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                     [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                   v.HumanoidRootPart.CanCollide = false
                                   v.Humanoid.WalkSpeed = 0
                                   v.Head.CanCollide = false
                                   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                   TP(v.HumanoidRootPart.CFrame * CFrame.new(5,10,6))
                                   Click()
                                   StartMagnet2 = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    until not _G.AutoFarm or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) or game:GetService("ReplicatedStorage"):FindFirstChild(Mon)
                                    end
                                  end
                                end
                                end
                                end
                                TP(CFrameMon)
                            end
                        end
                    end
                end)
            end
        elseif _G.SelectMode == "Fruit Mastery Mode" then
            pcall(function()
                CheckQuest()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
                            BTP(CFrameQuest)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 2000 then
                            TP(CFrameQuest)
                        end
                    else
                        TP(CFrameQuest)
                    end
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            if v.Name == Mon then
                                repeat game:GetService("RunService").Heartbeat:wait()
                                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                                        _G.UseSkill = true
                                        StartFruitMagnet = true
                                    else
                                        _G.UseSkill = false
                                        StartFruitMagnet = true
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                    end
                                until not _G.AutoFarm or not v.Parent or v.Humanoid.Health == 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                _G.UseSkill = false
                            end
                        end
                    end
                    _G.UseSkill = false
                    TP(CFrameMon)
                end
            end)
        elseif _G.SelectMode == "Gun Mastery Mode" then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    CheckQuest()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
                            BTP(CFrameQuest)
                            wait(5)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 2000 then
                            TP(CFrameQuest)
                        end
                    else
                    TP(CFrameQuest)
                    end
                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Mon then
                                repeat wait()
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMin = v.Humanoid.MaxHealth * _G.Kill_At/100
                                        if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                            AutoHaki()
                                            EquipWeapon(SelectWeaponGun)
                                            v.HumanoidRootPart.CanCollide = false
                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                            UseGun = true
                                            game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                        else
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                            UseGun = false
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                        end
                                        PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                    else
                                        UseGun = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                until v.Humanoid.Health <= 0 or _G.AutoFarm == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                UseGun = false
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else	
                            TP(CFrameMon)
                        end
                    end 
                end
            end)
elseif _G.SelectMode == "Nearest Mode" then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name and v:FindFirstChild("Humanoid") then
  if v.Humanoid.Health > 0 then
  repeat game:GetService("RunService").Heartbeat:wait()
  EquipWeapon(_G.SelectWeapon)
  if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
  local args = {
   [1] = "Buso"
  }
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  end
  PosMon = v.HumanoidRootPart.CFrame
 v.HumanoidRootPart.CanCollide = false
 v.Humanoid.WalkSpeed = 0
 v.Head.CanCollide = false
 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
 StartMagnet = true
 TP(v.HumanoidRootPart.CFrame * CFrame.new(5,10,6))
 Click()
  NearFarmMagnet = true
  PosMon = v.HumanoidRootPart.CFrame
  until not _G.AutoFarm or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
  end
        end
    end
end
end
end
end)

local SuperFastMode = true
local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]
function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end
function AttackNoCD() 
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
            end
        end
    end
end
local cac
if SuperFastMode then 
    cac=task.wait
else
    cac=wait
end
-- LIBRARY
UiSize = UDim2.fromOffset(600, 350)

local Window = Fluent:CreateWindow({
    Title = "Raito Hub " .. Fluent.Version,
    SubTitle = "| discord.gg/raitohub",
    TabWidth = 160,
    Size = UiSize,
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.Delete
})

local Tabs = {
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    Main = Window:AddTab({ Title = "Home", Icon = "home" }),
    Combat = Window:AddTab({ Title = "Combat", Icon = "swords" }),
    Stats = Window:AddTab({ Title = "Stats", Icon = "bar-chart" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "map-pin" }),
    Dungeon = Window:AddTab({ Title = "Dungeon", Icon = "skull" }),
    Fruit = Window:AddTab({ Title = "Devil Fruit", Icon = "apple" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    Misc = Window:AddTab({ Title = "Others", Icon = "library" }),
    UiSettings = Window:AddTab({ Title = "Ui Settings", Icon = "paintbrush" })
}

local Options = Fluent.Options

do
    -- SETTINGS TAB
    local Status = Tabs.Settings:AddParagraph({
        Title = "Status",
        Content = "0:0:0 Client Time | 60 Fps | 100 Ping"
    })

    function UpdateStats()
        local GameTime = math.floor(workspace.DistributedGameTime+0.5)
        local Hour = math.floor(GameTime/(60^2))%24
        local Minute = math.floor(GameTime/(60^1))%60
        local Second = math.floor(GameTime/(60^0))%60
        local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local Fps = workspace:GetRealPhysicsFPS()
        local timestamp = tostring(os.date("%X")):sub(1, os.date("%X"):len()-3)
        Status:SetTitle("Status "..timestamp.." | Blox Fruits Update 20")
        Status:SetDesc("Hours : "..Hour.." Minutes : "..Minute.." Seconds : "..Second.." | Fps : "..Fps.." | Ping : "..Ping)
    end
    
    spawn(function()
        while task.wait(1) do
            pcall(function()
                UpdateStats()
            end)
        end
    end)

    local Toggle = Tabs.Settings:AddToggle("ResetFlag", {Title = "Bypass AntiCheat: Flag Reset", Default = true })
    Toggle:OnChanged(function(value)
        _G.FlagReset = value
    end)

    spawn(function()
        while wait(1800) do
            if _G.FlagReset then
                pcall(function()
                game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                end)
            end
        end
    end)

    local Toggle = Tabs.Settings:AddToggle("SetHome", {Title = "Auto Set Home Point", Default = true })
    Toggle:OnChanged(function(value)
        _G.Auto_Set_Spawn = value
    end)

    spawn(function()
        while wait(0.1) do
            if _G.Auto_Set_Spawn then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    end
                end)
            end
        end
    end)

    _G.SelectBringMode = "Bring Mob"
    local Toggle2 = Tabs.Settings:AddToggle("BringMob", {Title = "Bring Mobs", Default = true })
    Toggle2:OnChanged(function(value)
        _G.BringMobs = value
    end)

    local Dropdown2 = Tabs.Settings:AddDropdown("Position", {
        Title = "Select Position",
        Values = {"Behind","Below","Above"},
        Multi = false,
        Default = 3,
    })
    Dropdown2:OnChanged(function(value)
        _G.Position = value
    end)

    spawn(function()
        while wait() do
        pcall(function()
         if _G.Position == "Behind" then
         PositionFarm = CFrame.new(0,0,10)
         elseif _G.Position == "Below" then
         PositionFarm = CFrame.new(5,-10,7) * CFrame.Angles(math.rad(90),0,0)
         elseif _G.Position == "Above" then
         PositionFarm = CFrame.new(5,10,7)
         else
         PositionFarm = CFrame.new(5,10,7)
         end
         end)
        end
    end)

    local Dropdown36767 = Tabs.Settings:AddDropdown("Set Attack Delay", {
        Title = "Select Attack Delay",
        Values = {"Slow","Fast","Extreme"},
        Multi = false,
        Default = 2,
    })
    Dropdown36767:OnChanged(function(value)
        SelectAttackDelay = value
        if SelectAttackDelay == "Slow" then
            AttackDelay = 0.055
        elseif SelectAttackDelay == "Fast" then
            AttackDelay = 0.025
        elseif SelectAttackDelay == "Extreme" then
            AttackDelay = 0
        end
    end)

    local Toggle3 = Tabs.Settings:AddToggle("FastAttack", {Title = "Fast Attack", Default = true })
    Toggle3:OnChanged(function(value)
        _G.FastAttack = value
    end)

    local Weapon = {
        "Melee",
        "Sword",
        "Fruit",
        "Gun"
    }
    local Dropdown3 = Tabs.Settings:AddDropdown("Weapon", {
        Title = "Select Weapon",
        Values = Weapon,
        Multi = false,
        Default = 1,
    })
    Dropdown3:OnChanged(function(value)
        _G.SelectWeapon = value
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if _G.SelectWeapon == "Melee" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeapon = v.Name
                            end
                        end
                    end
                elseif _G.SelectWeapon == "Sword" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeapon = v.Name
                            end
                        end
                    end
                elseif _G.SelectWeapon == "Fruit" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Blox Fruit" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeapon = v.Name
                            end
                        end
                    end
                elseif _G.SelectWeapon == "Gun" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Gun" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                _G.SelectWeapon = v.Name
                            end
                        end
                    end
                end
            end)
        end
    end)

    Tabs.Settings:AddSection("Others")

    local Toggle4 = Tabs.Settings:AddToggle("Bypass Teleport", {Title = "Bypass Teleport", Default = false })
    Toggle4:OnChanged(function(value)
        BypassTP = value
    end)

    local Toggle5 = Tabs.Settings:AddToggle("Double Quest", {Title = "Double Quest", Default = true })
    Toggle5:OnChanged(function(value)
        _G.KillExtra = value
    end)

    local Toggle6 = Tabs.Settings:AddToggle("Player Hitbox", {Title = "Player Hitbox", Default = false })
    Toggle6:OnChanged(function(value)
        _G.Hitbox = value
    end)

    -- HOME TAB
    local Dropdown5 = Tabs.Main:AddDropdown("Select Mode", {
        Title = "Select Mode",
        Values = {"Normal Mode","Nearest Mode","Fruit Mastery Mode","Gun Mastery Mode"},
        Multi = false,
        Default = 1,
    })
    Dropdown5:OnChanged(function(value)
        _G.SelectMode = value
    end)

    local Toggle7 = Tabs.Main:AddToggle("FarmSelected", {Title = "Farm Selected Mode", Default = false })
    Toggle7:OnChanged(function(value)
        _G.AutoFarm = value
        StopTween(_G.AutoFarm)
        if _G.AutoFarm == false and _G.SelectMode == "Fruit Mastery Mode" then
            _G.FastAttack = true
            StartFruitMagnet = false
        end
    end)

    if World1 then
        local Dropdown6 = Tabs.Main:AddDropdown("Select Mob", {
            Title = "Select Mob",
            Values = {                        
            "Level Farming Mode",
            "Bandit [Lv. 5]",
            "Monkey [Lv. 14]",
            "Gorilla [Lv. 20]",
            "Pirate [Lv. 35]",
            "Brute [Lv. 45]",
            "Desert Bandit [Lv. 60]",
            "Desert Officer [Lv. 70]",
            "Snow Bandit [Lv. 90]",
            "Snowman [Lv. 100]",
            "Chief Petty Officer [Lv. 120]",
            "Sky Bandit [Lv. 150]",
            "Dark Master [Lv. 175]",
            "Prisoner [Lv. 190]",
            "Dangerous Prisoner [Lv. 210]",
            "Toga Warrior [Lv. 250]",
            "Gladiator [Lv. 275]",
            "Military Soldier [Lv. 300]",
            "Military Spy [Lv. 325]",
            "Fishman Warrior [Lv. 375]",
            "Fishman Commando [Lv. 400]",
            "God's Guard [Lv. 450]",
            "Shanda [Lv. 475]",
            "Royal Squad [Lv. 525]",
            "Royal Soldier [Lv. 550]",
            "Galley Pirate [Lv. 625]",
            "Galley Captain [Lv. 650]"},
            Multi = false,
            Default = 1,
        })
        Dropdown6:OnChanged(function(value)
            _G.SelectMob = value
        end)
    elseif World2 then
        local Dropdown6 = Tabs.Main:AddDropdown("Select Mob", {
            Title = "Select Mob",
            Values = {                        
            "Level Farming Mode",
            "Raider [Lv. 700]",
            "Mercenary [Lv. 725]",
            "Swan Pirate [Lv. 775]",
            "Factory Staff [Lv. 800]",
            "Marine Lieutenant [Lv. 875]",
            "Marine Captain [Lv. 900]",
            "Zombie [Lv. 950]",
            "Vampire [Lv. 975]",
            "Snow Trooper [Lv. 1000]",
            "Winter Warrior [Lv. 1050]",
            "Lab Subordinate [Lv. 1100]",
            "Horned Warrior [Lv. 1125]",
            "Magma Ninja [Lv. 1175]",
            "Lava Pirate [Lv. 1200]",
            "Ship Deckhand [Lv. 1250]",
            "Ship Engineer [Lv. 1275]",
            "Ship Steward [Lv. 1300]",
            "Ship Officer [Lv. 1325]",
            "Arctic Warrior [Lv. 1350]",
            "Snow Lurker [Lv. 1375]",
            "Sea Soldier [Lv. 1425]",
            "Water Fighter [Lv. 1450]"},
            Multi = false,
            Default = 1,
        })
        Dropdown6:OnChanged(function(value)
            _G.SelectMob = value
        end)
    elseif World3 then
        local Dropdown6 = Tabs.Main:AddDropdown("Select Mob", {
            Title = "Select Mob",
            Values = {                        
            "Level Farming Mode",
            "Pirate Millionaire [Lv. 1500]",
            "Pistol Billionaire [Lv. 1525]",
            "Dragon Crew Warrior [Lv. 1575]",
            "Dragon Crew Archer [Lv. 1600]",
            "Female Islander [Lv. 1625]",
            "Giant Islander [Lv. 1650]",
            "Marine Commodore [Lv. 1700]",
            "Marine Rear Admiral [Lv. 1725]",
            "Fishman Raider [Lv. 1775]",
            "Fishman Captain [Lv. 1800]",
            "Forest Pirate [Lv. 1825]",
            "Mythological Pirate [Lv. 1850]",
            "Jungle Pirate [Lv. 1900]",
            "Reborn Skeleton [Lv. 1975]",
            "Living Zombie [Lv. 2000]",
            "Demonic Soul [Lv. 2025]",
            "Posessed Mummy [Lv. 2050]",
            "Peanut Scout [Lv. 2075]",
            "Peanut President [Lv. 2100]",
            "Ice Cream Chef [Lv. 2125]",
            "Ice Cream Commander [Lv. 2150]",
            "Cookie Crafter [Lv. 2200]",
            "Cake Guard [Lv. 2225]",
            "Baking Staff [Lv. 2250]",
            "Head Baker [Lv. 2275]",
            "Cocoa Warrior [Lv. 2300]",
            "Chocolate Bar Battler [Lv. 2325]",
            "Sweet Thief [Lv. 2350]",
            "Candy Rebel [Lv. 2375]",
            "Candy Pirate [Lv. 2400]",
            "Snow Demon [Lv. 2425]",
		    "Isle Outlaw [Lv. 2450]",
			"Island Boy [Lv. 2475]",
			"Sun-kissed Warrior [Lv. 2500]",
			"Isle Champion [Lv. 2525]"},
            Multi = false,
            Default = 1,
        })
        Dropdown6:OnChanged(function(value)
            _G.SelectMob = value
        end)
    end

    if World3 then
        
        Tabs.Main:AddSection("Christmas Event")

        local Toggle7232323 = Tabs.Main:AddToggle("FarmCandy", {Title = "Auto Farm Candy", Default = false })
        Toggle7232323:OnChanged(function(value)
            _G.AutoFarmCandy = value
            StopTween(_G.AutoFarmCandy)
        end)

        spawn(function()
            game:GetService("RunService").Heartbeat:Connect(function()
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoFarmCandy and StartMagnetEvent and (v.Name == "Candy Pirate" or v.Name == "Snow Demon") and (v.HumanoidRootPart.Position - PosMonEvent.Position).magnitude <= 350 then
                            v.HumanoidRootPart.CFrame = PosMonEvent
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                        end
                    end
                end)
            end)
        end)
    
        spawn(function()
            while wait() do
                if _G.AutoFarmCandy and World3 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Candy Pirate") or game:GetService("Workspace").Enemies:FindFirstChild("Snow Demon") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Candy Pirate" or v.Name == "Snow Demon" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            StartMagnetEvent = true
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            PosMonEvent = v.HumanoidRootPart.CFrame
                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                            Click()
                                        until _G.AutoFarmCandy == false or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            StartMagnetEvent = false
                            for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                                if v.Name == "Candy Pirate" then
                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                elseif v.Name == "Snow Demon" then
                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                end
                            end
                            TP(CFrame.new(-1230.95032, 89.3472443, -14437.3379, -0.228816152, 9.6939317e-08, 0.973469675, 8.52869508e-09, 1, -9.75765531e-08, -0.973469675, -1.4024665e-08, -0.228816152))
                        end
                    end)
                end
            end
        end)

    end

    if not World1 then
    Tabs.Main:AddSection("Sea Events [Beta]")

    local Toggle9223233 = Tabs.Main:AddToggle("Auto Leviathan", {Title = "Auto Leviathan/Sea Beast", Default = false })
    Toggle9223233:OnChanged(function(value)
        _G.AutoLeviathan = value
    end)

    spawn(function()
      while wait() do
          if _G.AutoLeviathan then
                 pcall(function()
                  for i, v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") or v.Name == "SeaBeast1" or v.Name == "Leviathan" then
                          AutoHaki()
                          EquipWeapon(_G.SelectWeapon)
                          TP(v.HumanoidRootPart.CFrame * CFrame.new(0,500,0))
                          if _G.SkillZ and _G.AutoLeviathan == true then 
                          game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                          wait(0.1)
                          game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                          end
                          if _G.SkillX and _G.AutoLeviathan == true then 
                          game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                          wait(0.1)
                          game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                          end
                          if _G.SkillC and _G.AutoLeviathan == true then 
                          game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                          wait(0.1)
                          game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                          end
                          if _G.SkillV and _G.AutoLeviathan == true then 
                          game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                          wait(0.1)
                          game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                          end
                          end
                       end
                  end)
              end
          end
      end)

      local Dropdown623232 = Tabs.Main:AddDropdown("Select Boat", {
        Title = "Select Boat",
        Values = {"Miracle","The Sentinel","Guardian","Lantern"},
        Multi = false,
        Default = 1,
    })
    Dropdown623232:OnChanged(function(value)
        _G.SelectBoatDrive = value
    end)

      local Toggle92232333223 = Tabs.Main:AddToggle("Auto Sea Event", {Title = "Auto Sea Event", Default = false })
      Toggle92232333223:OnChanged(function(value)
          _G.AutoEvent = value
          StopTween(_G.AutoEvent)
          if _G.AutoEvent == true then
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                TP(CFrame.new(-16236.959, 9.08636189, 440.422028, -0.0127099464, -1.08287228e-08, -0.999919236, 2.43805172e-08, 1, -1.11394973e-08, 0.999919236, -2.45201299e-08, -0.0127099464))
                wait(2)
                local args = {
                [1] = "BuyBoat",
                [2] = _G.SelectBoatDrive
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                wait(1)
                Distance = (game:GetService("Workspace").Boats[_G.SelectBoatDrive].VehicleSeat.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                Speed = 220
                tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace").Boats[_G.SelectBoatDrive].VehicleSeat.CFrame})
                tween:Play()
                _G.Clip = true
                wait(Distance/Speed)
                SailNow = true
                SpawnedBoat = true
                wait(1)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.W,false,game)
                wait(8)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.A,false,game)
                wait(1.5)
                game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)
                repeat wait()
                    if SailNow == true then
                        game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.W,false,game)
                    end
                until _G.AutoEvent == false
            else
                SpawnedBoat = false
                SailNow = false
                AttackDelay = "0.050"
            end
        end)

    function oneboat(gotoCFrame) --- Tween
        pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end)
        if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 10 then
        pcall(function()
            tweenz:Cancel()
        end)
        
        else
        local tween_s = game:service "TweenService"
        local info = TweenInfo.new(
            (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position)
            .Magnitude /
            325, Enum.EasingStyle.Linear)
        tween, err = pcall(function()
            tweenz = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = gotoCFrame })
            tweenz:Play()
        end)
        if not tween then return err end
        end
        function _TweenCanCle()
        tweenz:Cancel()
        end
    end

      task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoEvent then
                    if SpawnedBoat then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name, "Fish Crew Member") or string.find(v.Name, "Piranha") or string.find(v.Name,"Shark") or string.find(v.Name , "Terror") then 
                                if v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    SailNow = false
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    AttackDelay = "0"
                                    Click()
                                    v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                    TP(v.HumanoidRootPart.CFrame * _G.Position)
                                until v.Humanoid.Health <= 0 or v.Humanoid.Health <= 0  or not _G.AutoEvent 
                                while task.wait() do
                                    if v.Humanoid.Health <= 0 then
                                        for i, v in pairs(game.Workspace.Boats:GetDescendants()) do
                                            if v:IsA("VehicleSeat") then 
                                                if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 1 and v.Owner.Value == game.Players.LocalPlayer.Name then
                                                    repeat task.wait()
                                                        local CFrame = v.CFrame
                                                        oneboat(CFrame)
                                                    until (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 20 or not _G.AutoEvent
                                                end
                                            end
                                        end
                                    end
                                end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

      _G.SelectBoatSpeed = 150
      local Slide232r = Tabs.Main:AddSlider("Select Boat Speed", {
        Title = "Select Boat Speed",
        Description = "",
        Default = 150,
        Min = 50,
        Max = 400,
        Rounding = 1,
        Callback = function(value)
            _G.SelectBoatSpeed = value
        end
        })

      local Toggle9223233 = Tabs.Main:AddToggle("IncreaseBoatSpeed", {Title = "Set Boat Speed", Default = false })
      Toggle9223233:OnChanged(function(value)
        _G.IncreaseBoatSpeed  = value
      end)

      spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.IncreaseBoatSpeed then
                    for i, v in pairs(game.Workspace.Boats:GetDescendants()) do
                        if v:IsA("VehicleSeat")  then
                            v.MaxSpeed = _G.SelectBoatSpeed
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    elseif not _G.IncreaseBoatSpeed then
                        for i, v in pairs(game.Workspace.Boats:GetDescendants()) do
                          if v:IsA("VehicleSeat")  then
                              v.MaxSpeed = 150
                              sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                          end
                        end
                end 
            end
        end)
    end)

    function RemoveFogs()
        pcall(function()
                local lighting = game:GetService("Lighting")
                lighting.Ambient = Color3.fromRGB(255, 255, 255)
                lighting.Brightness = 1
                lighting.FogEnd = 1e10
                for i, v in pairs(lighting:GetDescendants()) do
                    if
                        v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or
                            v:IsA("SunRaysEffect")
                     then
                        v.Enabled = false
                    end
                end
                lighting.Changed:Connect(
                    function()
                        lighting.Ambient = Color3.fromRGB(255, 255, 255)
                        lighting.Brightness = 1
                        lighting.FogEnd = 1e10
                    end)
                spawn(function()
                        local character = game:GetService("Players").LocalPlayer.Character
                        while wait() do
                            repeat
                                wait()
                            until character ~= nil
                            if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
                                local headlight = Instance.new("PointLight", character.HumanoidRootPart)
                                headlight.Brightness = 1
                                headlight.Range = 60
                            end
                        end
                    end)
                end)
        repeat
            task.wait()
        until game:IsLoaded()
        wait(5)
        for i, v in pairs(game.Lighting:GetChildren()) do
            if v:IsA("") or v:IsA("Sky") or v:IsA("BlurEffect") or v:IsA("BloomEffect") or v:IsA("SunRaysEffect") then
                v:Destroy()
            end
        end
        game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
        game.Lighting.Brightness = 1
        game.Lighting.ClockTime = 14
        game.Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
        game.Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
        game.Lighting.ExposureCompensation = 0
        game.Lighting.FogColor = Color3.fromRGB(255, 255, 255)
        game.Lighting.FogEnd = 999999999
        game.Lighting.GeographicLatitude = 41.733
        game.Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
        game.Lighting.GlobalShadows = true
        game.Lighting.Changed:Connect(function()
                game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
                game.Lighting.Brightness = 1
                game.Lighting.ClockTime = 14
                game.Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
                game.Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
                game.Lighting.ExposureCompensation = 0
                game.Lighting.FogColor = Color3.fromRGB(255, 255, 255)
                game.Lighting.FogEnd = 999999999
                game.Lighting.GeographicLatitude = 41.733
                game.Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
                game.Lighting.GlobalShadows = true
            end)
        game.Lighting.DescendantAdded:Connect(
            function(obj)
                if obj:IsA("") or obj:IsA("Sky") or obj:IsA("BlurEffect") or obj:IsA("BloomEffect") or obj:IsA("SunRaysEffect") then
                    obj:Destroy()
                end
            end)
        end

        Tabs.Main:AddButton({
            Title = "Remove Fog",
            Description = "",
            Callback = function()
                RemoveFogs()
            end
        })
    end

    Tabs.Main:AddSection("Finder")

    local KitsuneStats = Tabs.Main:AddParagraph({
        Title = "Kitsune Island Status",
        Content = "🦊 Kitsune Has Not Spawned!"
    })

    local MirageStats = Tabs.Main:AddParagraph({
        Title = "Mirage Island Status",
        Content = "🏝️  Mirage Has Not Spawned!"
    })

    local MoonStats = Tabs.Main:AddParagraph({
        Title = "Moon Status",
        Content = "Full Moon"
    })

    function KitsuneCheck()
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
        KitsuneStats:SetDesc("🦊 Kitsune Has Spawned!")
        else
        KitsuneStats:SetDesc("🦊 Kitsune Has Not Spawned!")
        end
    end

    spawn(function()
        while task.wait(5) do
        pcall(function()
        KitsuneCheck()
        end)
    end
    end)
    KitsuneCheck()

    function MirageCheck()
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        MirageStats:SetDesc("🏝️  Mirage Has Spawned!")
        else
        MirageStats:SetDesc("🏝️  Mirage Has Not Spawned!")
        end
    end

    spawn(function()
        while task.wait(5) do
        pcall(function()
        MirageCheck()
        end)
    end
    end)
    MirageCheck()

    function FullMoon()
        local Moon = {
        ['8'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
        ['7'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
        ['6'] = "http://www.roblox.com/asset/?id=9709143733", -- 🌗
        ['5'] = "http://www.roblox.com/asset/?id=9709150401", -- 🌘
        ['4'] = "http://www.roblox.com/asset/?id=9709135895",  -- 🌑
        ['3'] = "http://www.roblox.com/asset/?id=9709139597", -- 🌒
        ['2'] = "http://www.roblox.com/asset/?id=9709150086", -- 🌓
        ['1'] = "http://www.roblox.com/asset/?id=9709149680", -- 🌔
        };
        if World3 then
        for i,v in pairs(Moon) do
            if game:GetService("Lighting").Sky.MoonTextureId == v then
                MoonPercent = i / 8 * 100
            end
        end
        elseif World2 or World1 then
        for i,v in pairs(Moon) do
            if game:GetService("Lighting").FantasySky.MoonTextureId == v then
                MoonPercent = i / 8 * 100
            end
        end
        end
        -----------FULL MOON
        if World3 then
            if game:GetService("Lighting").Sky.MoonTextureId == Moon['1'] then
                MoonIcon = '🌔'
                MoonMinute = '( 84 ~ 96 )'
            elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['2'] then
                MoonIcon = '🌓'
                MoonMinute = '( 72 ~ 84 )'
            elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['3'] then
                MoonIcon = '🌒'
                MoonMinute = '( 60 ~ 72 )'
            elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['4'] then
                MoonIcon = '🌑'
                MoonMinute = '( 48 ~ 60 )'
            elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['5'] then
                MoonIcon = '🌘'
                MoonMinute = '( 36 ~ 48 )'
            elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['6'] then
                MoonIcon = '🌗'
                MoonMinute = '( 24 ~ 36 )'
            elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['7'] then
                MoonIcon = '🌖'
                MoonMinute = '( 12 ~ 24 )'
            elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] and not game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                MoonIcon = '🌕'
                MoonMinute = '( 0 ~ 12 )'
            elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] and game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                MoonIcon = '🌕'
                MoonMinute = ''
            end
        elseif World2 or World1 then
            if game:GetService("Lighting").FantasySky.MoonTextureId == Moon['1'] then
                MoonIcon = '🌔'
                MoonMinute = '( 84 ~ 96 )'
            elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['2'] then
                MoonIcon = '🌓'
                MoonMinute = '( 72 ~ 84 )'
            elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['3'] then
                MoonIcon = '🌒'
                MoonMinute = '( 60 ~ 72 )'
            elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['4'] then
                MoonIcon = '🌑'
                MoonMinute = '( 48 ~ 60 )'
            elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['5'] then
                MoonIcon = '🌘'
                MoonMinute = '( 36 ~ 48 )'
            elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['6'] then
                MoonIcon = '🌗'
                MoonMinute = '( 24 ~ 36 )'
            elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['7'] then
                MoonIcon = '🌖'
                MoonMinute = '( 12 ~ 24 )'
            elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['8'] and not game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                MoonIcon = '🌕'
                MoonMinute = '( 0 ~ 12 )'
            elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['8'] and game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                MoonIcon = '🌕'
                MoonMinute = ''
            end
        end
        MoonMessage = tostring(MoonIcon..'  Full Moon '..'%'..MoonPercent..' '..MoonMinute)
        wait(0.5)
        MoonStats:SetDesc(MoonMessage)
        end
                
        spawn(function()
         while task.wait(5) do
            pcall(function()
            FullMoon()
        end)
        end
        end)
        FullMoon()

        local Toggle92334 = Tabs.Main:AddToggle("AutoCollectEmber", {Title = "Auto Collect Azure Ember", Default = false })
        Toggle92334:OnChanged(function(value)
            _G.AutoCollectEmber = value
            StopTween(_G.AutoCollectEmber)
            spawn(function()
            while _G.AutoCollectEmber do task.wait()
                pcall(function()
                for _, v in pairs(game.workspace.EmberTemplate:GetChildren()) do
                    if v.Name == "Part" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        end
                        end
                    end)
                end
            end)
        end)

        local Toggle8221 = Tabs.Main:AddToggle("AutoTeleportKitsuneIsland", {Title = "Auto Teleport Kitsune Island", Default = false })
        Toggle8221:OnChanged(function(value)
        _G.Kitsune = value
        StopTween(_G.Kitsune)
        if _G.Kitsune then
          if game:GetService("Workspace").Map:FindFirstChild("Kitsune Island") then
            TP(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,100,0))
          else
            local Notification = require(game:GetService("ReplicatedStorage").Notification)
            Notification.new("<Color=Blue>".."Kitsune Island".."<Color=/>".." Has Not Spawned!"):Display()
            if _G.KitsuneHop then
            wait(6)
            Hop()
            end          
        end
        end
    end)

    local Toggle9233 = Tabs.Main:AddToggle("AutoKitsunehop", {Title = "Auto Kitsune Island Hop", Default = false })
    Toggle9233:OnChanged(function(value)
        _G.KitsuneHop = value
    end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.KitsuneHop and _G.Kitsune then   
                    if game:GetService("Workspace").Map:FindFirstChild("Kitsune Island") then 
                    print("Starting..")
                    else
                    wait(6)
                    Hop()
                end
                end
            end
        end)
    end)

        local Toggle8 = Tabs.Main:AddToggle("Automirage", {Title = "Auto Teleport Mirage Island", Default = false })
        Toggle8:OnChanged(function(value)
        _G.Mirage = value
        StopTween(_G.Mirage)
        if _G.Mirage then
          if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            function toTargetWait(a)local b=(a.p-game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;tweenrach=game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"),TweenInfo.new(b/250,Enum.EasingStyle.Linear),{CFrame=a})tweenrach:Play()end;toTargetWait(workspace.Map.MysticIsland.PrimaryPart.CFrame*CFrame.new(0,250,0))
            else
            local Notification = require(game:GetService("ReplicatedStorage").Notification)
            Notification.new("<Color=Blue>".."Mirage".."<Color=/>".." Has Not Spawned!"):Display()
            if _G.MirageHop then
            wait(6)
            Hop()
            end          
        end
        end
    end)

    local Toggle9 = Tabs.Main:AddToggle("Automiragehop", {Title = "Auto Mirage Island Hop", Default = false })
    Toggle9:OnChanged(function(value)
        _G.MirageHop = value
    end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.MirageHop and _G.Mirage then   
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then 
                    print("Starting..")
                    else
                    wait(6)
                    Hop()
                end
                end
            end
        end)
    end)

    local Toggle10 = Tabs.Main:AddToggle("Autofullmoon", {Title = "Auto Full Moon Hop", Default = false })
    Toggle10:OnChanged(function(value)
        _G.MoonHop = value
    end)

    spawn(function()
        pcall(function()
            while wait(1) do
            if _G.MoonHop then  
            if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" and game:GetService("Lighting").LightingLayers.Night.Intensity.Value == 1 then
            local Notification = require(game:GetService("ReplicatedStorage").Notification)
            Notification.new("<Color=Blue>".."Full Moon".."<Color=/>".." In Server"):Display()
            else
            wait(6)
            Hop()
            end
            end
            end
        end)
    end)

    Tabs.Main:AddSection("Chest")

    local Toggl = Tabs.Main:AddToggle("Autofarmchest", {Title = "Auto Farm Chest", Default = false })
    Toggl:OnChanged(function(value)
        _G.FarmChest = value
    end)

    local Toggl1 = Tabs.Main:AddToggle("Autofarmchesthop", {Title = "Auto Farm Chest Hop", Default = false })
    Toggl1:OnChanged(function(value)
        _G.FarmChestHop = value
    end)

    spawn(function()
        pcall(function()
            while wait(5) do
                if _G.FarmChest then
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/SaltyHB/Poggers/main/FarmChest"))()
                end
                end 
            end
        end)
    end)

    spawn(function()
        pcall(function()
            while wait(5) do
                if _G.FarmChest then
                game.Players.LocalPlayer.Character.Head:Destroy()
                wait(5)
                end 
            end
        end)
    end)

    local Toggl2 = Tabs.Main:AddToggle("Autofarmchesttween", {Title = "Auto Farm Chest Tween", Default = false })
    Toggl2:OnChanged(function(value)
        AutoFarmChest = value
        StopTween(AutoFarmChest)
    end)

    _G.MagnitudeAdd = 0
task.spawn(function()
	while wait() do 
		if AutoFarmChest then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v.Name:find("Chest") then
					if game:GetService("Workspace"):FindFirstChild(v.Name) then
						if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
							repeat wait()
								if game:GetService("Workspace"):FindFirstChild(v.Name) then
									TP(v.CFrame)
								end
							until AutoFarmChest == false or not v.Parent
							TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							_G.MagnitudeAdd = _G.MagnitudeAdd+1500
							break
						end
					end
				end
			end
		end
	end
end)

    Tabs.Main:AddSection("Fruit Farm")

    local Inpu2341 = Tabs.Main:AddInput("FruitURL", {
        Title = "Set Fruit Webhook Url",
        Default = "Set Fruit Webhook Url",
        Placeholder = "Set Fruit Webhook Url",
        Numeric = false,
        Finished = false,
    })
    Inpu2341:OnChanged(function(value)
        FruitURL = value
    end)

    local Toggl3 = Tabs.Main:AddToggle("AutoFarmFruit", {Title = "Auto Farm Devil Fruit", Default = false })
    Toggl3:OnChanged(function(value)
        _G.FruitFarm = value
        if _G.FruitFarm == true then
            ServerHopTimer = 10
            TeleportSafe = true
            Team = "Marine"
            Webhook = FruitURL
            _G.Version="Fruit Farm"loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Efe0626/RaitoHub/main/Script"))()
        end
    end)

    if game.PlaceId == 2753915549 then
        _G.SeaCheckS = "First Sea"
        elseif game.PlaceId == 4442272183 then
        _G.SeaCheckS = "Second Sea"
        elseif World3 then
        _G.SeaCheckS = "Third Sea"
    end

    Tabs.Main:AddSection(_G.SeaCheckS)

    if World3 then
    local Toggl4 = Tabs.Main:AddToggle("AutoFarmPirate", {Title = "Auto Farm Pirate Raid", Default = false })
    Toggl4:OnChanged(function(value)
        _G.FarmPirateRaid = value
        StopTween(_G.FarmPirateRaid)
    end)

    spawn(function()
        while wait() do
            if _G.FarmPirateRaid then
                pcall(function()
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.FarmPirateRaid and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                        Click()
                                    until v.Humanoid.Health <= 0 or not v.Parent or _G.FarmPirateRaid == false
                                end
                            end
                        end
                    else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5092.15771, 314.54126, -3127.5957, -0.938904643, 3.39944806e-09, -0.344177425, 1.35186795e-08, 1, -2.70014873e-08, 0.344177425, -3.00046459e-08, -0.938904643))
                    wait(1)
                    TP(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                    end
                end)
            end
        end
    end)
    end

    if World1 then
        local Toggl5 = Tabs.Main:AddToggle("AutoSecond", {Title = "Auto Second Sea", Default = false })
        Toggl5:OnChanged(function(value)
            AutoSecondSea = value
            StopTween(AutoSecondSea)
        end)  

        spawn(function()
            while task.wait() do
                if AutoSecondSea then
                    pcall(function()
                        if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == false then
                                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                                end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Key"])
                                    if BypassTP then
                                        BTP(CFrame.new(1349.697265625, 37.34928512573242, -1328.8309326171875))
                                        game:GetService("Workspace").Map.Ice.Door.Size = Vector3.new(30,30,30)
                                    else
                                        TP(CFrame.new(1349.697265625, 37.34928512573242, -1328.8309326171875))
                                        game:GetService("Workspace").Map.Ice.Door.Size = Vector3.new(30,30,30)
                                    end
                                end
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").KilledIceBoss == false then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        if v.Name == "Ice Admiral" then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(PositionFarm))
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                FarmPos = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                            until not AutoSecondSea or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").KilledIceBoss == true then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            end
                        end
                    end)
                end
            end
        end)
    end

    if World2 then
        local Toggl6 = Tabs.Main:AddToggle("AutoThird", {Title = "Auto Third Sea", Default = false })
        Toggl6:OnChanged(function(value)
            _G.AutoThirdSea = value
            StopTween(_G.AutoThirdSea)
        end)  

        spawn(function()
            while wait() do
                if _G.AutoThirdSea then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                            _G.AutoFarm = false
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                                TP(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                end
                                wait(1.8)
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "rip_indra" then
                                            OldCFrameThird = v.HumanoidRootPart.CFrame
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                v.HumanoidRootPart.CFrame = OldCFrameThird
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                Click()
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                    TP(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end

    if World2 then
        local Toggl7 = Tabs.Main:AddToggle("Auto Farm Factory", {Title = "Auto Farm Factory", Default = false })
        Toggl7:OnChanged(function(value)
            _G.AutoFactory = value
            StopTween(_G.AutoFactory)
        end) 
        
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoFactory then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()         
                                        EquipWeapon(_G.SelectWeapon)           
                                        TP(CFrame.new(448.46756, 199.356781, -441.389252))                                  
                                        Click()
                                    until v.Humanoid.Health <= 0 or _G.AutoFactory == false
                                end
                            end
                        else
                            TP(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    end
                end)
            end
        end)
    end

    Tabs.Main:AddSection("Bosses")

    local BossTable = {}
                        
    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if v.Name == "Cyborg" or v.Name == "The Gorilla King" or v.Name == "Wysper" or v.Name == "Thunder God" or v.Name == "Mob Leader" or v.Name == "Bobby" or v.Name == "Saber Expert" or v.Name == "Warden" or v.Name == "Chief Warden" or v.Name == "Swan" or v.Name == "Magma Admiral"  or v.Name == "Fishman Lord" or v.Name == "Wysper" or v.Name == "Ice Admiral" or v.Name == "Diamond" or v.Name == "Jeremy" or v.Name == "Fajita" or v.Name == "Don Swan" or v.Name == "Smoke Admiral" or v.Name == "Awakened Ice Admiral" or v.Name == "Tide Keeper" or v.Name == "Darkbeard" or v.Name == "Stone" or v.Name == "Island Empress" or v.Name == "Kilo Admiral" or v.Name == "Captain Elephant" or v.Name == "Beautiful Pirate" or v.Name == "Longma" or v.Name == "Cake Queen" or v.Name == "Greybeard" or v.Name == "Order" or v.Name == "Cursed Captain" or v.Name == "Soul Reaper" or v.Name == "Rip indra" or v.Name == "Mihawk Boss" or v.Name == "Cake Prince" or v.Name == "Dough King" or v.Name == "Cursed Skeleton Boss" or v.Name == "Factory" then
            table.insert(BossTable, v.Name)
        end
    end

    local Dropdown23 = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Select Boss",
        Values = BossTable,
        Multi = false,
        Default = nil,
    })
    Dropdown23:OnChanged(function(value)
    _G.SelectBoss = value
    end)

    Tabs.Main:AddButton({
        Title = "Refresh Bosses",
        Description = "",
        Callback = function()
        for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if string.find(v.Name, "Boss") then
                function generateKey(length)
                    local keyCharacters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
                    local key = ""
                    
                    for i = 1, length do
                        local randomIndex = math.random(1, #keyCharacters)
                        local randomChar = string.sub(keyCharacters, randomIndex, randomIndex)
                        key = key .. randomChar
                    end
                    
                    return key
                end
                
                local keyLength = 16
                local generatedKey = generateKey(keyLength)
                local generatedKey = {}
                for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if v.Name == "Cyborg" or v.Name == "The Gorilla King" or v.Name == "Wysper" or v.Name == "Thunder God" or v.Name == "Mob Leader" or v.Name == "Bobby" or v.Name == "Saber Expert" or v.Name == "Warden" or v.Name == "Chief Warden" or v.Name == "Swan" or v.Name == "Magma Admiral"  or v.Name == "Fishman Lord" or v.Name == "Wysper" or v.Name == "Ice Admiral" or v.Name == "Diamond" or v.Name == "Jeremy" or v.Name == "Fajita" or v.Name == "Don Swan" or v.Name == "Smoke Admiral" or v.Name == "Awakened Ice Admiral" or v.Name == "Tide Keeper" or v.Name == "Darkbeard" or v.Name == "Stone" or v.Name == "Island Empress" or v.Name == "Kilo Admiral" or v.Name == "Captain Elephant" or v.Name == "Beautiful Pirate" or v.Name == "Longma" or v.Name == "Cake Queen" or v.Name == "Greybeard" or v.Name == "Order" or v.Name == "Cursed Captain" or v.Name == "Soul Reaper" or v.Name == "Rip indra" or v.Name == "Mihawk Boss" or v.Name == "Cake Prince" or v.Name == "Dough King" or v.Name == "Cursed Skeleton Boss" or v.Name == "Factory" then
                        table.insert(generatedKey, v.Name)
                    end
                end
            Dropdown23:SetValues(generatedKey)
            end
        end
        end
    })

    local Toggl8 = Tabs.Main:AddToggle("Auto Farm Boss", {Title = "Auto Farm Boss", Default = false })
    Toggl8:OnChanged(function(value)
        _G.AutoFarmBoss = value
        StopTween(_G.AutoFarmBoss)
    end) 

    local Toggl9 = Tabs.Main:AddToggle("Auto Quest Boss", {Title = "Auto Quest Boss", Default = false })
    Toggl9:OnChanged(function(value)
        _G.AutoQuestBoss = value
    end) 

    spawn(function()
        while wait() do
            if _G.AutoFarmBoss then
                pcall(function()
                    CheckBossQuest()
                    if MsBoss == "Soul Reaper" or MsBoss == "Longma" or MsBoss == "Don Swan" or MsBoss == "Cursed Captain" or MsBoss == "Order" or MsBoss == "rip_indra True Form" then
                        if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == MsBoss then
                                    repeat wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        Click()
                                    until _G.AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            TP(CFrameBoss)
                        end
                    else
                        if _G.AutoQuestBoss then
                            CheckBossQuest()
                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                if BypassTP then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestBoss.Position).Magnitude > 2000 then
                                        BTP(CFrameQuestBoss)
                                        wait(5)
                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestBoss.Position).Magnitude < 2000 then
                                        TP(CFrameQuestBoss)
                                    end
                                else
                                TP(CFrameQuestBoss)
                                end
                                if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                    wait(1.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
                                end
                            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == MsBoss then
                                            repeat wait()
                                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    Click()								
                                                else
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                end
                                            until _G.AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    TP(CFrameBoss)
                                end
                            end
                        else
                            if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == MsBoss then
                                        repeat wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            Click()									
                                        until _G.AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            else
                                TP(CFrameBoss)
                            end
                        end
                    end
                end)
            end
        end
    end)

    local Toggl10 = Tabs.Main:AddToggle("Auto Farm All Bosses", {Title = "Auto Farm All Bosses", Default = false })
    Toggl10:OnChanged(function(value)
        _G.AutoAllBoss = value
        StopTween(_G.AutoAllBoss)
    end) 

    spawn(function()
        while wait() do
            if _G.AutoAllBoss then
                pcall(function()
                    for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    TP(v.HumanoidRootPart.CFrame*PositionFarm)
                                    Click()
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or _G.AutoAllBoss == false or not v.Parent
                            end
                        end
                end)
            end
        end
    end)

    if World3 then
        Tabs.Main:AddSection("Cake Boss")

        local MobKilled = Tabs.Main:AddParagraph({
            Title = "Status",
            Content = "🎂 Defeat nil More!"
        })

        spawn(function()
            while wait() do
                pcall(function()
                    if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                        MobKilled:SetDesc("🎂 Defeat "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).." More!")
                    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                        MobKilled:SetDesc("🎂 Defeat "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).." More!")
                    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                        MobKilled:SetDesc("🎂 Defeat "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." More!")
                    else
                        MobKilled:SetDesc("🎂 Boss Has Spawned!")
                    end
                end)
            end
        end)

        local Togg = Tabs.Main:AddToggle("Auto Farm Cake Prince", {Title = "Auto Farm Cake Prince", Default = false })
        Togg:OnChanged(function(value)
            _G.AutoPrince = value
            StopTween(_G.AutoPrince)
        end) 

        spawn(function()
            while wait() do
                if _G.AutoPrince then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Prince" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                            Click()
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not _G.AutoPrince or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * PositionFarm)
                            else                   
                                if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Head.CanCollide = false 
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        MagnetDought = true
                                                        PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                        Click()
                                                    until not _G.AutoPrince or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or KillMob == 0
                                                end
                                            end
                                        end
                                    else
                                    TP(CFrame.new(-2246.41235, 37.5844498, -12127.0156, -0.934118629, -0.0408047922, -0.3546229, -0.00990429521, 0.996025383, -0.0885188505, 0.356825411, -0.0791748092, -0.930809855)) 
                                        MagnetDought = false
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * PositionFarm) 
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * PositionFarm) 
                                            else
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * PositionFarm)
                                                else
                                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                        TP(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * PositionFarm)
                                                    end
                                                end
                                            end
                                        end                       
                                    end
                                else
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                        TP(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * PositionFarm)
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * PositionFarm)
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)

        local Togg1 = Tabs.Main:AddToggle("Auto Farm Cake King", {Title = "Auto Farm Cake King", Default = false })
        Togg1:OnChanged(function(value)
            _G.AutoKing = value
            StopTween(_G.AutoKing)
        end) 

        spawn(function()
            game:GetService("RunService").Heartbeat:Connect(function()
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoKing and AutoKing and (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
                            v.HumanoidRootPart.CFrame = POSCAKE
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                        end
                    end
                end)
            end)
        end)
    
        spawn(function()
            while wait() do
                if _G.AutoKing then
                    pcall(function()
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                            if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
                                game.StarterGui:SetCore("SendNotification", {
                                    Title = "Notification", 
                                    Text = "Not Have Enough Material" ,
                                    Icon = "",
                                    Duration = 2.5
                                })
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
                            if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                            else
                                if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                        if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                MagnetKing = true
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                                POSCAKE = v.HumanoidRootPart.CFrame
                                                TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                Click()
                                            until _G.AutoKing == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    MagnetKing = false
                                    TP(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                                end
                            end						
                        elseif game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                                    if v.Name == "Dough King" then
                                        repeat wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.CanCollide = false
                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                            Click()
                                        until _G.AutoKing == false or not v.Parent or v.Humanoid.Health <= 0
                                    end    
                                end    
                            else
                                TP(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
                            local args = {
                                [1] = "CakeScientist",
                                [2] = "Check"
                            }
    
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        else
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                        Click()
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                    until _G.AutoKing == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
                                                end
                                            end
                                        end
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * PositionFarm)
                                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * PositionFarm)
                                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * PositionFarm)
                                        end
                                    end                    
                                end
                            else
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                            end
                        end
                    end)
                end
            end
        end)

        local Togg2 = Tabs.Main:AddToggle("Auto Spawn Cake Prince", {Title = "Auto Spawn Cake Prince", Default = false })
        Togg2:OnChanged(function(value)
            _G.Spawn = value
        end) 

        spawn(function()
            while wait() do
             pcall(function()
              if _G.Spawn then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
                  end
              end)
          end
        end)
    end

    Tabs.Main:AddSection("Material Farm")

    if World1 then
    local Dropdown24 = Tabs.Main:AddDropdown("SelectMaterial", {
        Title = "Select Material",
        Values = {
        "Angel Wings [Sea 1]",
        },
        Multi = false,
        Default = nil,
    })
    Dropdown24:OnChanged(function(value)
    _G.MaterialFarm = value
    end)
    elseif World2 then
    local Dropdown24 = Tabs.Main:AddDropdown("SelectMaterial", {
        Title = "Select Material",
        Values = {
        "Mystic Droplet [God Human 10x]",
        "Magma Ore [God Human 20x]",
        "Radioactive [Sea 2]",
        "Vampire Fangs [Sea 2]",
        "Ectoplasm [Sea 2]"
        },
        Multi = false,
        Default = nil,
    })
    Dropdown24:OnChanged(function(value)
    _G.MaterialFarm = value
    end)
    elseif World3 then
    local Dropdown24 = Tabs.Main:AddDropdown("SelectMaterial", {
        Title = "Select Material",
        Values = {
        "Dragon Scale [God Human 10x]",
        "Fish Tail [God Human 20x]",
        "Leather + Scrap Metal [Sea 3]",
        "Mini Tusk [Sea 3]",
        "Gun Powder [Sea 3]",
        "Demonic Wisp [Sea 3]",
        "Conjured Cocoa [Sea 3]"
        },
        Multi = false,
        Default = nil,
    })
    Dropdown24:OnChanged(function(value)
    _G.MaterialFarm = value
    end)
    end

    local Togg3 = Tabs.Main:AddToggle("Auto Farm Materials", {Title = "Auto Farm Materials", Default = false })
    Togg3:OnChanged(function(value)
        _G.MaterialFarmm = value
        if _G.MaterialFarmm == true then
            repeat wait()
                if _G.MaterialFarm == "Dragon Scale [God Human 10x]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dragon Crew Archer" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                            AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                MagnetScale = true
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                POSSC = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    MagnetScale = false
                        TP(CFrame.new(6765.04492, 378.489319, 211.242783, -0.642655611, -0.0324412733, 0.765468061, 4.82738223e-08, 0.999103129, 0.0423429944, -0.766155183, 0.0272119995, -0.642079234))
                    end
                elseif _G.MaterialFarm == "Ectoplasm [Sea 2]" then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if string.find(v.Name, "Ship") then
                                                repeat task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    if string.find(v.Name,"Ship") then
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Head.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                        Click()
                                                        EctoplasmMon = v.HumanoidRootPart.CFrame
                                                        StartEctoplasmMagnet = true
                                                    else
                                                        StartEctoplasmMagnet = false
                                                        TP(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                                    end
                                                until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        end
                                    else
                                        StartEctoplasmMagnet = false
                                        local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                        if Distance > 18000 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                        end
                                        TP(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                    end
                elseif _G.MaterialFarm == "Fish Tail [God Human 20x]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fishman Raider" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                            AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                MagnetFish = true
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                POSFT = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    MagnetFish = false
                        TP(CFrame.new(-10828.7959, 331.529968, -8430.69434, 0.269969702, 0.0235193111, -0.962581515, -0.00985098444, 0.999716759, 0.0216638092, 0.962818444, 0.00363380741, 0.270124942))
                end
                elseif _G.MaterialFarm == "Mystic Droplet [God Human 10x]" then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Water Fighter" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                            AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                MagnetDroplet = true
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                POSMD = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    MagnetDroplet = false
                        TP(CFrame.new(-3331.72485, 238.629852, -10553.332, 0.380134165, -0.0212584566, 0.924686968, 0.0320399962, 0.999438465, 0.00980550423, -0.924376249, 0.0258995593, 0.380601883))
                end
                elseif _G.MaterialFarm == "Magma Ore [God Human 20x]" then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Magma Ninja") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Magma Ninja" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                            AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                MagnetOre = true
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                POSMO = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    MagnetOre = false
                        TP(CFrame.new(-5206.73096, 15.642067, -5977.16797, 0.985261261, -0.101576075, -0.137631595, 0.124905072, 0.976944268, 0.173143268, 0.116871178, -0.187782258, 0.97523272))
                end
                elseif _G.MaterialFarm == "Leather + Scrap Metal [Sea 3]" then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Jungle Pirate" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                            AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                MagnetPirate = true
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                POSJP = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    MagnetPirate = false
                        TP(CFrame.new(-11714.7812, 330.789642, -10696.4639, 0.313827366, -0.285954475, 0.905396283, -0.0446200445, -0.956958711, -0.286773473, 0.948431015, 0.0495985448, -0.313079178))
                end
                elseif _G.MaterialFarm == "Mini Tusk [Sea 3]" then
                if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mythological Pirate" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                            AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                MagnetTusk = true
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                POSMT = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    MagnetTusk = false
                        TP(CFrame.new(-13205.5312, 540.865051, -6680.83398, 0.84670341, 0.003394634, 0.532054305, 0.0158110373, 0.999377489, -0.0315377228, -0.531830132, 0.035115432, 0.846122682))
                end
                elseif _G.MaterialFarm == "Gun Powder [Sea 3]" then
                if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Pistol Billionaire" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                            AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                MagnetPowder = true
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                POSPB = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    MagnetPowder = false
                        TP(CFrame.new(-569.866638, 73.5225067, 5900.64404, 0.999391913, 0.000850020151, -0.0348584354, 0, 0.999702811, 0.024377672, 0.0348687991, -0.0243628491, 0.999094903))
                end
                elseif _G.MaterialFarm == "Demonic Wisp [Sea 3]" then
                if game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Demonic Soul" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                            AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                MagnetDemonic = true
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                POSDS = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    MagnetDemonic = false
                        TP(CFrame.new(-9331.81738, 171.806885, 6047.66406, -0.314832807, 0.0163382739, -0.949006498, 0, 0.999851823, 0.017213637, 0.949147165, 0.00541941775, -0.314786166))
                end
                elseif _G.MaterialFarm == "Conjured Cocoa [Sea 3]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cocoa Warrior" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                            AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                MagnetConjured = true
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                POSCON = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                                MagnetConjured = true
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    MagnetConjured = false
                        TP(CFrame.new(-124.999229, 24.5444374, -12345.8018, -0.707134247, 0.00919289608, -0.707019508, 0, 0.999915481, 0.0130012231, 0.707079291, 0.0091936104, -0.707074463))
                end
                                                elseif _G.MaterialFarm == "Angel Wings [Sea 1]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Shanda") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Shanda" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                            AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        TP(CFrame.new(-7767.03564, 5590.11328, -611.294006, -0.974460959, 0.0107659074, 0.22429876, -0.00469572749, 0.997654676, -0.0682859868, -0.224507898, -0.0675952733, -0.972125053))
                end
                                                                elseif _G.MaterialFarm == "Radioactive [Sea 2]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Factory Staff" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                                EquipWeapon(_G.SelectWeapon)
                                MagnetStaff = true
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                POSFS = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    MagnetStaff = false
                        TP(CFrame.new(908.680237, 72.7698059, -47.1399651, 0.914587498, 0.00897006597, -0.40428856, 0, 0.999753952, 0.0221818257, 0.40438807, -0.0202872213, 0.91436249))
                end
                                                                                elseif _G.MaterialFarm == "Vampire Fangs [Sea 2]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Vampire") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Vampire" then
                            repeat game:GetService("RunService").Heartbeat:wait()
                                EquipWeapon(_G.SelectWeapon)
                                MagnetVampire = true
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                POSV = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                Click()
                            until _G.MaterialFarmm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    MagnetVampire = false
                        TP(CFrame.new(-5773.38232, 6.66944695, -1390.48779, -0.448913515, -0.353388369, 0.820727289, -0.211346552, 0.934406281, 0.286735952, -0.868221879, -0.044738248, -0.494155049))
                end
                end
            until not _G.MaterialFarmm
        end
        StopTween(_G.MaterialFarmm)
    end) 

    if World3 then
    Tabs.Main:AddSection("Bone")

    local Togg523 = Tabs.Main:AddToggle("Auto Farm Bone", {Title = "Auto Farm Bone", Default = false })
    Togg523:OnChanged(function(value)
        _G.Auto_Farm_Bone = value
        StopTween(_G.Auto_Farm_Bone)
    end) 

    Tabs.Main:AddButton({
        Title = "Buy Random Suprise",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
        end
    })

    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.Auto_Farm_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350 then
                        v.HumanoidRootPart.CFrame = PosMonBone
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                end
            end)
        end)
    end)

    spawn(function()
        while wait() do
            if _G.Auto_Farm_Bone and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                if v.Humanoid.Health > 0 then
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        StartMagnetBoneMon = true
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        PosMonBone = v.HumanoidRootPart.CFrame
                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        Click()
                                    until _G.Auto_Farm_Bone == false or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        StartMagnetBoneMon = false
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Reborn Skeleton" then
                                TP(v.HumanoidRootPart.CFrame * PositionFarm)
                            elseif v.Name == "Living Zombie" then
                                TP(v.HumanoidRootPart.CFrame * PositionFarm)
                            elseif v.Name == "Demonic Soul" then
                                TP(v.HumanoidRootPart.CFrame * PositionFarm)
                            elseif v.Name == "Posessed Mummy" then
                                TP(v.HumanoidRootPart.CFrame * PositionFarm)
                            end
                        end
                        TP(CFrame.new(-9466.72949, 171.162918, 6132.01514))
                    end
                end)
            end
        end
    end)
end

    if World3 then
    Tabs.Main:AddSection("Elite")

    local EliteProgress = Tabs.Main:AddParagraph({
        Title = "Defeated Status",
        Content = "💪🏼 You Has Defeated nil Elite Hunters!"
    })

    spawn(function()
        pcall(function()
            while wait(1) do
                EliteProgress:SetDesc("💪🏼 You Has Defeated "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress").." Elite Hunters!")
            end
        end)
    end)

    local EliteStatus = Tabs.Main:AddParagraph({
        Title = "Spawn Status",
        Content = "🏹 Elite Hunter Has Not Spawned!"
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                    EliteStatus:SetDesc("🏹 Elite Hunter Has Spawned!")	
                else
                    EliteStatus:SetDesc("🏹 Elite Hunter Has Not Spawned!")	
                end
            end)
        end
    end)

    local Togg5 = Tabs.Main:AddToggle("Auto Farm Elite Hunter", {Title = "Auto Farm Elite Hunter", Default = false })
    Togg5:OnChanged(function(value)
        _G.AutoElitehunter = value
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        StopTween(_G.AutoElitehunter)
    end) 

    spawn(function()
        while wait() do
            if _G.AutoElitehunter and World3 then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        repeat  wait()
                            TP(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) 
                        until not _G.AutoElitehunter or (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
                        if (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                            wait(0.5)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                Click()
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * PositionFarm)
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * PositionFarm)
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * PositionFarm)
                                else
                                    if _G.AutoEliteHunterHop then
                                        Hop()
                                    else
                                        TP(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
                                    end
                                end
                            end                    
                        end
                    end
                end)
            end
        end
    end)

    local Togg6 = Tabs.Main:AddToggle("Auto Farm Elite Hunter Hop", {Title = "Auto Farm Elite Hunter Hop", Default = false })
    Togg6:OnChanged(function(value)
        _G.AutoEliteHunterHop = value
    end) 
    end

    Tabs.Main:AddSection("Observation")

    local ObservationRange = Tabs.Main:AddParagraph({
        Title = "Observation Status",
        Content = "🧐 You Got nil Observation Level!"
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                ObservationRange:SetDesc("🧐 You Got "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value).." Observation Level!")
            end)
        end
    end)

    local Togg7 = Tabs.Main:AddToggle("Auto Farm Observation", {Title = "Auto Farm Observation", Default = false })
    Togg7:OnChanged(function(value)
        _G.AutoObservation = value
        StopTween(_G.AutoObservation)
    end) 

    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoObservation then
                    repeat task.wait()
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):SetKeyDown('0x65')
                            wait(2)
                            game:GetService('VirtualUser'):SetKeyUp('0x65')
                        end
                    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
                end
            end)
        end
    end)

    local Togg8 = Tabs.Main:AddToggle("Auto Farm Observation Hop", {Title = "Auto Farm Observation Hop", Default = false })
    Togg8:OnChanged(function(value)
        _G.AutoObservation_Hop = value
    end) 

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoObservation then
                        if World2 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                            wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                TP(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                            end
                        elseif World1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                TP(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                            end
                        elseif World3 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                TP(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                            end
                        end
                    end
            end
        end)
    end)

    if World2 then
    Tabs.Main:AddSection("Legendary Sword")

    local Dropdown27 = Tabs.Main:AddDropdown("LegendarySword", {
        Title = "Select Legendary Sword",
        Values = {"Shisui","Saddi","Wando"},
        Multi = false,
        Default = 1,
    })
    Dropdown27:OnChanged(function(value)
        _G.SelectedSword = value
    end)

    local Togg9 = Tabs.Main:AddToggle("Auto Legendary Sword", {Title = "Auto Legendary Sword", Default = false })
    Togg9:OnChanged(function(value)
        _G.AutoBuyLegendarySword = value
    end) 

    local Togg10 = Tabs.Main:AddToggle("Auto Legendary Sword Hop", {Title = "Auto Legendary Sword Hop", Default = false })
    Togg10:OnChanged(function(value)
        _G.AutoBuyLegendarySword_Hop = value
    end) 

    spawn(function()
        while wait() do
            if _G.AutoBuyLegendarySword then
                pcall(function()
                    if game.PlaceId == 4442272183 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1") == _G.SelectedSword then
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "3"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                    if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
                        wait(10)
                        Hop()
                    end
                end)
            end 
        end
    end)
    end

    Tabs.Main:AddSection("Enchancement Colour")

    local Dropdown26 = Tabs.Main:AddDropdown("ColourHaki", {
        Title = "Select Enchancement Colour",
        Values = {"Snow White","Pure Red","Winter Sky","Absolute Zero","Heat Wave","Fiery Rose","Plump Purple","Blue Jeans","Green Lizard","Slimy Green","Yellow Sunshine","Bright Yellow","Orange Soda"},
        Multi = false,
        Default = 1,
    })
    Dropdown26:OnChanged(function(value)
        _G.SelectedColour = value
    end)

    local Tog = Tabs.Main:AddToggle("Auto Enchancement Colour", {Title = "Auto Enchancement Colour", Default = false })
    Tog:OnChanged(function(value)
        _G.AutoBuyEnchancementColour = value
    end) 

    local Tog2 = Tabs.Main:AddToggle("Auto Enchancement Colour Hop", {Title = "Auto Enchancement Colour Hop", Default = false })
    Tog2:OnChanged(function(value)
        _G.AutoBuyEnchancementColour_Hop = value
    end)

    spawn(function()
        while wait() do
            if _G.AutoBuyEnchancementColour then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","1") == _G.SelectedColour then
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then
                    wait(10)
                    Hop()
                end
            end 
        end
    end)

    Tabs.Main:AddSection("Others")

    local Tog3 = Tabs.Main:AddToggle("Auto Rainbow Haki", {Title = "Auto Rainbow Haki", Default = false })
    Tog3:OnChanged(function(value)
        _G.Auto_Rainbow_Haki = value
        StopTween(_G.Auto_Rainbow_Haki)
    end) 

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Rainbow_Haki then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        TP(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Stone" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            TP(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Island Empress" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            TP(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Kilo Admiral" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            TP(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            TP(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            TP(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                        end
                    else
                        TP(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    end
                end
            end
        end)
    end)

    local Tog4 = Tabs.Main:AddToggle("Auto Observation V2", {Title = "Auto Observation V2", Default = false })
    Tog4:OnChanged(function(value)
        _G.Auto_Rainbow_Haki = value
        StopTween(_G.Auto_Rainbow_Haki)
    end) 

    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoObservationv2 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 3 then
                        _G.AutoMusketeerHat = false
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and  game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                            repeat 
                                TP(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
                                wait() 
                            until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                            repeat 
                                TP(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
                                wait() 
                            until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                        else
                            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                                if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                    v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
                                    wait()
                                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
                                    wait()
                                end
                            end   
                        end
                    else
                        _G.AutoMusketeerHat = true
                    end
                end
            end)
        end
    end)

    local Tog5 = Tabs.Main:AddToggle("Auto Evolve Race", {Title = "Auto Evolve Race", Default = false })
    Tog5:OnChanged(function(value)
        _G.Auto_EvoRace = value
        StopTween(_G.Auto_EvoRace)
    end) 

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_EvoRace then
                    if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                            TP(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                            if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.3)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                            pcall(function()
                                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                    TP(game:GetService("Workspace").Flower1.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                    TP(game:GetService("Workspace").Flower2.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Zombie" then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    Click()
                                                    PosMonEvo = v.HumanoidRootPart.CFrame
                                                    StartEvoMagnet = true
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
                                                StartEvoMagnet = false
                                            end
                                        end
                                    else
                                        StartEvoMagnet = false
                                        TP(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                    end
                                end
                            end)
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                        end
                    end
                end
            end
        end)
    end)

    local PlayerCheck = Tabs.Combat:AddParagraph({
        Title = "Server Status",
        Content = "👥 nil Players In This Server!"
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if i == 12 then
                        PlayerCheck:SetDesc("👥  "..i.." Players In This Server!")
                    elseif i == 1 then
                        PlayerCheck:SetDesc("👤  "..i.." Player In This Server!")
                    else
                        PlayerCheck:SetDesc("👥  "..i.." Players In This Server!")
                    end
                end
            end)
        end
    end)

    Playerslist = {}
                
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Playerslist,v.Name)
    end

    _G.SelectPlayer = ""
    local Dropdown30 = Tabs.Combat:AddDropdown("Select Player", {
        Title = "Select Player",
        Values = Playerslist,
        Multi = false,
        Default = 1,
    })
    Dropdown30:OnChanged(function(value)
        _G.SelectPlayer = value
    end)

    Tabs.Combat:AddButton({
        Title = "Refresh Players",
        Description = "",
        Callback = function()
            for i,v in pairs(game:GetService("Players"):GetChildren()) do  
                function generateKey(length)
                    local keyCharacters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
                    local key = ""
                    
                    for i = 1, length do
                        local randomIndex = math.random(1, #keyCharacters)
                        local randomChar = string.sub(keyCharacters, randomIndex, randomIndex)
                        key = key .. randomChar
                    end
                    
                    return key
                end
                
                local keyLength = 16
                local generatedKey2 = generateKey(keyLength)
                local generatedKey2 = {}
                for i,v in pairs(game:GetService("Players"):GetChildren()) do
                    table.insert(generatedKey2, v.Name)
                end
                Dropdown30:SetValues(generatedKey2)
            end
        end
    })

    local Tog6 = Tabs.Combat:AddToggle("Spectate Player", {Title = "Spectate Player", Default = false })
    Tog6:OnChanged(function(value)
        SpectatePlys = value
        local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
        local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPlayer)
        repeat wait(.1)
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPlayer).Character.Humanoid
        until SpectatePlys == false 
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    end) 

    local Tog7 = Tabs.Combat:AddToggle("Teleport Player", {Title = "Teleport Player", Default = false })
    Tog7:OnChanged(function(value)
        _G.TeleportPly = value
        pcall(function()
            if _G.TeleportPly then
                repeat TP(game:GetService("Players")[_G.SelectPlayer].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
            end
            StopTween(_G.TeleportPly)
        end)
    end) 

    local Tog8 = Tabs.Combat:AddToggle("Auto Farm Player", {Title = "Auto Farm Player", Default = false })
    Tog8:OnChanged(function(value)
        _G.KillSelectedPlayer = value
        StopTween(_G.KillSelectedPlayer)
    end) 

    local Tog9 = Tabs.Combat:AddToggle("Auto Active Race", {Title = "Auto Active Race", Default = false })
    Tog9:OnChanged(function(value)
        _G.AutoAgility = value
    end) 

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoAgility then
            game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            wait(0.1)
            game:service('VirtualInputManager'):SendKeyEvent(true, "Y", false, game)
            wait(0.1)
            game:service('VirtualInputManager'):SendKeyEvent(false, "Y", false, game)
                end
            end
        end)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.KillSelectedPlayer then
                    _G.SelectWeapon = "Melee"
                    wait(0.5)
                    _G.SelectWeapon = "Sword"
                    wait(0.5)
                    _G.SelectWeapon = "Gun"
                    wait(0.5)
                    _G.SelectWeapon = "Fruit"
                    wait(1)
                end
            end
        end)
    end)

    spawn(function()
       while wait() do
           if _G.KillSelectedPlayer then
               pcall(function()
                   if _G.SelectPlayer ~= nil then 
                       if game.Players:FindFirstChild(_G.SelectPlayer) then
                           if game.Players:FindFirstChild(_G.SelectPlayer).Character.Humanoid.Health > 0 then
                               repeat task.wait()
                                   EquipWeapon(_G.SelectWeapon)
                                   AutoHaki()
                                   game.Players:FindFirstChild(_G.SelectPlayer).Character.HumanoidRootPart.CanCollide = false
                                   if not _G.StopFarmTP then
                                   TP(game.Players:FindFirstChild(_G.SelectPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0))
                                   elseif _G.StopFarmTP == true then
                                    if game.Players.LocalPlayer.Character.Humanoid.Health <= 2000 then
                                        _G.StopFarmTP = true
                                        else
                                        _G.StopFarmTP = false
                                    end
                                   TP(game.Players:FindFirstChild(_G.SelectPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,300,0))
                                   end
                                   spawn(function()
                                       pcall(function()
                                           if _G.SelectWeapon == SelectWeaponGun then
                                               game:GetService'VirtualUser':CaptureController()
                                               game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                               if (game.Players:FindFirstChild(_G.SelectPlayer).Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 100 then
                                               game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                               wait(.1)
                                               game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                               wait(0.5)
                                               game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                               wait(.1)
                                               game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                               end
                                               local args = {
                                                   [1] = game.Players:FindFirstChild(_G.SelectPlayer).Character.HumanoidRootPart.Position,
                                                   [2] = game.Players:FindFirstChild(_G.SelectPlayer).Character.HumanoidRootPart
                                               }
                                               game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                           else
                                            if (game.Players:FindFirstChild(_G.SelectPlayer).Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 50 then
                                               game:GetService'VirtualUser':CaptureController()
                                               game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                               game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                               wait(.1)
                                               game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                               wait(0.5)
                                               game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                               wait(.1)
                                               game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                               wait(0.5)
                                               game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                               wait(.1)
                                               game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                               wait(0.5)
                                               game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                               wait(.1)
                                               game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                               if game.Players.LocalPlayer.Character.Humanoid.Health <= 2000 then
                                               _G.StopFarmTP = true
                                               else
                                               _G.StopFarmTP = false
                                               end
                                            end
                                           end
                                       end)
                                   end)
                               until game.Players:FindFirstChild(_G.SelectPlayer).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPlayer) or not _G.KillSelectedPlayer
                           end
                       end
                   end
               end)
           end
       end
   end)

   Tabs.Combat:AddSection("Aimbot")

   local Circle = Drawing.new("Circle")
   Circle.Color =  Color3.fromRGB(52, 190, 255)
   Circle.Thickness = 1
   Circle.Radius = 250
   Circle.NumSides = 460
   Circle.Filled = false
   Circle.Transparency = 1
   Circle.Visible = false
   
   game:GetService("RunService").Stepped:Connect(function()
       Circle.Radius = _G.Select_Size_Fov
       Circle.Thickness = 1
       Circle.NumSides = 460
       Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
       if _G.Show_Fov then
           Circle.Visible = true
       else
           Circle.Visible = false
       end
   end)

   local Slider = Tabs.Combat:AddSlider("Select Size Fov", {
    Title = "Select Size Fov",
    Description = "",
    Default = 50,
    Min = 10,
    Max = 1000,
    Rounding = 1,
    Callback = function(value)
        _G.Select_Size_Fov = value
        return "Size Fov : " .. tostring(value)
    end
    })

    local Tog10 = Tabs.Combat:AddToggle("Show Fov", {Title = "Show Fov", Default = false })
    Tog10:OnChanged(function(value)
        _G.Show_Fov = value
    end) 

    local To = Tabs.Combat:AddToggle("Aimbot Skill Fov", {Title = "Aimbot Skill Fov", Default = false })
    To:OnChanged(function(value)
        _G.Aimbot_Skill_Fov = value
    end) 

    local To2 = Tabs.Combat:AddToggle("Aimbot Gun Fov", {Title = "Aimbot Gun Fov", Default = false })
    To2:OnChanged(function(value)
        _G.Aimbot_Gun = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                local MaxDistance = math.huge
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                        local Distance = v:DistanceFromCharacter(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
                        if Distance < MaxDistance then
                            MaxDistance = Distance
                            PlayerSelectAimbot = v.Name
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while task.wait() do
            if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
                pcall(function()
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
                        [2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
                    }
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                end)
            end
        end
    end)

    Tabs.Combat:AddSection("Custom Aimbot")

    spawn(function()
        local gg = getrawmetatable(game)
        local old = gg.__namecall
        setreadonly(gg,false)
        gg.__namecall = newcclosure(function(...)
            local method = getnamecallmethod()
            local args = {...}
            if tostring(method) == "FireServer" then
                if tostring(args[1]) == "RemoteEvent" then
                    if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                        if _G.UseSkill then
                            args[2] = PositionSkillMasteryDevilFruit
                            return old(unpack(args))
                        elseif _G.Skillaimbot then
                            args[2] = AimBotSkillPosition
                            return old(unpack(args))
                        end
                    end
                end
            end
            return old(...)
        end)
    end) 

    local To3 = Tabs.Combat:AddToggle("Aimbot Skill", {Title = "Aimbot Skill", Default = false })
    To3:OnChanged(function(value)
        if _G.SelectPlayer == "" and bool then
            local Notification = require(game:GetService("ReplicatedStorage").Notification)
            Notification.new("<Color=Blue>".."Select A Player First!".."<Color=/>"):Display()
        else
            _G.Skillaimbot = bool
        end
    end)

    spawn(function()
        while wait() do
            if _G.Skillaimbot then
                if game.Players:FindFirstChild(_G.SelectPlayer) and game.Players:FindFirstChild(_G.SelectPlayer).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(_G.SelectPlayer).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(_G.SelectPlayer).Character.Humanoid.Health > 0 then
                    AimBotSkillPosition = game.Players:FindFirstChild(_G.SelectPlayer).Character:FindFirstChild("HumanoidRootPart").Position
                end
            end
        end
    end)

    Tabs.Combat:AddSection("Walk & Jump")

    local Slider3 = Tabs.Combat:AddSlider("WalkSpeed", {
        Title = "WalkSpeed",
        Description = "",
        Default = 26,
        Min = 26,
        Max = 1000,
        Rounding = 1,
        Callback = function(value)
            if _G.EnableSpeed then
            getgenv().WalkSpeedValue = value
            if getgenv().WalkSpeedValue then
                local Player = game:service'Players'.LocalPlayer
                Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
                    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
                end)
                Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
            end
            end
        end
    })

    local To4 = Tabs.Combat:AddToggle("Enable WalkSpeed", {Title = "Enable WalkSpeed", Default = false })
    To4:OnChanged(function(value)
    _G.EnableSpeed = value
    end)

    local Slider4 = Tabs.Combat:AddSlider("JumpPower", {
        Title = "JumpPower",
        Description = "",
        Default = 50,
        Min = 50,
        Max = 1000,
        Rounding = 1,
        Callback = function(value)
            if _G.EnableJump then
            getgenv().JumpValue = value
            if getgenv().JumpValue then
                game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = getgenv().JumpValue
            end
        end
        end
    })

    local To5 = Tabs.Combat:AddToggle("Enable JumpPower", {Title = "Enable JumpPower", Default = false })
    To5:OnChanged(function(value)
    _G.EnableJump = value
    end)

    -- STATS TAB
    local Pointstat = Tabs.Stats:AddParagraph({
        Title = "Stat Points Status",
        Content = "📊 You Have nil Stat Points!"
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                Pointstat:SetDesc("📊 You Have "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value).." Stat Points!")
            end)
        end
    end)

    local To5 = Tabs.Stats:AddToggle("Auto Kaitun", {Title = "Auto Kaitun", Default = false })
    To5:OnChanged(function(value)
        _G.Auto_Stats_Kaitun = value
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Stats_Kaitun then
                    if World1 then
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Melee",
                            [3] = _G.PointStats
                            }
                            
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    elseif World2 then
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Melee",
                            [3] = _G.PointStats
                            }
                            
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Defense",
                            [3] = _G.PointStats
                            }
                            
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     elseif World3 then
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Melee",
                            [3] = _G.PointStats
                            }
                            
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {
                            [1] = "AddPoint",
                            [2] = "Defense",
                            [3] = _G.PointStats
                            }
                            
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end)
        end
    end)

    local To6 = Tabs.Stats:AddToggle("Auto Melee", {Title = "Auto Melee", Default = false })
    To6:OnChanged(function(value)
        _G.Auto_Melee = value
    end)

    local To7 = Tabs.Stats:AddToggle("Auto Defense", {Title = "Auto Defense", Default = false })
    To7:OnChanged(function(value)
        _G.Auto_Defense = value
    end)

    local To8 = Tabs.Stats:AddToggle("Auto Sword", {Title = "Auto Sword", Default = false })
    To8:OnChanged(function(value)
        _G.Auto_Sword = value
    end)

    local To8 = Tabs.Stats:AddToggle("Auto Gun", {Title = "Auto Gun", Default = false })
    To8:OnChanged(function(value)
        _G.Auto_Gun = value
    end)

    local To9 = Tabs.Stats:AddToggle("Auto Devil Fruits", {Title = "Auto Devil Fruits", Default = false })
    To9:OnChanged(function(value)
        _G.Auto_DevilFruit = value
    end)

    _G.PointStats = 1
    local Slider5 = Tabs.Stats:AddSlider("Select Point", {
        Title = "Select Point",
        Description = "",
        Default = 1,
        Min = 1,
        Max = 100,
        Rounding = 1,
        Callback = function(value)
            _G.PointStats = value
        end
    })

    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Melee then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Defense then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Sword then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Gun then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_DevilFruit then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Devil Fruit",_G.PointStats)
                    end
                end
            end)
        end
    end)

    -- TELEPORT TAB
    if World1 then
    local Dropdown22 = Tabs.Teleport:AddDropdown("SelectSea", {
        Title = "Select Sea",
        Values = {"Sea 2","Sea 3"},
        Multi = false,
        Default = 1,
    })
    Dropdown22:OnChanged(function(value)
        _G.TPSea = value
    end)
    elseif World2 then
    local Dropdown22 = Tabs.Teleport:AddDropdown("SelectSea", {
        Title = "Select Sea",
        Values = {"Sea 1","Sea 3"},
        Multi = false,
        Default = 1,
    })
    Dropdown22:OnChanged(function(value)
        _G.TPSea = value
    end)
    elseif World3 then
    local Dropdown22 = Tabs.Teleport:AddDropdown("SelectSea", {
        Title = "Select Sea",
        Values = {"Sea 1","Sea 2"},
        Multi = false,
        Default = 1,
    })
    Dropdown22:OnChanged(function(value)
        _G.TPSea = value
    end)
    end

    Tabs.Teleport:AddButton({
        Title = "Teleport",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Are you sure?",
                Content = "You will teleported to selected sea.",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            if _G.TPSea == "Sea 1" then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                            elseif _G.TPSea == "Sea 2" then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            elseif _G.TPSea == "Sea 3" then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                            end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Teleport:AddSection("Island")

    if World1 then
        local Dropdown21 = Tabs.Teleport:AddDropdown("SelectIsland", {
            Title = "Select Island",
            Values = {                    
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City",
            "Shank Room",
            "Mob Island"},
            Multi = false,
            Default = 1,
        })
        Dropdown21:OnChanged(function(value)
            _G.SelectIsland = value
        end)
        elseif World2 then
        local Dropdown21 = Tabs.Teleport:AddDropdown("SelectIsland", {
            Title = "Select Island",
            Values = {                    
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island"},
            Multi = false,
            Default = 1,
        })
        Dropdown21:OnChanged(function(value)
            _G.SelectIsland = value
        end)
        elseif World3 then
        local Dropdown21 = Tabs.Teleport:AddDropdown("SelectIsland", {
            Title = "Select Island",
            Values = {                    
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "MiniSky", 
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Tiki Outpost"},
            Multi = false,
            Default = 1,
        })
        Dropdown21:OnChanged(function(value)
            _G.SelectIsland = value
        end)
    end

    local To10 = Tabs.Teleport:AddToggle("Teleport", {Title = "Teleport", Default = false })
    To10:OnChanged(function(value)
        _G.TeleportIsland = value
        if not BypassTP then
        if _G.TeleportIsland == true then
            repeat wait()
                if _G.SelectIsland == "WindMill" then
                    TP(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    TP(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    TP(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    TP(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    TP(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    TP(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    TP(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    TP(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    TP( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    TP(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    TP( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    TP(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    TP(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    TP(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    TP(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    TP(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    TP(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    TP(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    TP(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    TP(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    TP( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    TP(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    TP( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    TP(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    TP(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    TP(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    TP(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    TP(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    TP(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    TP(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    TP(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    TP(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.99951, 314.942932, -3151.8335, 0.392142147, -5.9065453e-08, -0.919904649, -1.27538282e-08, 1, -6.96450115e-08, 0.919904649, 3.90430479e-08, 0.392142147))
                elseif _G.SelectIsland == "MiniSky" then
                    TP(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    TP(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5744.20264, 610.85144, -268.243195, -0.999515533, 5.03111259e-08, 0.0311248209, 4.95673049e-08, 1, -2.46694931e-08, -0.0311248209, -2.3114767e-08, -0.999515533))
                elseif _G.SelectIsland == "Floating Turtle" then
                    TP(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                elseif _G.SelectIsland == "Haunted Castle" then
                    TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    TP(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    TP(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    TP(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif _G.SelectIsland == "Tiki Outpost" then
                    TP(CFrame.new(-16236.959, 9.08636189, 440.422028, -0.0127099464, -1.08287228e-08, -0.999919236, 2.43805172e-08, 1, -1.11394973e-08, 0.999919236, -2.45201299e-08, -0.0127099464))
                end
            until not _G.TeleportIsland
        end
        elseif BypassTP then
        if _G.TeleportIsland == true then
                if _G.SelectIsland == "WindMill" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Marine" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Middle Town" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Jungle" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Pirate Village" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Desert" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Snow Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "MarineFord" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Colosseum" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Sky Island 1" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Sky Island 2" then  
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Magma Village" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Shank Room" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Mob Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "The Cafe" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Frist Spot" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Dark Area" then
                TP(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                TP(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                TP(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Factory" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Colossuim" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Zombie Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Two Snow Mountain" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Punk Hazard" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Cursed Ship" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(923.40197753906, 125.05712890625, 32885.875)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Ice Castle" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Forgotten Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Ussop Island" then
                TP(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                TP(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Castle On The Sea" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.99951, 314.942932, -3151.8335, 0.392142147, -5.9065453e-08, -0.919904649, -1.27538282e-08, 1, -6.96450115e-08, 0.919904649, 3.90430479e-08, 0.392142147))
                elseif _G.SelectIsland == "MiniSky" then
                TP(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Hydra Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5744.20264, 610.85144, -268.243195, -0.999515533, 5.03111259e-08, 0.0311248209, 4.95673049e-08, 1, -2.46694931e-08, -0.0311248209, -2.3114767e-08, -0.999515533))
                elseif _G.SelectIsland == "Floating Turtle" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                elseif _G.SelectIsland == "Haunted Castle" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Ice Cream Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Peanut Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Cake Island" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                elseif _G.SelectIsland == "Tiki Outpost" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16236.959, 9.08636189, 440.422028, -0.0127099464, -1.08287228e-08, -0.999919236, 2.43805172e-08, 1, -1.11394973e-08, 0.999919236, -2.45201299e-08, -0.0127099464)
                wait(0.1)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                end
         end
        end
        StopTween(_G.TeleportIsland)
    end)

    -- DUNGEON TAB
    local TimeRaid = Tabs.Dungeon:AddParagraph({
        Title = "Dungeon Status",
        Content = "⚔️ Waiting For Dungeon.."
    })

    spawn(function()
        pcall(function()
            while wait() do
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    CanKill = true
                    TimeRaid:SetDesc("⚔️ "..game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
                else
                    CanKill = false
                    TimeRaid:SetDesc("⚔️ Waiting For Dungeon..")
                end
            end
        end)
    end)

    local Dropdown29 = Tabs.Dungeon:AddDropdown("FruitRatirity", {
        Title = "Select Fruit Ratirity",
        Values = {                
        "Classic",
        "Common",
        "Uncommon",
        "Rare",
        "Legendary", 
        "Mythical"},
        Multi = false,
        Default = 1,
    })
    Dropdown29:OnChanged(function(value)
        _G.FruitRat = value
    end)

    local T = Tabs.Dungeon:AddToggle("Auto Farm Dungeon", {Title = "Auto Farm Dungeon", Default = false })
    T:OnChanged(function(value)
        _G.AutoFarmDungeon = value
        StopTween(_G.AutoFarmDungeon)
    end)

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.AutoFarmDungeon then
                    --
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,70,100))
                    end
                    end
                    --
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                    --
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                            if World2 then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif World3 then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                    end
                    --
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.Transparency = 0.8
                        end
                    end
                    --
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                    --
                end
            end)
        end
    end)
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if _G.AutoFarmDungeon then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"Cannot hold multiple Blox Fruits at once.") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end)
    end)
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if _G.AutoFarmDungeon then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"You don't have this fruit stored.") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end)
    end)

    spawn(function()
        while wait(.5) do
            pcall(function()
                if _G.AutoFarmDungeon then
                    if Inventory_Fruit then
                        Inventory_Fruit = nil
                    end
                    fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
                    for i,v in pairs(fruit) do
                    if _G.FruitRat == "Common" then
                        if v["Price"] < 180000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                        end
                    elseif _G.FruitRat == "Mythical" then
                        if v["Price"] >= 2500000 and v["Price"] <= 5000000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                        end
                    elseif _G.FruitRat == "Legendary" then
                        if v["Price"] >= 1000000 and v["Price"] <= 2400000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                        end
                    elseif _G.FruitRat == "Uncommon" then
                        if v["Price"] >= 250000 and v["Price"] <= 600000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                        end
                    elseif _G.FruitRat == "Rare" then
                        if v["Price"] >= 650000 and v["Price"] <= 850000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                        end
                    elseif _G.FruitRat == "Classic" then
                        if v["Price"] < 850000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                        end
                    end
                    end
                else
                    wait(2)
                end
            end)
        end
    end)

    local T2 = Tabs.Dungeon:AddToggle("Auto Next Island", {Title = "Auto Next Island", Default = false })
    T2:OnChanged(function(value)
        _G.Auto_Dungeon = value
        StopTween(_G.Auto_Dungeon)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.Auto_Dungeon or _G.AutoFarmDungeon then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                            TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                            TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                            TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                            TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,80,100))
                        end
                    end
                end
            end
        end)
    end)

    local T3 = Tabs.Dungeon:AddToggle("Kill Aura", {Title = "Kill Aura", Default = false })
    T3:OnChanged(function(value)
        _G.KillAura = value
    end)

    spawn(function()
        while wait() do
            if _G.KillAura or _G.AutoFarmDungeon then
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        pcall(function()
                            repeat wait(.1)
                                if CanKill == true then
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                v.Humanoid.Health = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.HumanoidRootPart.Transparency = 0.8
                                end
                            until not _G.KillAura or not v.Parent or v.Humanoid.Health <= 0
                        end)
                    end
                end
            end
        end
    end)
    
    local T4 = Tabs.Dungeon:AddToggle("Auto Awakener", {Title = "Auto Awakener", Default = false })
    T4:OnChanged(function(value)
        _G.KillAura = value
    end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)

    Tabs.Dungeon:AddSection("Others")

    local Dropdow = Tabs.Dungeon:AddDropdown("Select Chips", {
        Title = "Select Chips",
        Values = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},
        Multi = false,
        Default = 1,
    })
    Dropdow:OnChanged(function(value)
        _G.SelectChip = value
    end)

    local T5 = Tabs.Dungeon:AddToggle("Auto Select Dungeon", {Title = "Auto Select Dungeon", Default = false })
    T5:OnChanged(function(value)
        _G.AutoSelectDungeon = value
    end)

    spawn(function()
        while wait() do
            if _G.AutoSelectDungeon or _G.AutoFarmDungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame") then
                        _G.SelectChip = "Flame"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice") then
                        _G.SelectChip = "Ice"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake") then
                        _G.SelectChip = "Quake"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light") then
                        _G.SelectChip = "Light"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark") then
                        _G.SelectChip = "Dark"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider-Spider") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider-Spider") then
                        _G.SelectChip = "Spider"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble") then
                        _G.SelectChip = "Rumble"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                        _G.SelectChip = "Magma"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        _G.SelectChip = "Human: Buddha"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand") then
                        _G.SelectChip = "Sand"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                        _G.SelectChip = "Bird: Phoenix"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough-Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough-Dough") then
                        _G.SelectChip = "Dough"
                    else
                        _G.SelectChip = "Flame"
                    end
                end)
            end
        end
    end)

    local T6 = Tabs.Dungeon:AddToggle("Auto Buy Chip", {Title = "Auto Buy Chip", Default = false })
    T6:OnChanged(function(value)
        _G.AutoBuyChip = value
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoBuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end
                    end
                end
            end
        end)
    end)

    local T7 = Tabs.Dungeon:AddToggle("Auto Start Dungeon", {Title = "Auto Start Dungeon", Default = false })
    T7:OnChanged(function(value)
        _G.Auto_StartRaid = value
    end)

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.Auto_StartRaid then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                            if World2 then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif World3 then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                    end
                end
            end)
        end
    end)

    Tabs.Dungeon:AddSection("Law Dungeon")

    local T8 = Tabs.Dungeon:AddToggle("Auto Buy Law Chip", {Title = "Auto Buy Law Chip", Default = false })
    T8:OnChanged(function(value)
        _G.Auto_Buy_Law_Chip = value
    end)

    spawn(function()
        while wait() do
            if _G.Auto_Buy_Law_Chip then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order") or game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    
                    else
                        local args = {
                            [1] = "BlackbeardReward",
                            [2] = "Microchip",
                            [3] = "2"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end)
            end
        end
    end)

    local T9 = Tabs.Dungeon:AddToggle("Auto Start Law Dungeon", {Title = "Auto Start Law Dungeon", Default = false })
    T9:OnChanged(function(value)
        _G.Auto_Start_Law_Dungeon = value
    end)

    spawn(function()
        while wait() do
            if _G.Auto_Start_Law_Dungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                    end
                end)
            end
        end
    end)

    local T10 = Tabs.Dungeon:AddToggle("Auto Kill Law", {Title = "Auto Kill Law", Default = false })
    T10:OnChanged(function(value)
        _G.Auto_Kill_Law = value
    end)

    spawn(function()
        while wait() do
            if _G.Auto_Kill_Law then
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if _G.Auto_Kill_Law and v.Name == "Order" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    Click()
                                until not _G.Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end
                    end 
                end)
            end
        end
    end)

    -- DEVIL FRUIT TAB
    FruitList = {
        "Rocket-Rocket",
        "Spin-Spin",
        "Chop-Chop",
        "Spring-Spring",
        "Bomb-Bomb",
        "Smoke-Smoke",
        "Spike-Spike",
        "Flame-Flame",
        "Bird: Falcon",
        "Ice-Ice",
        "Sand-Sand",
        "Dark-Dark",
        "Revive-Revive",
        "Diamond-Diamond",
        "Light-Light",
        "Love-Love",
        "Rubber-Rubber",
        "Barrier-Barrier",
        "Magma-Magma",
        "Quake-Quake",
        "Human-Human: Buddha",
        "Spider-Spider",
		"Sound-Sound",
        "Bird-Bird: Phoenix",
        "Portal-Portal",
        "Rumble-Rumble",
        "Paw-Paw",
        "Blizzard-Blizzard",
        "Gravity-Gravity",
		"Mammoth-Mammoth",
        "T-Rex-T-Rex",
        "Dough-Dough",
        "Shadow-Shadow",
        "Venom-Venom",
        "Control-Control",
        "Spirit-Spirit",
        "Dragon-Dragon",
        "Leopard-Leopard",
        "Kitsune-Kitsune"
    }
    
    _G.SelectFruit = ""
    local Dropdow1 = Tabs.Fruit:AddDropdown("SelectFruit", {
        Title = "Select Devil Fruit",
        Values = FruitList,
        Multi = false,
        Default = 1,
    })
    Dropdow1:OnChanged(function(value)
        _G.SelectFruit = value
    end)

    local a1 = Tabs.Fruit:AddToggle("Auto Buy Selected Devil Fruit", {Title = "Auto Buy Selected Devil Fruit", Default = false })
    a1:OnChanged(function(value)
        _G.AutoBuyFruitSniper = value
    end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoBuyFruitSniper then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
                end 
            end
        end)
    end)

    Tabs.Fruit:AddSection("Others")

    function SpawnFruit()
        for i, v in pairs(game:GetObjects("rbxassetid://11142722110")[1]:GetChildren()) do
            v.Parent = game.Workspace.Map
            v:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
            if v.Fruit:FindFirstChild("AnimationController") then
            v.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v.Fruit:FindFirstChild("Idle")):Play()
            end
            v.Handle.Touched:Connect(function(otherPart)
                if otherPart.Parent == game.Players.LocalPlayer.Character then
                v.Parent = game.Players.LocalPlayer.Backpack
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end
            end)
        end
    end

    Tabs.Fruit:AddButton({
        Title = "Rain Fruits",
        Description = "Fruits will rain when you click this. Its only visible for you!",
        Callback = function()
        SpawnFruit()
        end
    })

    local a2 = Tabs.Fruit:AddToggle("Auto Buy Random Devil Fruit", {Title = "Auto Buy Random Devil Fruit", Default = false })
    a2:OnChanged(function(value)
        _G.Random_Auto = value
    end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Random_Auto then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                end 
            end
        end)
    end)

    local a3 = Tabs.Fruit:AddToggle("Bring Devil Fruit", {Title = "Bring Devil Fruit", Default = false })
    a3:OnChanged(function(value)
        _G.BringFruit = value
    end)

    spawn(function()
        while wait() do
            if _G.BringFruit then
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if v:IsA("Tool") and string.find(v.Name,"Fruit") then 
                            wait(2)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
                        end
                    end
                end)
            end
        end
    end)

    local a4 = Tabs.Fruit:AddToggle("Auto Store Devil Fruit", {Title = "Auto Store Devil Fruit", Default = false })
    a4:OnChanged(function(value)
        _G.AutoStore = value
    end)

    spawn(function()
        while task.wait() do
            if _G.AutoStore then
                pcall(function()
                    local plr = game.Players.LocalPlayer
                    local chr = plr.Character
                            local fruit = chr:FindFirstChildOfClass("Tool") and chr:FindFirstChildOfClass("Tool").Name:find("Fruit") and chr:FindFirstChildOfClass("Tool") or (function()
                                for _,fr in plr.Backpack:GetChildren() do
                                    if fr.Name:find("Fruit") then
                                        _G.Store = true
                                        return fr
                                    else
                                        _G.Store = false
                                    end
                                end
                            end)()
                            if _G.Store then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", fruit:GetAttribute("OriginalName"), fruit)
                        end
                end)
            end
        end
    end)

    local a5 = Tabs.Fruit:AddToggle("Auto Drop Devil Fruit", {Title = "Auto Drop Devil Fruit", Default = false })
    a5:OnChanged(function(value)
        _G.AutoDrop = value
    end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoDrop then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                    EquipWeapon(v.Name)
                    end
                    end
                end 
            end
        end)
    end)

    spawn(function()
        while task.wait() do
            if _G.AutoDrop then
                pcall(function()
                    local plr = game.Players.LocalPlayer
                    local chr = plr.Character
                            local fruit = chr:FindFirstChildOfClass("Tool") and chr:FindFirstChildOfClass("Tool").Name:find("Fruit") and chr:FindFirstChildOfClass("Tool") or (function()
                                for _,fr in plr.Backpack:GetChildren() do
                                    if fr.Name:find("Fruit") then
                                        _G.AutoDrop2 = true
                                        return fr
                                    else
                                        _G.AutoDrop2 = false
                                    end
                                end
                            end)()
                            if _G.AutoDrop2 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Drop", fruit:GetAttribute("OriginalName"), fruit)
                        end
                end)
            end
        end
    end)

    -- SHOP TAB
    Tabs.Shop:AddButton({
        Title = "Buy Cyborg",
        Description = "",
        Callback = function()
            local args = {
                [1] = "CyborgTrainer",
                [2] = "Buy"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Ghoul",
        Description = "",
        Callback = function()
            local args = {
                [1] = "Ectoplasm",
                [2] = "BuyCheck",
                [3] = 4
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
                [1] = "Ectoplasm",
                [2] = "Change",
                [3] = 4
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Reset Stats",
        Description = "",
        Callback = function()
            local args = {
                [1] = "BlackbeardReward",
                [2] = "Refund",
                [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Random Race",
        Description = "",
        Callback = function()
            local args = {
                [1] = "BlackbeardReward",
                [2] = "Reroll",
                [3] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Random Suprise",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
        end
    })

    Tabs.Shop:AddSection("Abilities")

    Tabs.Shop:AddButton({
        Title = "Buy Geppo",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Buso Haki",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Soru",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Observation(Ken) Haki",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
        end
    })

    Tabs.Shop:AddSection("Fighting Style")

    Tabs.Shop:AddButton({
        Title = "Buy Black Leg",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
        end
    })
    
    Tabs.Shop:AddButton({
        Title = "Buy Electro",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Fishman Karate",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Dragon Claw",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Superhuman",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Death Step",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Sharkman Karate",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Electric Claw",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Dragon Talon",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Godhuman",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
        end
    })

    Tabs.Shop:AddSection("Sword")

    Tabs.Shop:AddButton({
        Title = "Buy Cutlass",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Katana",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Iron Mace",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Dual Katana",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Triple Katana",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Pipe",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Dual Headed Blade",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Bisento",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Soul Cane",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
        end
    })

    Tabs.Shop:AddSection("Gun")

    Tabs.Shop:AddButton({
        Title = "Buy Slingshot",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Musket",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Flintlock",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Refined Flintlock",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Cannon",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
        end
    })

    Tabs.Shop:AddButton({
        Title = "Buy Kabucha",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
        end
    })

    -- OTHERS TAB
    Tabs.Misc:AddButton({
        Title = "Rejoin",
        Description = "",
        Callback = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end
    })

    Tabs.Misc:AddButton({
        Title = "Server Hop",
        Description = "",
        Callback = function()
            Hop()
        end
    })

    Tabs.Misc:AddButton({
        Title = "Server Hop (Low Players)",
        Description = "",
        Callback = function()
            getgenv().AutoTeleport = true
            getgenv().DontTeleportTheSameNumber = true 
            getgenv().CopytoClipboard = false
            if not game:IsLoaded() then
                print("Game is loading waiting...")
            end
            local maxplayers = math.huge
            local serversmaxplayer;
            local goodserver;
            local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
            function serversearch()
                for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                    if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                        serversmaxplayer = v.maxPlayers
                        maxplayers = v.playing
                        goodserver = v.id
                    end
                end       
            end
            function getservers()
                serversearch()
                for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                    if i == "nextPageCursor" then
                        if gamelink:find("&cursor=") then
                            local a = gamelink:find("&cursor=")
                            local b = gamelink:sub(a)
                            gamelink = gamelink:gsub(b, "")
                        end
                        gamelink = gamelink .. "&cursor=" ..v
                        getservers()
                    end
                end
            end 
            getservers()
            if AutoTeleport then
                if DontTeleportTheSameNumber then 
                    if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                        return warn("It has same number of players (except you)")
                    elseif goodserver == game.JobId then
                        return warn("Your current server is the most empty server atm") 
                    end
                end
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
            end
        end
    })

    Tabs.Misc:AddSection("Webhook")

    local Inpu1 = Tabs.Misc:AddInput("WebhookLink", {
        Title = "Set Webhook Url",
        Default = "Set Webhook Url",
        Placeholder = "Set Webhook Url",
        Numeric = false,
        Finished = false,
    })
    Inpu1:OnChanged(function(value)
        _G.URL = value
    end)

    local b1 = Tabs.Misc:AddToggle("Auto Send Information", {Title = "Auto Send Information", Default = false })
    b1:OnChanged(function(value)
        _G.SendWeb = value
    end)

    Tabs.Misc:AddSlider("Set Webhook Time (S)", {
        Title = "Set Webhook Time (S)",
        Description = "",
        Default = 30,
        Min = 1,
        Max = 1000,
        Rounding = 1,
        Callback = function(value)
            _G.WebhookTime = value
        end
    })

    Tabs.Misc:AddButton({
        Title = "Test Webhook",
        Description = "",
        Callback = function()
            local url = _G.URL
            local data = {
                ["username"] = 'Raito Hub', -- Webhook name here
                ['content'] = '',
                ["avatar_url"] = "https://cdn.discordapp.com/attachments/1048655177898537030/1066968474083139675/kindpng_1622885.png",
                ["embeds"] = {
                    {
                        ["description"] = "**Information Webhook**",
                        ["color"] = tonumber(5763719), -- color id		
                        ["type"] = "rich",
                        ["fields"] =  {
                            {
                                ["name"] = "[👥] Username - "..game.Players.LocalPlayer.DisplayName,
                                ["value"] = ''
                            },
                            {
                                ["name"] = "[🔗] Level - "..game:GetService("Players").LocalPlayer.Data.Level.Value,
                                ["value"] = '',
                            },
                            {
                                ["name"] = "[💸] Beli - "..game:GetService("Players").LocalPlayer.Data.Beli.Value,
                                ["value"] = '',
                            },
                            {
                                ["name"] = "[🎉] Fragment - "..game:GetService("Players").LocalPlayer.Data.Fragments.Value,
                                ["value"] = '',
                            },
                            {
                                ["name"] = "[👉] Stat Points - "..game:GetService("Players").LocalPlayer.Data.Points.Value,
                                ["value"] = '',
                            }
                        },
                        ["footer"] = {
                            ["text"] = "".._G.WebhookTime..' Seconds Until Next Webhook',
                        },
                        ["timestamp"] = DateTime.now():ToIsoDate(),
                    }
                },
            }
            local newdata = game:GetService("HttpService"):JSONEncode(data)
            local headers = {["content-type"] = "application/json"}
            request = http_request or request or HttpPost or syn.request
            local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
            request(abcdef)
        end
    })

    spawn(function()
        while wait(_G.WebhookTime) do
        if _G.SendWeb then				
            local url = _G.URL
            local data = {
                ["username"] = 'Raito Hub', -- Webhook name here
                ['content'] = '',
                ["avatar_url"] = "https://cdn.discordapp.com/attachments/1048655177898537030/1066968474083139675/kindpng_1622885.png",
                ["embeds"] = {
                    {
                        ["description"] = "**Information Webhook**",
                        ["color"] = tonumber(5763719), -- color id		
                        ["type"] = "rich",
                        ["fields"] =  {
                            {
                                ["name"] = "[👥] Username - "..game.Players.LocalPlayer.DisplayName,
                                ["value"] = ''
                            },
                            {
                                ["name"] = "[🔗] Level - "..game:GetService("Players").LocalPlayer.Data.Level.Value,
                                ["value"] = '',
                            },
                            {
                                ["name"] = "[💸] Beli - "..game:GetService("Players").LocalPlayer.Data.Beli.Value,
                                ["value"] = '',
                            },
                            {
                                ["name"] = "[🎉] Fragment - "..game:GetService("Players").LocalPlayer.Data.Fragments.Value,
                                ["value"] = '',
                            },
                            {
                                ["name"] = "[👉] Stat Points - "..game:GetService("Players").LocalPlayer.Data.Points.Value,
                                ["value"] = '',
                            }
                        },
                        ["footer"] = {
                            ["text"] = "".._G.WebhookTime..' Seconds Until Next Webhook',
                        },
                        ["timestamp"] = DateTime.now():ToIsoDate(),
                    }
                },
            }
            local newdata = game:GetService("HttpService"):JSONEncode(data)
            local headers = {["content-type"] = "application/json"}
            request = http_request or request or HttpPost or syn.request
            local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
            request(abcdef)
        end
        end
    end)

    Tabs.Misc:AddSection("Codes")

    Tabs.Misc:AddButton({
        Title = "Redeem All Codes",
        Description = "",
        Callback = function()
            local x2Code = {
                "SECRET_ADMIN",
                "KITT_RESET",
                "TY_FOR_WATCHING",
                "GAMER_ROBOT_1M ",
                "Enyu_is_Pro",
                "Magicbus",
                "Sub2Fer999",
                "Starcodeheo",
                "JCWK",
                "KittGaming",
                "Bluxxy",
                "Sub2OfficialNoobie",
                "TheGreatAce",
                "Axiore",
                "Sub2Daigrock",
                "TantaiGaming",
                "StrawHatMaine",
                "SUB2GAMERROBOT_EXP1",
                "3BVISITS",
                "UPD16",
                "FUDD10",
                "BIGNEWS",
                "THEGREATACE",
                "SUB2GAMERROBOT_EXP1",
                "StrawHatMaine",
                "Sub2OfficialNoobie",
                "SUB2NOOBMASTER123",
                "Sub2Daigrock",
                "Axiore",
                "TantaiGaming",
                "STRAWHATMAINE"
            }
            function RedeemCode(value)
                game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
            end
            for i,v in pairs(x2Code) do
                RedeemCode(v)
            end
        end
    })

    Tabs.Misc:AddSection("Race V4 Helper")

    local n = Tabs.Misc:AddToggle("Remove Fog", {Title = "Remove Fog", Default = false })
    n:OnChanged(function(value)
        RemoveFog = value
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if RemoveFog then
                if World1 or World2 then
                    game.Lighting.FogEnd = math.huge
                    if game:GetService("Lighting"):FindFirstChild("FantasySky") then game:GetService("Lighting").FantasySky:Destroy()
                    end
                elseif World3 then
                    game.Lighting.FogEnd = math.huge
                    if game:GetService("Lighting"):FindFirstChild("Sky") then game:GetService("Lighting").Sky:Destroy()
                    end
                end
                else
                    game.Lighting.FogEnd = 2500
                end
            end)
        end
    end)

    Tabs.Misc:AddButton({
        Title = "Teleport Advanced Fruit Dealer",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "You sure?",
                Content = "You will teleported to the advanced fruit dealer.",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                                AllNPCS = getnilinstances()
                                for r, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                                table.insert(AllNPCS, v)
                                end
                                for r, v in pairs(AllNPCS) do
                                if v.Name == "Advanced Fruit Dealer" then
                                toTarget(v.HumanoidRootPart.CFrame)
                                end
                               end
                            end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddButton({
        Title = "Teleport Gear",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "You sure?",
                Content = "You will teleported to the gear.",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                                for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
                                    if v:IsA("MeshPart") and v.MeshId == "rbxassetid://10153114969" then 
                                        if v.Material == Enum.Material.Neon then  
                                            TP(v.CFrame)
                                        end
                                    else
                                        print("Can't find the gear!")
                                    end
                                end
                            else
                                print("Mirage not spawned!")
                            end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Misc:AddButton({
        Title = "Teleport Top Of Great Tree",
        Description = "",
        Callback = function()
            TP(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625))
        end
    })

    Tabs.Misc:AddButton({
        Title = "Teleport Temple Of Time",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.3555, 14896.5342, 102.624695, -0.161819234, 3.38540431e-08, 0.9868204, -1.84644104e-08, 1, -3.7333983e-08, -0.9868204, -2.42624125e-08, -0.161819234))
        end
    })

    Tabs.Misc:AddButton({
        Title = "Teleport Lever",
        Description = "",
        Callback = function()
            TP(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
        end
    })

    local Dropdo2323 = Tabs.Misc:AddDropdown("Select Door", {
        Title = "Select Door",
        Values = {                        
        "Cyborg Door",
        "Fish Door",
        "Ghoul Door",
        "Human Door",
        "Mink Door",
        "Sky Door"},
        Multi = false,
        Default = 1,
    })
    Dropdo2323:OnChanged(function(value)
        _G.SelectDoor = value
    end)

    Tabs.Misc:AddButton({
        Title = "Teleport",
        Description = "",
        Callback = function()
                if _G.SelectDoor == "Cyborg Door" then
                    TP(CFrame.new(28492.4199, 14895.6631, -422.109589, 0.17550987, 0, 0.984477758, 0, 1, 0, -0.984477758, 0, 0.17550987))
                    elseif _G.SelectDoor == "Fish Door" then
                    TP(CFrame.new(28223.9219, 14891.0605, -210.579651, 0.153827101, -2.58838906e-08, 0.988097787, 2.69474487e-08, 1, 2.20004974e-08, -0.988097787, 2.32424409e-08, 0.153827101))
                    elseif _G.SelectDoor == "Ghoul Door" then
                    TP(CFrame.new(28672.6836, 14890.3594, 454.776306, -0.999987304, -5.09859543e-10, 0.00503850216, -8.76849038e-10, 1, -7.28348084e-08, -0.00503850216, -7.28383043e-08, -0.999987304))
                    elseif _G.SelectDoor == "Human Door" then
                    TP(CFrame.new(29237.5195, 14890.6582, -207.013611, -0.00871380232, -5.08056104e-08, -0.999962032, -6.32283417e-08, 1, -5.02565598e-08, 0.999962032, 6.27880112e-08, -0.00871380232))
                    elseif _G.SelectDoor == "Mink Door" then
                    TP(CFrame.new(29020.8125, 14890.6582, -379.224976, 0.368530184, -2.80101116e-08, -0.929615796, -7.03799188e-08, 1, -5.80317554e-08, 0.929615796, 8.6812733e-08, 0.368530184))
                    elseif _G.SelectDoor == "Sky Door" then
                    TP(CFrame.new(28968.1367, 14919.6719, 232.645401, -0.0785072297, -4.52960762e-08, -0.996913552, -3.1447172e-08, 1, -4.29598401e-08, 0.996913552, 2.7977455e-08, -0.0785072297))
                end
        end
    })

    local Dropdo23233 = Tabs.Misc:AddDropdown("Select Trial", {
        Title = "Select Trial",
        Values = {                        
        "Mink",
        "Sky",
        "Cyborg"},
        Multi = false,
        Default = 1,
    })
    Dropdo23233:OnChanged(function(value)
        _G.SelectTrial = value 
    end)

    Tabs.Misc:AddButton({
        Title = "Auto Trial",
        Description = "",
        Callback = function()
            if _G.SelectTrial == "Mink" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.MinkTrial.Ceiling.CFrame * CFrame.new(0,-5,0)
            elseif _G.SelectTrial == "Sky" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.SkyTrial.Model.FinishPart.CFrame
            elseif _G.SelectTrial == "Cyborg" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,300,0)
            end
        end
    })

    local Dropdo232333 = Tabs.Misc:AddDropdown("Select Race", {
        Title = "Select Race",
        Values = {"Mink V4","Fishman V4","Skypeian V4","Ghoul V4","Cyborg V4","Human V4"},
        Multi = false,
        Default = 1,
    })
    Dropdo232333:OnChanged(function(value)
        _G.RaceV4 = value 
    end)

    Tabs.Misc:AddButton({
        Title = "Transform",
        Description = "",
        Callback = function()
            if _G.RaceV4 == "Mink V4" then
                local Notification = require(game:GetService("ReplicatedStorage").Notification)
                Notification.new("<Color=Purple>Mink V4 Unlocked!<Color=/>"):Display()
                wait()
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                local Player = game:GetService("Players").LocalPlayer
                
                local Eff = {
                    Character = Player.Character,
                    Duration = .25,
                    CFrame = Player.Character.HumanoidRootPart.CFrame,
                }
                
                require(ReplicatedStorage.Effect.Container.KamuiCam)(Eff)
                wait()
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                local Player = game:GetService("Players").LocalPlayer
                
                local Eff = {
                    Character = Player.Character,
                    Duration = .25,
                    CFrame = Player.Character.HumanoidRootPart.CFrame,
                }
                
                wait()
                setthreadcontext(5)
                
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                local Player = game:GetService("Players").LocalPlayer
                
                local ArgsTransform = {
                    Character = game.Players.LocalPlayer.Character,
                    CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                    Color1 = Color3.fromRGB(102, 255, 153),
                    Color2 = Color3.fromRGB(102, 255, 153),
                    Color3 = Color3.fromRGB(102, 255, 153),
                }
                
                Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
                
                delay(1, function()
                    pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
                end)
                wait(0.5)
                
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                local Player = game:GetService("Players").LocalPlayer
                
                local Eff = {
                    Character = Player.Character,
                    Duration = .25,
                    CFrame = Player.Character.HumanoidRootPart.CFrame,
                }
                
                wait()
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                local Player = game:GetService("Players").LocalPlayer
                
                local Eff = {
                    Character = Player.Character,
                    Duration = .25,
                    CFrame = Player.Character.HumanoidRootPart.CFrame,
                }
                
                wait()
                game:GetService("RunService").RenderStepped:Connect(function()
                    pcall(function()
                        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * 150/50)
                        end
                    end)
                end)
                wait()
                while true do wait(1)
                    pcall(function()
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                local Player = game:GetService("Players").LocalPlayer
                
                local Eff = {
                    Character = Player.Character,
                    Duration = .25,
                    CFrame = CFrame,
                }
                
                require(ReplicatedStorage.Effect.Container.Shared.LightningTP)(Eff)
                   end)
                end
                  elseif _G.RaceV4 == "Fishman V4" then
                       wait()
                 setthreadcontext(5)
                
                 local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                 local Player = game:GetService("Players").LocalPlayer
                
                 local ArgsTransform = {
                  Character = game.Players.LocalPlayer.Character,
                  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                  Color1 = Color3.fromRGB(5, 115, 166),
                  Color2 = Color3.fromRGB(5, 115, 166),
                  Color3 = Color3.fromRGB(5, 115, 166),
                 }
                
                 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
                
                 delay(1, function()
                  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
                  end)
                  elseif _G.RaceV4 == "Skypeian V4" then
                local Notification = require(game:GetService("ReplicatedStorage").Notification)
                Notification.new("<Color=Purple>Skypeian V4 Unlocked!<Color=/>"):Display()
                wait()
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                local Player = game:GetService("Players").LocalPlayer
                
                local Eff = {
                    Character = Player.Character,
                    Duration = .25,
                    CFrame = Player.Character.HumanoidRootPart.CFrame,
                }
                
                require(ReplicatedStorage.Effect.Container.KamuiCam)(Eff)
                wait()
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                local Player = game:GetService("Players").LocalPlayer
                
                local Eff = {
                    Character = Player.Character,
                    Duration = .25,
                    CFrame = Player.Character.HumanoidRootPart.CFrame,
                }
                
                require(ReplicatedStorage.Effect.Container.StringZ)(Eff)
                wait()
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                local Player = game:GetService("Players").LocalPlayer
                
                local Eff = {
                    Character = Player.Character,
                    Duration = .25,
                    CFrame = Player.Character.HumanoidRootPart.CFrame,
                }
                
                require(ReplicatedStorage.Effect.Container.StringX)(Eff)
                wait()
                setthreadcontext(5)
                
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                local Player = game:GetService("Players").LocalPlayer
                
                local ArgsTransform = {
                    Character = game.Players.LocalPlayer.Character,
                    CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                    Color1 = Color3.fromRGB(222, 222, 0),
                    Color2 = Color3.fromRGB(222, 222, 0),
                    Color3 = Color3.fromRGB(222, 222, 0),
                }
                
                Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
                
                delay(1, function()
                    pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
                end)
                wait(0.5)
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                local Player = game:GetService("Players").LocalPlayer
                
                local Eff = {
                    Character = Player.Character,
                    Duration = .25,
                    CFrame = Player.Character.HumanoidRootPart.CFrame,
                }
                
                require(ReplicatedStorage.Effect.Container.Light2.Explosion)(Eff)
                wait()
                game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 120
                wait()
                local Nan = "LightCircles"
                local Agility = game:GetService("ReplicatedStorage").FX.LightEffects.V[Nan]:Clone()
                Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                  elseif _G.RaceV4 == "Ghoul V4" then
                         wait()
                 setthreadcontext(5)
                
                 local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                 local Player = game:GetService("Players").LocalPlayer
                
                 local ArgsTransform = {
                  Character = game.Players.LocalPlayer.Character,
                  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                  Color1 = Color3.fromRGB(155, 155, 155),
                  Color2 = Color3.fromRGB(0, 0, 0),
                  Color3 = Color3.fromRGB(155, 155, 155),
                 }
                
                 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
                
                 delay(1, function()
                  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
                  end)
                      elseif _G.RaceV4 == "Cyborg V4" then
                           wait()
                 setthreadcontext(5)
                
                 local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                 local Player = game:GetService("Players").LocalPlayer
                
                 local ArgsTransform = {
                  Character = game.Players.LocalPlayer.Character,
                  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                  Color1 = Color3.fromRGB(166, 0, 111),
                  Color2 = Color3.fromRGB(166, 0, 111),
                  Color3 = Color3.fromRGB(166, 0, 111),
                 }
                
                 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
                
                 delay(1, function()
                  pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
                  end)
                        elseif _G.RaceV4 == "Human V4" then
                             wait()
                 setthreadcontext(5)
                
                 local ReplicatedStorage = game:GetService("ReplicatedStorage")
                
                 local Player = game:GetService("Players").LocalPlayer
                
                 local ArgsTransform = {
                  Character = game.Players.LocalPlayer.Character,
                  CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                  Color1 = Color3.fromRGB(166, 0, 0),
                  Color2 = Color3.fromRGB(166, 0, 0),
                  Color3 = Color3.fromRGB(166, 0, 0),
                 }
                
                 Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
                
                delay(1, function()
                pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
            end)
        end
        end
    })

    Tabs.Misc:AddSection("Animations/Effects")

    Tabs.Misc:AddButton({
        Title = "Remove Attack Animation",
        Description = "",
        Callback = function()
            getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync 
            getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
            spawn(function()
                while wait() do
                        pcall(function()
                            require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync =function(a1,a2,a3,a4,a5)
                                local GetBladeHits = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).getBladeHits(a2,a3,a4)
                                if GetBladeHits then
                                     require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = function() end
                                    a1:Play(0.2, 0.2, 0.2)
                                    a5(GetBladeHits)
                                     require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = getgenv().B 
                                    wait(.5)
                                    a1:Stop()
                                end
                            end
                        end)
                end
            end)
        end
    })

    Tabs.Misc:AddButton({
        Title = "Remove Effects",
        Description = "",
        Callback = function()
            if World1 or World2 then
                pcall(function()
                    game:GetService("Lighting").FantasySky:Destroy()
                    local g = game
                    local w = g.Workspace
                    local l = g.Lighting
                    local t = w.Terrain
                    for i, v in pairs(g:GetDescendants()) do
                        if v:IsA("Padrt") or v:IsA("Unjjdion") or v:IsA("CornerdWedgePart") or v:IsA("TrusdsPart") then 
                            v.Matyerial = "Plastdic"
                            v.Reflectancye = 0
                        elseif v:IsA("Dechal") or v:IsA("Textuhre") then
                            v.Transpharency = 1
                        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                            v.Lifetime = NumberRange.new(0)
                        elseif v:IsA("Explosion") then
                            v.BlastPressure = 1
                            v.BlastRadius = 1
                        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                            v.Enabled = false
                        elseif v:IsA("MedsshPart") then
                            v.Matersddial = "Plassdtic"
                            v.Reflectssddance = 0
                            v.TextursddseID = 10385902758728957
                        end
                    end
                end)
                elseif World3 then
                    pcall(function()
                        game:GetService("Lighting").Sky:Destroy()
                        local g = game
                        local w = g.Workspace
                        local l = g.Lighting
                        local t = w.Terrain
                        for i, v in pairs(g:GetDescendants()) do
                            if v:IsA("Padrt") or v:IsA("Unjjdion") or v:IsA("CornerdWedgePart") or v:IsA("TrusdsPart") then 
                                v.Matyerial = "Plastdic"
                                v.Reflectancye = 0
                            elseif v:IsA("Dechal") or v:IsA("Textuhre") then
                                v.Transpharency = 1
                            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                                v.Lifetime = NumberRange.new(0)
                            elseif v:IsA("Explosion") then
                                v.BlastPressure = 1
                                v.BlastRadius = 1
                            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                                v.Enabled = false
                            elseif v:IsA("MedsshPart") then
                                v.Matersddial = "Plassdtic"
                                v.Reflectssddance = 0
                                v.TextursddseID = 10385902758728957
                            end
                        end
                    end)
                end
        end
    })

    Tabs.Misc:AddSection("Troll")

    Tabs.Misc:AddButton({
        Title = "Big Buddha",
        Description = "",
        Callback = function()
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local Character = LocalPlayer.Character
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
            function rm()
                for i,v in pairs(Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        if v.Name == "Handle" or v.Name == "Head" then
                            if Character.Head:FindFirstChild("OriginalSize") then
                                Character.Head.OriginalSize:Destroy()
                            end
                        else
                            for i,cav in pairs(v:GetDescendants()) do
                                if cav:IsA("Attachment") then
                                    if cav:FindFirstChild("OriginalPosition") then
                                        cav.OriginalPosition:Destroy()  
                                    end
                                end
                            end
                            v:FindFirstChild("OriginalSize"):Destroy()
                            if v:FindFirstChild("AvatarPartScaleType") then
                                v:FindFirstChild("AvatarPartScaleType"):Destroy()
                            end
                        end
                    end
                end
            end
            rm()
            wait(0.5)
            Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
            wait(1)
        end
    })

    local X;
    X = hookmetamethod(game, "__namecall", function(self, ...)
    if checkcaller() and getnamecallmethod() == "Ban" then
       local eval1 = {false}
       local eval2 = {false}
       local args = {...}
       if debug.validlevel(3) and self.Parent == nil then
           local stack = debug.getstack(3)
           local counter = 0
           local expected;
           for i,v in pairs(stack) do
               if v == game.Players.LocalPlayer.Name or v == "Ban" or v == "Packet" or v == "Network" then
                   counter = counter + 1
               elseif type(v) == "number" then
                   if type(expected) == "number" then
                       expected = expected + v
                   else
                       expected = v
                   end
               end
           end
           if counter == expected then
               eval1 = {true, counter+5}
           end
       end
       if eval1[1] then
           if #args == eval1[2] then
               local counter = 0
               local outgoingkey;
               for i,v in pairs(args) do
                   if v == game.Players.LocalPlayer.Name or v == "Ban" or v == "Packet" or v == "Network" then
                       counter = counter + 1
                   elseif tostring(i) == "userdata: 0x000000001bdfb8ea" then --current outgoing key address, could change if roblox updates
                       outgoingkey = v
                   end
                   if counter == eval1[2] then
                       eval2 = {true, outgoingkey}
                   end
               end
           end
           if eval2[1] then
               game:GetService("NetworkClient"):SetOutgoingKBPSLimit(0, outgoingkey) --stops ban packets (requires outgoing key to set it to 0)
               game.Players.LocalPlayer:Kick("Game attempted to ban you but was blocked") --kicked because it'll detect the namecall being blocked
               return wait(9e9)
           end
       end
    end
    return X(self, ...)
    end)

    Tabs.Misc:AddSection("Security")

    local b3 = Tabs.Misc:AddToggle("Auto Rejoin", {Title = "Auto Rejoin", Default = false })
    b3:OnChanged(function(value)
        _G.AutoRejoin = value
    end)

    spawn(function()
        pcall(function()
            while wait(1) do
                if _G.AutoRejoin then
                    game.CoreGui.DescendantAdded:Connect(function()
                        wait(2)
                        pcall(function()
                            if game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then
                                while wait(5) do
                                    local ts = game:GetService("TeleportService")
                
                                    local p = game:GetService("Players").LocalPlayer
                
                                    ts:Teleport(game.PlaceId, p)
                                    wait(5)
                                end
                            end
                        end)
                    end)
                end 
            end
        end)
    end)

    Tabs.Misc:AddSection("Teams")

    Tabs.Misc:AddButton({
        Title = "Join Pirates Team",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
        end
    })

    Tabs.Misc:AddButton({
        Title = "Join Marines Team",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
        end
    })

    Tabs.Misc:AddSection("State")

    local Dropdo = Tabs.Misc:AddDropdown("Select Haki State", {
        Title = "Select Haki State",
        Values = {"State 0","State 1","State 2","State 3","State 4","State 5"},
        Multi = false,
        Default = 1,
    })
    Dropdo:OnChanged(function(value)
        _G.SelectStateHaki = value
    end)

    Tabs.Misc:AddButton({
        Title = "Change Buso Haki State",
        Description = "",
        Callback = function()
            if _G.SelectStateHaki == "State 0" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
            elseif _G.SelectStateHaki == "State 1" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
            elseif _G.SelectStateHaki == "State 2" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
            elseif _G.SelectStateHaki == "State 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
            elseif _G.SelectStateHaki == "State 4" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
            elseif _G.SelectStateHaki == "State 5" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
            end
        end
    })

    Tabs.Misc:AddSection("ESP")

    local b4 = Tabs.Misc:AddToggle("Player ESP", {Title = "Player ESP", Default = false })
    b4:OnChanged(function(value)
        ESPPlayer = value
        while ESPPlayer do wait()
            UpdatePlayerChams()
        end
    end)

    local b5 = Tabs.Misc:AddToggle("Chest ESP", {Title = "Chest ESP", Default = false })
    b5:OnChanged(function(value)
        ChestESP = value
        while ChestESP do wait()
            UpdateChestChams() 
        end
    end)

    local b6 = Tabs.Misc:AddToggle("Devil Fruit ESP", {Title = "Devil Fruit ESP", Default = false })
    b6:OnChanged(function(value)
        DevilFruitESP = value
        while DevilFruitESP do wait()
            UpdateDevilChams() 
        end
    end)

    if World2 then
    local b7 = Tabs.Misc:AddToggle("Flower ESP", {Title = "Flower ESP", Default = false })
    b7:OnChanged(function(value)
        FlowerESP = value
        while FlowerESP do wait()
            UpdateFlowerChams() 
        end
    end)
    end

    local b8 = Tabs.Misc:AddToggle("Island ESP", {Title = "Island ESP", Default = false })
    b8:OnChanged(function(value)
        IslandESP = value
        while IslandESP do wait()
            UpdateIslandESP() 
        end
    end)

    local b9 = Tabs.Misc:AddToggle("Npc ESP", {Title = "Npc ESP", Default = false })
    b9:OnChanged(function(value)
        NpcESP = value
    end)

                function isnil(thing)
                return (thing == nil)
            end
            local function round(n)
                return math.floor(tonumber(n) + 0.5)
            end
            function UpdateIslandESP() 
                for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                    pcall(function()
                        if IslandESP then 
                            if v.Name ~= "Sea" then
                                if not v:FindFirstChild('NameEsp') then
                                    local bill = Instance.new('BillboardGui',v)
                                    bill.Name = 'NameEsp'
                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                    bill.Size = UDim2.new(1,200,1,30)
                                    bill.Adornee = v
                                    bill.AlwaysOnTop = true
                                    local name = Instance.new('TextLabel',bill)
                                    name.Font = "GothamBold"
                                    name.FontSize = "Size14"
                                    name.TextWrapped = true
                                    name.Size = UDim2.new(1,0,1,0)
                                    name.TextYAlignment = 'Top'
                                    name.BackgroundTransparency = 1
                                    name.TextStrokeTransparency = 0.5
                                    name.TextColor3 = Color3.fromRGB(162, 210, 255)
                                else
                                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                end
                            end
                        else
                            if v:FindFirstChild('NameEsp') then
                                v:FindFirstChild('NameEsp'):Destroy()
                            end
                        end
                    end)
                end
            end
            Number = math.random(1, 1000000)
            function UpdatePlayerChams()
                for i,v in pairs(game:GetService'Players':GetChildren()) do
                    pcall(function()
                        if not isnil(v.Character) then
                            if ESPPlayer then
                                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                                    local bill = Instance.new('BillboardGui',v.Character.Head)
                                    bill.Name = 'NameEsp'..Number
                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                    bill.Size = UDim2.new(1,200,1,30)
                                    bill.Adornee = v.Character.Head
                                    bill.AlwaysOnTop = true
                                    local name = Instance.new('TextLabel',bill)
                                    name.Font = "GothamBold"
                                    name.FontSize = "Size14"
                                    name.TextWrapped = true
                                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                                    name.Size = UDim2.new(1,0,1,0)
                                    name.TextYAlignment = 'Top'
                                    name.BackgroundTransparency = 1
                                    name.TextStrokeTransparency = 0.5
                                    if v.Team == game.Players.LocalPlayer.Team then
                                        name.TextColor3 = Color3.new(0,200,0)
                                    else
                                        name.TextColor3 = Color3.new(225,225,225)
                                    end
                                else
                                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                                end
                            else
                                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                                end
                            end
                        end
                    end)
                end
            end
            function UpdateChestChams() 
                for i,v in pairs(game.Workspace:GetChildren()) do
                    pcall(function()
                        if string.find(v.Name,"Chest") then
                            if ChestESP then
                                if string.find(v.Name,"Chest") then
                                    if not v:FindFirstChild('NameEsp'..Number) then
                                        local bill = Instance.new('BillboardGui',v)
                                        bill.Name = 'NameEsp'..Number
                                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                        bill.Size = UDim2.new(1,200,1,30)
                                        bill.Adornee = v
                                        bill.AlwaysOnTop = true
                                        local name = Instance.new('TextLabel',bill)
                                        name.Font = "GothamBold"
                                        name.FontSize = "Size14"
                                        name.TextWrapped = true
                                        name.Size = UDim2.new(1,0,1,0)
                                        name.TextYAlignment = 'Top'
                                        name.BackgroundTransparency = 1
                                        name.TextStrokeTransparency = 0.5
                                        if v.Name == "Chest1" then
                                            name.TextColor3 = Color3.fromRGB(192, 192, 192)
                                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                        end
                                        if v.Name == "Chest2" then
                                            name.TextColor3 = Color3.fromRGB(255, 215, 0)
                                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                        end
                                        if v.Name == "Chest3" then
                                            name.TextColor3 = Color3.fromRGB(200, 229, 235)
                                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                        end
                                    else
                                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                    end
                                end
                            else
                                if v:FindFirstChild('NameEsp'..Number) then
                                    v:FindFirstChild('NameEsp'..Number):Destroy()
                                end
                            end
                        end
                    end)
                end
            end
            function UpdateDevilChams() 
                for i,v in pairs(game.Workspace:GetChildren()) do
                    pcall(function()
                        if DevilFruitESP then
                            if string.find(v.Name, "Fruit") then   
                                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                                    local bill = Instance.new('BillboardGui',v.Handle)
                                    bill.Name = 'NameEsp'..Number
                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                    bill.Size = UDim2.new(1,200,1,30)
                                    bill.Adornee = v.Handle
                                    bill.AlwaysOnTop = true
                                    local name = Instance.new('TextLabel',bill)
                                    name.Font = "GothamBold"
                                    name.FontSize = "Size14"
                                    name.TextWrapped = true
                                    name.Size = UDim2.new(1,0,1,0)
                                    name.TextYAlignment = 'Top'
                                    name.BackgroundTransparency = 1
                                    name.TextStrokeTransparency = 0.5
                                    name.TextColor3 = Color3.fromRGB(162, 210, 255)
                                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                                else
                                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                                end
                            end
                        else
                            if v.Handle:FindFirstChild('NameEsp'..Number) then
                                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                            end
                        end
                    end)
                end
            end
            function UpdateFlowerChams() 
                for i,v in pairs(game.Workspace:GetChildren()) do
                    pcall(function()
                        if v.Name == "Flower2" or v.Name == "Flower1" then
                            if FlowerESP then 
                                if not v:FindFirstChild('NameEsp'..Number) then
                                    local bill = Instance.new('BillboardGui',v)
                                    bill.Name = 'NameEsp'..Number
                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                    bill.Size = UDim2.new(1,200,1,30)
                                    bill.Adornee = v
                                    bill.AlwaysOnTop = true
                                    local name = Instance.new('TextLabel',bill)
                                    name.Font = "GothamBold"
                                    name.FontSize = "Size14"
                                    name.TextWrapped = true
                                    name.Size = UDim2.new(1,0,1,0)
                                    name.TextYAlignment = 'Top'
                                    name.BackgroundTransparency = 1
                                    name.TextStrokeTransparency = 0.5
                                    name.TextColor3 = Color3.fromRGB(162, 210, 255)
                                    if v.Name == "Flower1" then 
                                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                        name.TextColor3 = Color3.fromRGB(173, 216, 230)
                                    end
                                    if v.Name == "Flower2" then
                                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                        name.TextColor3 = Color3.fromRGB(225, 0, 0)
                                    end
                                else
                                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                                end
                            else
                                if v:FindFirstChild('NameEsp'..Number) then
                                    v:FindFirstChild('NameEsp'..Number):Destroy()
                                end
                            end
                        end   
                    end)
                end
            end
            spawn(function()
                while wait() do
                    pcall(function()
                        if NpcESP then
                            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                                if v:FindFirstChild('HumanoidRootPart') then
                                    if not v:FindFirstChild("NpcEspes") then
                                        local BillboardGui = Instance.new('BillboardGui')
                                        BillboardGui.Parent = v
                                        BillboardGui.Name = 'NpcEspes'
                                        BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                                        BillboardGui.Size = UDim2.new(1,200,1,30)
                                        BillboardGui.AlwaysOnTop = true
        
                                        local TextLabel = Instance.new('TextLabel',bill)
                                        TextLabel.Font = "GothamBold"
                                        TextLabel.FontSize = "Size14"
                                        TextLabel.TextWrapped = true
                                        TextLabel.Size = UDim2.new(1,0,1,0)
                                        TextLabel.TextYAlignment = 'Top'
                                        TextLabel.BackgroundTransparency = 1
                                        TextLabel.TextStrokeTransparency = 0.5
                                        TextLabel.TextColor3 = Color3.fromRGB(162, 210, 255)
                                        TextLabel.Parent = BillboardGui
                                    end
                                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                                    v.NpcEspes.TextLabel.Text = v.Name.."\n"..Dis.." M"
                                end
                            end
                        else
                            for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                                if v:FindFirstChild("NpcEspes") then
                                    v.NpcEspes:Destroy()
                                end
                            end
                        end
                    end)
                end
            end)

    Tabs.Misc:AddSection("Boosters")

    local c = Tabs.Misc:AddToggle("Dodge No Cooldown", {Title = "Dodge No Cooldown", Default = false })
    c:OnChanged(function(value)
        nododgecool = value
        NoDodgeCool()
    end)

    local c2 = Tabs.Misc:AddToggle("Infinite Energy", {Title = "Infinite Energy", Default = false })
    c2:OnChanged(function(value)
        InfiniteEnergy = value
        originalstam = LocalPlayer.Character.Energy.Value
    end)

    local c4 = Tabs.Misc:AddToggle("Infinite Observation Range", {Title = "Infinite Observation Range", Default = false })
    c4:OnChanged(function(value)
        getgenv().InfiniteObRange = value
        local VS = game:GetService("Players").LocalPlayer.VisionRadius.Value
        while getgenv().InfiniteObRange do
            wait()
            local player = game:GetService("Players").LocalPlayer
            local char = player.Character
            local VisionRadius = player.VisionRadius
            if player then
                if char.Humanoid.Health <= 0 then 
                    wait(5) 
                end
                VisionRadius.Value = math.huge
            elseif getgenv().InfiniteObRange == false and player then
                VisionRadius.Value = VS
            end
        end
    end)

    local c5 = Tabs.Misc:AddToggle("Infinite Geppo", {Title = "Infinite Geppo", Default = false })
    c5:OnChanged(function(value)
        getgenv().InfGeppo = value
    end)

    spawn(function()
        while wait(1) do
            pcall(function()
                if getgenv().InfGeppo then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Geppo then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
                                for i2,v2 in next, getupvalues(v) do
                                    if tostring(i2) == "9" then
                                        repeat wait(.1)
                                            setupvalue(v,i2,0)
                                        until not getgenv().InfGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    local c6 = Tabs.Misc:AddToggle("Infinite Soru", {Title = "Infinite Soru", Default = false })
    c6:OnChanged(function(value)
        getgenv().InfSoru = value
    end)

    spawn(function()
        while wait(1) do
            pcall(function()
                if getgenv().InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Soru then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                                for i2,v2 in next, getupvalues(v) do
                                    if typeof(v2) == "table" then
                                        repeat wait(.1)
                                            v2.LastUse = 0
                                        until not getgenv().InfSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    local c7 = Tabs.Misc:AddToggle("Walk On Water", {Title = "Walk On Water", Default = false })
    c7:OnChanged(function(value)
        _G.WalkWater = value
    end)

    spawn(function()
        while task.wait(1) do
            pcall(function()
                if _G.WalkWater then
                    game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
                else
                    game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
                end
            end)
        end
    end)

    local c8 = Tabs.Misc:AddToggle("NoClip", {Title = "NoClip", Default = false })
    c8:OnChanged(function(value)
        _G.NOCLIP = value
    end)

    Tabs.Misc:AddSection("Mastery Settings")

    Tabs.Misc:AddSlider("Kill At %", {
        Title = "Kill At %",
        Description = "",
        Default = 25,
        Min = 10,
        Max = 100,
        Rounding = 1,
        Callback = function(value)
            _G.Kill_At = value
        end
    })

    local v = Tabs.Misc:AddToggle("Skill Z", {Title = "Skill Z", Default = true })
    v:OnChanged(function(value)
        _G.SkillZ = value
    end)

    local v2 = Tabs.Misc:AddToggle("Skill X", {Title = "Skill X", Default = true })
    v2:OnChanged(function(value)
        _G.SkillX = value
    end)

    local v3 = Tabs.Misc:AddToggle("Skill C", {Title = "Skill C", Default = true })
    v3:OnChanged(function(value)
        _G.SkillC = value
    end)

    local v4 = Tabs.Misc:AddToggle("Skill V", {Title = "Skill V", Default = false })
    v4:OnChanged(function(value)
        _G.SkillV = value
    end)

    local v5 = Tabs.Misc:AddToggle("Skill F", {Title = "Skill F", Default = false })
    v5:OnChanged(function(value)
        _G.SkillF = value
    end)

    spawn(function()
        local gg = getrawmetatable(game)
        local old = gg.__namecall
        setreadonly(gg,false)
        gg.__namecall = newcclosure(function(...)
            local method = getnamecallmethod()
            local args = {...}
            if tostring(method) == "FireServer" then
                if tostring(args[1]) == "RemoteEvent" then
                    if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                        if UseSkill then
                            args[2] = PositionSkillMasteryDevilFruit
                            return old(unpack(args))
                        elseif AimSkillNearest then
                            args[2] = AimBotSkillPosition
                            return old(unpack(args))
                        end
                    end
                end
            end
            return old(...)
        end)
    end)
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if UseGun then
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == Mon then
                            local args = {
                                [1] = "TAP",
                                [2] = v.HumanoidRootPart.Position
                            }
                            
                            game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild("Soul Guitar"):InvokeServer(unpack(args))
                            local args = {
                                [1] = v.HumanoidRootPart.Position,
                                [2] = v.HumanoidRootPart
                            }
                            game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                        end
                    end
                end)
            end
        end)
    end)
end

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("Raito Hub Fluent")
SaveManager:SetFolder("Raito Hub Fluent/BloxFruits")
InterfaceManager:BuildInterfaceSection(Tabs.UiSettings)
SaveManager:BuildConfigSection(Tabs.UiSettings)
Window:SelectTab(1)
loadedscript = 0
Fluent:Notify({
    Title = "Raito Hub",
    Content = "The script has been loaded.",
    Duration = 5
})
SaveManager:LoadAutoloadConfig()
end
end
end
        local KeyLibrary = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/setup_obf.lua'))()
        local KeySystem = KeyLibrary.new('RaitoHub')
        do
            local keyui = game.CoreGui:FindFirstChild("ScreenGui")
             if keyui then
                keyui:Destroy()
             end
         end

         local UserInputService = game:GetService("UserInputService")
         local TweenService = game:GetService("TweenService")
         
         local function MakeDraggable(topbarobject, object)
             local Dragging = nil
             local DragInput = nil
             local DragStart = nil
             local StartPosition = nil
         
             local function Update(input)
                 local Delta = input.Position - DragStart
                 local pos =
                     UDim2.new(
                         StartPosition.X.Scale,
                         StartPosition.X.Offset + Delta.X,
                         StartPosition.Y.Scale,
                         StartPosition.Y.Offset + Delta.Y
                     )
                 local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
                 Tween:Play()
             end
         
             topbarobject.InputBegan:Connect(
                 function(input)
                     if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                         Dragging = true
                         DragStart = input.Position
                         StartPosition = object.Position
         
                         input.Changed:Connect(
                             function()
                                 if input.UserInputState == Enum.UserInputState.End then
                                     Dragging = false
                                 end
                             end
                         )
                     end
                 end
             )
         
             topbarobject.InputChanged:Connect(
                 function(input)
                     if
                         input.UserInputType == Enum.UserInputType.MouseMovement or
                         input.UserInputType == Enum.UserInputType.Touch
                     then
                         DragInput = input
                     end
                 end
             )
         
             UserInputService.InputChanged:Connect(
                 function(input)
                     if input == DragInput and Dragging then
                         Update(input)
                     end
                 end
             )
         end
        
        local ScreenGui = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local Frame_2 = Instance.new("Frame")
        local Frame_3 = Instance.new("Frame")
        local Name = Instance.new("TextLabel")
        local Name_2 = Instance.new("TextLabel")
        local KeyInput = Instance.new("TextBox")
        local Submit = Instance.new("TextButton")
        local Discord = Instance.new("TextButton")
        local GetKey = Instance.new("TextButton")
         
        ScreenGui.Parent = game.CoreGui
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        local Frame = Instance.new("CanvasGroup")
        Frame.AnchorPoint = Vector2.new(0.5, 0.5)
        Frame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
        Frame.BorderColor3 = Color3.new(0, 0, 0)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
        Frame.Size = UDim2.new(0, 350, 0, 265)
        Frame.Visible = true
        Frame.Parent = ScreenGui

        local FrameCorner = Instance.new("UICorner")
        FrameCorner.CornerRadius = UDim.new(0, 4)
        FrameCorner.Name = "FrameCorner"
        FrameCorner.Parent = Frame

        local top_frame = Instance.new("Frame")
        top_frame.BackgroundColor3 = Color3.new(0.105882, 0.105882, 0.105882)
        top_frame.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
        top_frame.Size = UDim2.new(1, 0, 0, 40)
        top_frame.Visible = true
        top_frame.Name = "TopFrame"
        top_frame.Parent = Frame
        local FrameCorner = Instance.new("UICorner")
        FrameCorner.CornerRadius = UDim.new(0, 4)
        FrameCorner.Name = "FrameCorner"
        FrameCorner.Parent = top_frame
    
        local top_frameStroke = Instance.new("UIStroke")
        top_frameStroke.Name = "UIStroke"
        top_frameStroke.Parent = top_frame
        top_frameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        top_frameStroke.Color = Color3.fromRGB(150,150,150)
        top_frameStroke.LineJoinMode = Enum.LineJoinMode.Round
        top_frameStroke.Thickness = 0.6
        top_frameStroke.Transparency = 0.8
        top_frameStroke.Enabled = true
        top_frameStroke.Archivable = true
        
        local text_label = Instance.new("TextLabel")
        text_label.Font = Enum.Font.Gotham
        text_label.RichText = true
        text_label.Text = "Raito Hub".." - <b>Key System</b>"
        text_label.TextColor3 = Color3.new(1, 1, 1)
        text_label.TextSize = 14
        text_label.BackgroundColor3 = Color3.new(1, 1, 1)
        text_label.BackgroundTransparency = 1
        text_label.BorderColor3 = Color3.new(0, 0, 0)
        text_label.BorderSizePixel = 0
        text_label.Size = UDim2.new(0, 350, 0, 40)
        text_label.Visible = true
        text_label.Parent = top_frame
        
        local text_label_2 = Instance.new("TextLabel")
        text_label_2.Font = Enum.Font.Gotham
        text_label_2.Text = "To use the free version of Raito Hub you need a key. Click 'Get Key' button to get your key!"
        text_label_2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        text_label_2.TextSize = 14
        text_label_2.TextWrapped = true
        text_label_2.BackgroundColor3 = Color3.new(1, 1, 1)
        text_label_2.BackgroundTransparency = 1
        text_label_2.BorderColor3 = Color3.new(0, 0, 0)
        text_label_2.BorderSizePixel = 0
        text_label_2.Position = UDim2.new(0.034285713, 0, 0.130, 14)
        text_label_2.Size = UDim2.new(0, 325, 0, 49)
        text_label_2.Visible = true
        text_label_2.Parent = Frame
        
        MakeDraggable(top_frame,Frame)
   
        if isfile("Raito Key.txt") then
        KeyInput.Name = "KeyInput" 
        KeyInput.Parent = Frame
        KeyInput.CursorPosition = -1
        KeyInput.BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804)
        KeyInput.Position = UDim2.new(0.0350000001, 0, 0.381999999, 0)
        KeyInput.Size = UDim2.new(0, 326, 0, 50)
        KeyInput.ClearTextOnFocus = false
        KeyInput.Font = Enum.Font.Gotham
        KeyInput.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
        KeyInput.PlaceholderText = "Enter Key..."
        KeyInput.Text = readfile("Raito Key.txt")
        KeyInput.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        KeyInput.TextSize = 16
        KeyInput.TextTruncate = Enum.TextTruncate.AtEnd
        KeyInput.TextXAlignment = Enum.TextXAlignment.Left
        else
        KeyInput.Name = "KeyInput" 
        KeyInput.Parent = Frame
        KeyInput.CursorPosition = -1
        KeyInput.BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804)
        KeyInput.Position = UDim2.new(0.0350000001, 0, 0.381999999, 0)
        KeyInput.Size = UDim2.new(0, 326, 0, 50)
        KeyInput.ClearTextOnFocus = false
        KeyInput.Font = Enum.Font.Gotham
        KeyInput.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
        KeyInput.PlaceholderText = "Enter Key..."
        KeyInput.Text = ""
        KeyInput.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        KeyInput.TextSize = 16
        KeyInput.TextTruncate = Enum.TextTruncate.AtEnd
        KeyInput.TextXAlignment = Enum.TextXAlignment.Left
        end
        local KeyInputCorner = Instance.new("UICorner")
        KeyInputCorner.CornerRadius = UDim.new(0, 4)
        KeyInputCorner.Name = "KeyInputCorner"
        KeyInputCorner.Parent = KeyInput
        local KeyInputStroke = Instance.new("UIStroke")
        KeyInputStroke.Name = "UIStroke"
        KeyInputStroke.Parent = KeyInput
        KeyInputStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        KeyInputStroke.Color = Color3.fromRGB(150,150,150)
        KeyInputStroke.LineJoinMode = Enum.LineJoinMode.Round
        KeyInputStroke.Thickness = 0.6
        KeyInputStroke.Transparency = 0.9
        KeyInputStroke.Enabled = true
        KeyInputStroke.Archivable = true
        local uipadding = Instance.new("UIPadding")
        uipadding.PaddingLeft = UDim.new(0, 15)
        uipadding.Parent = KeyInput
        function LoadKey()
            if isfile("Raito Key.txt") then
                KeyInput.Text = readfile("Raito Key.txt")
            end
        end

        local Submit = Instance.new("TextButton")
        Submit.Font = Enum.Font.Gotham
        Submit.Text = "Check Key"
        Submit.TextColor3 = Color3.new(1, 1, 1)
        Submit.TextSize = 13
        Submit.BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804)
        Submit.BorderColor3 = Color3.new(0, 0, 0)
        Submit.BorderSizePixel = 0
        Submit.Position = UDim2.new(0.0353948101, 0, 0.604936957, 0)
        Submit.Size = UDim2.new(0, 325, 0, 41)
        Submit.Visible = true
        Submit.Name = "CheckKey"
        Submit.Parent = Frame
        Submit.MouseButton1Click:Connect(function()
            Check()
        end)
    
        local check_keyStroke = Instance.new("UIStroke")
        check_keyStroke.Name = "UIStroke"
        check_keyStroke.Parent = Submit
        check_keyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        check_keyStroke.Color = Color3.fromRGB(225,225,225)
        check_keyStroke.LineJoinMode = Enum.LineJoinMode.Round
        check_keyStroke.Thickness = 0.6
        check_keyStroke.Transparency = 0.9
        check_keyStroke.Enabled = true
        check_keyStroke.Archivable = true
        
        local uicorner_4 = Instance.new("UICorner")
        uicorner_4.CornerRadius = UDim.new(0, 4)
        uicorner_4.Parent = Submit
    
        function Check()
                pcall(function()
                Submit.TextColor3 = Color3.fromRGB(244, 164, 96)
                Submit.Text = "Checking Key.. ⌛"
                if KeySystem:verifyKey(KeyInput.Text) then
                    Submit.TextColor3 = Color3.fromRGB(61, 237, 151)
                    Submit.Text = "Valid Key ✔️"
                    writefile("Raito Key.txt", ""..KeyInput.Text)
                    wait(0.5)
                    do
                        local keyui = game.CoreGui:FindFirstChild("ScreenGui")
                         if keyui then
                            keyui:Destroy()
                         end
                    end
                    _G.Authenicated = string.reverse(game.Players.LocalPlayer.UserId)
                    Script()
                    else
                    _G.Authenicated = false
                    Submit.TextColor3 = Color3.fromRGB(235, 64, 59)
                    Submit.Text = "Wrong Key ❌"
                    wait(1)
                    Submit.TextColor3 = Color3.new(1, 1, 1)
                    Submit.Text = "Submit"
                end
            end)
        end

        local GetKey2 = Instance.new("TextButton")
        GetKey2.Font = Enum.Font.Gotham
        GetKey2.Text = "Join Discord"
        GetKey2.TextColor3 = Color3.new(1, 1, 1)
        GetKey2.TextSize = 13
        GetKey2.BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804)
        GetKey2.BorderColor3 = Color3.new(0, 0, 0)
        GetKey2.BorderSizePixel = 0
        GetKey2.Position = UDim2.new(0.589268088, 0, 0.792251289, 0)
        GetKey2.Size = UDim2.new(0, 131, 0, 39)
        GetKey2.Visible = true
        GetKey2.Name = "GetKey"
        GetKey2.Parent = Frame
        GetKey2.MouseButton1Click:Connect(function()
            setclipboard("https://discord.gg/raitohub")
        end)

        local GetKey = Instance.new("TextButton")
        GetKey.Font = Enum.Font.Gotham
        GetKey.Text = "Get Key"
        GetKey.TextColor3 = Color3.new(1, 1, 1)
        GetKey.TextSize = 13
        GetKey.BackgroundColor3 = Color3.fromRGB(105, 105, 105)
        GetKey.BorderColor3 = Color3.new(0, 0, 0)
        GetKey.BorderSizePixel = 0
        GetKey.Position = UDim2.new(0.0325376689, 0, 0.792251289, 0)
        GetKey.Size = UDim2.new(0, 187, 0, 39)
        GetKey.Visible = true
        GetKey.Name = "GetKey"
        GetKey.Parent = Frame
        GetKey.MouseButton1Click:Connect(function()
            GetKey.TextColor3 = Color3.fromRGB(61, 237, 151)
            GetKey.Text = "Copied ✔️"
            KeySystem:copyGetKeyURL()
            KeyInput.Text = KeySystem:getKeyURL()
            wait(1)
            GetKey.TextColor3 = Color3.new(1, 1, 1)
            GetKey.Text = "Get Key"
        end)
    
        local get_keyStroke = Instance.new("UIStroke")
        get_keyStroke.Name = "UIStroke"
        get_keyStroke.Parent = GetKey
        get_keyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        get_keyStroke.Color = Color3.fromRGB(51, 61, 77)
        get_keyStroke.LineJoinMode = Enum.LineJoinMode.Round
        get_keyStroke.Thickness = 0.6
        get_keyStroke.Transparency = 0.8
        get_keyStroke.Enabled = true
        get_keyStroke.Archivable = true
        
        local uicorner_5 = Instance.new("UICorner")
        uicorner_5.CornerRadius = UDim.new(0, 4)
        uicorner_5.Parent = GetKey

        local get_keyStroke = Instance.new("UIStroke")
        get_keyStroke.Name = "UIStroke"
        get_keyStroke.Parent = GetKey2
        get_keyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        get_keyStroke.Color = Color3.fromRGB(225,225,225)
        get_keyStroke.LineJoinMode = Enum.LineJoinMode.Round
        get_keyStroke.Thickness = 0.6
        get_keyStroke.Transparency = 0.9
        get_keyStroke.Enabled = true
        get_keyStroke.Archivable = true
        
        local uicorner_5 = Instance.new("UICorner")
        uicorner_5.CornerRadius = UDim.new(0, 4)
        uicorner_5.Parent = GetKey2

if isfile("Raito Key.txt") then
LoadKey()
wait(.1)
Check()
end
