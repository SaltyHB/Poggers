if _G.Language == "English" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Translate/English"))()
elseif _G.Language == "Turkish" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Translate/Turkish"))()
elseif _G.Language == "Arabic" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Translate/Arabic"))()
elseif _G.Language == "Vietnamse" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Translate/Vietnamse"))()
elseif _G.Language == "Urdu" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Translate/Urdu"))()
elseif _G.Language == "French" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Translate/French"))()
elseif _G.Language == "Spanish" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Translate/Spanish"))()
elseif _G.Language == "Kurdish" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Translate/Kurdish"))()
elseif _G.Language == "Thai" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Translate/Thai"))()
elseif _G.Language == "Chinese" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Translate/Chinese"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Translate/English"))()
end
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
    _G.SendCheck2 = false
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
    if _G.SendCheck2 == false then
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
    _G.SendCheck2 = true 
    end
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
-- MOBILE CLOSE GUI
if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
    print("[ Raito Hub ] PC Detected!")
    else
    print("[ Raito Hub ] Mobile Detected!")
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Visible") then
        game:GetService("Players").LocalPlayer.PlayerGui.Visible:Destroy()
    end
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.DynamicTopBar:FindFirstChild("Version") then
    game:GetService("Players").LocalPlayer.PlayerGui.Main.DynamicTopBar.Version.Visible = false
    end
    local Visible = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local Button = Instance.new("ImageButton")
    local UICorner = Instance.new("UICorner")   
    Visible.Name = "Visible"
    Visible.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    Frame.Parent = Visible
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BackgroundTransparency = 0.5
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0, 103, 0, -31)
    Frame.Size = UDim2.new(0, 32, 0, 32)
    Button.Name = "Button"
    Button.Parent = Frame
    Button.BackgroundTransparency = 1
    Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Button.Position = UDim2.new(0, 4, 0, 4)
    Button.Size = UDim2.new(0, 23, 0, 23)
    Button.Image = "http://www.roblox.com/asset/?id=15757220056"
    local toggle = false
    Button.MouseButton1Click:Connect(function()
    toggle = not toggle
    if toggle then
    game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
    Button.Image = "http://www.roblox.com/asset/?id=15757188966"
    else
    game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
    Button.Image = "http://www.roblox.com/asset/?id=15757220056"
    end
    end)
    Frame.MouseEnter:Connect(function()
        TweenService:Create(
            Frame,
            TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}
        ):Play()
    end)
    
    Frame.MouseLeave:Connect(function()
        TweenService:Create(
            Frame,
            TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(0, 0, 0)}
        ):Play()
    end)
    UICorner.CornerRadius = UDim.new(0.25, 0)
    UICorner.Name = "Looks like"
    UICorner.Parent = Frame
end
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

 loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Variables"))()

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
                    -------------------------SAVE SETTINGS----------------------------
                    _G.Settings = {
                        AutoFarm = false;
                        SelectBringMode = "Bring Mob";
                        AutoBuyEnchancementColour_Hop = false;
                        AutoBuyEnchancementColour = false;
                        AutoBuyLegendarySword_Hop = false;
                        AutoBuyLegendarySword = false;
                        AutoObservation_Hop = false;
                        AutoObservation = false;
                        AutoEliteHunterHop = false;
                        AutoEliteHunter = false;
                        AutoDoughtBoss = false;
                        AutoAllBoss = false;
                        AutoFactory = false;
                        SelectWeapon = "Melee";
                        SelectMode = "Normal Mode";
                        AutoQuestBoss = true;
                        AutoFarmBoss = false;
                        SelectBoss = nil;
                        Mirage = false;
                        MirageHop = false;
                        FarmChest = false;
                        FarmChestHop = false;
                        AutoBuyEnchancementColour_Hop = false;
                        AutoBuyEnchancementColour = false;
                        Hitbox = false;
                        SelectedDelay = "Fast";
                        BypassTP = false;
                        DoubleQuest = false;
                        AutoFarmDungeon = false;
                        KillExtra = true;
                        SaveSettings = false;
                    }
                    
                    local foldername = "Raito Hub V2 Settings Folder"
                    local filename = "BloxFruit "..game.Players.LocalPlayer.Name.." Config.json"
                     
                    function saveSettings()
                        local HttpService = game:GetService("HttpService")
                        local json = HttpService:JSONEncode(_G.Settings)
                        if (writefile) then
                            if isfolder(foldername) then
                                if isfile(foldername.."\\"..filename) then
                                    writefile(foldername.."\\"..filename, json)
                                else
                                    writefile(foldername.."\\"..filename, json)
                                end
                            else
                                makefolder(foldername)
                                writefile(foldername.."\\"..filename, json)
                            end
                        end
                    end
                    
                    function loadSettings()
                        local HttpService = game:GetService("HttpService")
                        if isfile(foldername.."\\"..filename) then
                            _G.Settings = HttpService:JSONDecode(readfile(foldername.."\\"..filename))
                        end
                    end
                     
                    loadSettings()
            
                    if _G.Settings.SelectBoss == nil then
                       _G.Settings.SelectBoss = "nil"
                    end
                    --------------------------------------------------------------------
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/ScriptVersionV2"))()
                    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/NewUiLibrary"))()
                    --------------------------------------------------------------------
                    local Raito = library:AddWindow("Raito Hub "..ScriptVersion,Enum.KeyCode.RightControl)
                    --------------------------------------------------------------------
                    local Settings = Raito:AddTab("⚙️ "..SettingsTABB)
                    local Main = Raito:AddTab("🏠 "..HomeTABB)
                    local Combat = Raito:AddTab("⚔️ "..CombatTABB)
                    ---Stats
                    local Stats = Raito:AddTab("📊 "..StatsTABB)

                    Stats:AddSeperator(STATSS)

                    local Pointstat = Stats:AddLabel("Stat Points", "")
                    
                    spawn(function()
                        while wait() do
                            pcall(function()
                                Pointstat:Set("📊 You Have "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value).." Stat Points!")
                            end)
                        end
                    end)
                    
                    Stats:AddToggle(AutoKaitun,_G.Auto_Stats_Kaitun,function(value)
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
                    
                    Stats:AddToggle(AM,_G.Auto_Melee,function(value)
                        _G.Auto_Melee = value
                    end)
                    
                    Stats:AddToggle(AD,_G.Auto_Defense,function(value)
                        _G.Auto_Defense = value
                    end)
                    
                    Stats:AddToggle(AS,_G.Auto_Sword,function(value)
                        _G.Auto_Sword = value
                    end)
                    
                    Stats:AddToggle(AG,_G.Auto_Gun,function(value)
                        _G.Auto_Gun = value
                    end)
                    
                    Stats:AddToggle(ADF,_G.Auto_DevilFruit,function(value)
                        _G.Auto_DevilFruit = value
                    end)
                    
                    _G.PointStats = 1
                    Stats:AddSlider(SP,1,100,1,function(value)
                        _G.PointStats = value
                    end)
                    
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
                    -- Finish Of Stats
                    local Teleport = Raito:AddTab("📌 "..TeleportTABB)
                    local Dungeon = Raito:AddTab("🏰 "..DungeonTABB)
                    local Fruit = Raito:AddTab("🍎 "..FruitTABB)
                    local Shop = Raito:AddTab("🛒 "..ShopTABB)
                    local Misc = Raito:AddTab("📙 "..OthersTABB)
                    --------------------------------------------------------------------
                    selecllele = Settings:AddDropdown(SelectLanguage,"English",{"English","Turkish","Arabic","Vietnamse","Urdu","French","Spanish","Kurdish","Thai","Chinese"},function(value)
                        _G.Language = value
                    end)

                    dasdafhhnvvc = Settings:AddButton(SetLanguagee,function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/main/Script"))()
                    end)

                    Settings:AddTextbox(SETSERVER,"Paste your serverid here.",false,function(value)
                        SelectedServer = value
                    end)

                    JSB = Settings:AddButton(JoinServer123,function()
                        if SelectedServer:match("2753915549") then
                            JoinTo = string.match(SelectedServer, 'RaitoHub_2753915549(.*)')
                            elseif SelectedServer:match("4442272183") then
                            JoinTo = string.match(SelectedServer, 'RaitoHub_4442272183(.*)')
                            elseif SelectedServer:match("7449423635") then
                            JoinTo = string.match(SelectedServer, 'RaitoHub_7449423635(.*)')
                            end
                            wait(.1)
                            if SelectedServer:match("2753915549") and World2 then
                            teleportwebhook1 = "wait(5) game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport','"..JoinTo.."')"
                            local autoexec = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport
                            autoexec(teleportwebhook1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                            elseif SelectedServer:match("2753915549") and World3 then
                            teleportwebhook1 = "wait(5) game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport','"..JoinTo.."')"
                            local autoexec = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport
                            autoexec(teleportwebhook1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                            elseif SelectedServer:match("2753915549") and World1 then
                            game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport',''..JoinTo)
                            elseif SelectedServer:match("4442272183") and World1 then
                            teleportwebhook2 = "wait(5) game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport','"..JoinTo.."')"
                            local autoexec = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport
                            autoexec(teleportwebhook2)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            elseif SelectedServer:match("4442272183") and World3 then
                            teleportwebhook2 = "wait(5) game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport','"..JoinTo.."')"
                            local autoexec = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport
                            autoexec(teleportwebhook2)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            elseif SelectedServer:match("4442272183") and World2 then
                            game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport',''..JoinTo)
                            elseif SelectedServer:match("7449423635") and World1 then
                            teleportwebhook3 = "wait(5) game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport','"..JoinTo.."')"
                            local autoexec = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport
                            autoexec(teleportwebhook3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                            elseif SelectedServer:match("7449423635") and World2 then
                            teleportwebhook3 = "wait(5) game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport','"..JoinTo.."')"
                            local autoexec = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport
                            autoexec(teleportwebhook3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                            elseif SelectedServer:match("7449423635") and World3 then
                            game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport',''..JoinTo)
                        end
                    end)

                    Settings:AddToggle("Bypass AntiCheat: Flag Reset",true,function(value)
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

                    Settings:AddToggle(ASTHM,true,function(value)
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
                    _G.BringMobs = true
                    Settings:AddToggle(BM,true,function(value)
                        _G.BringMobs = value
                    end)

                    Settings:AddDropdown(SPOSITION,ABOVE,{BEHIND,BELOW,ABOVE},function(value)
                    _G.Position = value
                    end)
                       
                    spawn(function()
                        while wait() do
                        pcall(function()
                         if _G.Position == BEHIND then
                         PositionFarm = CFrame.new(0,0,10)
                         elseif _G.Position == BELOW then
                         PositionFarm = CFrame.new(5,-10,7) * CFrame.Angles(math.rad(90),0,0)
                         elseif _G.Position == ABOVE then
                         PositionFarm = CFrame.new(5,10,7)
                         else
                         PositionFarm = CFrame.new(5,10,7)
                         end
                         end)
                        end
                    end)

                        Settings:AddDropdown(SADELAY,_G.Settings.SelectedDelay,{SLOW,FAST,EXTREME},function(value)
                        _G.SelectedDelay = value
                        _G.Settings.SelectedDelay = value
                        end)
    
                        spawn(function()
                            while wait(1) do
                                pcall(function()
                                    if _G.SelectedDelay == SLOW then
                                        AttackDelay = 0.055
                                    elseif _G.SelectedDelay == FAST then
                                        AttackDelay = 0.025
                                    elseif _G.SelectedDelay == EXTREME then
                                        AttackDelay = 0
                                    end
                                end)
                            end
                        end)

                        Settings:AddToggle(FA,true,function(value)
                            _G.FastAttack = value
                        end)

                        local Weapon = {
                            "Melee",
                            "Sword",
                            "Fruit",
                            "Gun"
                        }
                        
                        _G.SelectWeapon = _G.Settings.SelectWeapon
                        local SelectWeapona = Settings:AddDropdown(SELECTWP,_G.Settings.SelectWeapon,Weapon,function(value)
                            _G.SelectWeapon = value
                            _G.Settings.SelectWeapon = value
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
                    
                    Settings:AddSeperator(OTHIRS)

                    RSTS = Settings:AddButton(ResetSettings,function()
                        _G.SaveSettings = false
                        _G.Settings.SaveSettings = false
                        if isfolder("Raito Hub Settings Folder") then
                            delfolder("Raito Hub Settings Folder")
                            local Notification = require(game:GetService("ReplicatedStorage").Notification)
                            Notification.new("Succesfully Deleted Save Folder!"):Display()
                        else
                            local Notification = require(game:GetService("ReplicatedStorage").Notification)
                            Notification.new("You Don't Have Any Saved Settings Already!"):Display()
                        end
                        if isfolder("Raito Hub Saving Folder") then
                            delfolder("Raito Hub Saving Folder")
                        end
                    end)
            
                    if isfolder("Raito Hub Settings Folder") then
                    _G.SelectedDelay = _G.Settings.SelectedDelay
                    end
                    
                    Settings:AddToggle(ASS23232,_G.Settings.SaveSettings,function(value)
                        _G.SaveSettings = value
                        _G.Settings.SaveSettings = value
                        saveSettings()
                    end)
                    
                    spawn(function()
                        while wait(1) do
                            if _G.SaveSettings then
                                pcall(function()
                                saveSettings()
                                end)
                            end
                        end
                    end)
        
                    Settings:AddToggle(BTPww,_G.Settings.BypassTP,function(value)
                        BypassTP = value
                        _G.Settings.BypassTP = value
                    end)
        
                    Settings:AddToggle(DQ,_G.Settings.KillExtra,function(value)
                        _G.KillExtra = value
                        _G.Settings.KillExtra = value
                    end)

                    Settings:AddToggle(PH,_G.Settings.Hitbox,function(value)
                        _G.Hitbox = value
                        _G.Settings.Hitbox = value
                    end)
            
                    Main:AddSeperator(AUFARM)
            
                    _G.SelectMode = _G.Settings.SelectMode
                    Main:AddDropdown(SLMODE,_G.Settings.SelectMode,{"Normal Mode","Nearest Mode","Fruit Mastery Mode","Gun Mastery Mode"},function(value)
                        _G.SelectMode = value
                        _G.Settings.SelectMode = value
                    end)
            
                    Main:AddToggle(FSM,_G.Settings.AutoFarm,function(value)
                        _G.AutoFarm = value
                        _G.Settings.AutoFarm = value
                        StopTween(_G.AutoFarm)
                        if _G.AutoFarm == false and _G.SelectMode == "Fruit Mastery Mode" then
                            _G.FastAttack = true
                            StartFruitMagnet = false
                        end
                    end)
            
                _G.SelectMob = _G.Settings.SelectMob
                if World1 then
                    Main:AddDropdown(SELECTMOB,"Level Farming Mode",{
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
                        "Galley Captain [Lv. 650]"
                    }, function(value)
                        _G.SelectMob = value
                    end)
                end
                if World2 then
                    Main:AddDropdown(SELECTMOB,"Level Farming Mode",{
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
                        "Water Fighter [Lv. 1450]"
                    }, function(value)
                        _G.SelectMob = value
                    end)
                end
                if World3 then
                    Main:AddDropdown(SELECTMOB,"Level Farming Mode",{
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
                        "Isle Champion [Lv. 2525]"
                    }, function(value)
                        _G.SelectMob = value
                    end)
                end
        
                Main:AddSeperator(FONDIR)
            
                local KitsuneStats = Main:AddLabel("Kitsune Status","")
                local MirageStats = Main:AddLabel("Mirage Status","")
                local MoonStats = Main:AddLabel("Full Moon Status","")
            
                function KitsuneCheck()
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
                    KitsuneStats:Set("🦊 Kitsune Has Spawned!")
                    else
                    KitsuneStats:Set("🦊 Kitsune Has Not Spawned!")
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
                    MirageStats:Set("🏝️  Mirage Has Spawned!")
                    else
                    MirageStats:Set("🏝️  Mirage Has Not Spawned!")
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
                    MoonStats:Set(MoonMessage)
                    end
                            
                    spawn(function()
                     while task.wait(5) do
                        pcall(function()
                        FullMoon()
                    end)
                    end
                    end)
                    FullMoon()

                    Main:AddToggle("Auto Collect Azure Ember",false,function(value)
                        _G.AutoCollectEmber = value
                        StopTween(_G.AutoCollectEmber)
                    end)

                    spawn(function()
                        while _G.AutoCollectEmber do wait()
                            pcall(function()
                                if game.Workspace:FindFirstChild('EmberTemplate') then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.EmberTemplate.Part.CFrame
                                end
                            end)
                        end
                    end)

                    Main:AddToggle(ATKT,false,function(value)
                        _G.Kitsune = value
                        StopTween(_G.Kitsune)
                        if _G.Kitsune then
                          if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
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

                    Main:AddToggle(ATKTH,false,function(value)
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
            
                    Main:AddToggle(ATMI,_G.Settings.Mirage,function(value)
                        _G.Mirage = value
                        _G.Settings.Mirage = value
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
            
                    Main:AddToggle(ATMIH,_G.Settings.MirageHop,function(value)
                        _G.MirageHop = value
                        _G.Settings.MirageHop = value
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
            
                    Main:AddToggle(AFMH,_G.Settings.MoonHop,function(value)
                        _G.MoonHop = value
                        _G.Settings.MoonHop = value
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
                    
                    Main:AddSeperator(CHOST)
            
                    Main:AddToggle(AFC,_G.Settings.FarmChest,function(value)
                        _G.FarmChest = value
                        _G.Settings.FarmChest = value
                    end)
            
                    Main:AddToggle(AFCH,_G.Settings.FarmChestHop,function(value)
                        _G.FarmChestHop = value
                        _G.Settings.FarmChestHop = value
                    end)
            
                    spawn(function()
                        pcall(function()
                            while wait(5) do
                                if _G.FarmChest then
                                if not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                                    _G.FarmChest = true 
                                    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/FarmChest"))()
                                end
                                end 
                            end
                        end)
                    end)

                    Main:AddToggle(AFCHT,AutoFarmChest,function(value)
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
            
                    Main:AddSeperator(FROUTFARM)
                    
                    ffc = Main:AddButton(FruitFarmScript,function()
                    local ConfigFruit = game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/FruitConfig")
                    setclipboard(ConfigFruit)
                    end)
          
            if game.PlaceId == 2753915549 then
            _G.SeaCheckS = FIRSTSEA
            elseif game.PlaceId == 4442272183 then
            _G.SeaCheckS = SECONDSEA
            elseif World3 then
            _G.SeaCheckS = THIRDSEA
            end
            
            if World1 or World2 or World3 then
            Main:AddSeperator(_G.SeaCheckS)
            end
                         
                    if World3 then
                    Main:AddToggle(AFMP,false,function(value)
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
                        Main:AddToggle(ASS2,_G.AutoSecondSea,function(value)
                            _G.AutoSecondSea = value
                            StopTween(_G.AutoSecondSea)
                        end)
                    end
                    
                        spawn(function()
                            while wait() do 
                                if _G.AutoSecondSea then
                                    pcall(function()
                                        local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
                                        if MyLevel >= 700 and World1 then
                                            if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                                local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
                                                repeat TP(CFrame1) wait() until (CFrame1.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                                wait(1.1)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                                                wait(0.5)
                                                EquipWeapon("Key")
                                                repeat TP(CFrame.new(1347.7124, 37.3751602, -1325.6488)) wait() until (Vector3.new(1347.7124, 37.3751602, -1325.6488)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                                wait(0.5)
                                            else
                                                if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                                    if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                                                if not v.Humanoid.Health <= 0 then
                                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                                        OldCFrameSecond = v.HumanoidRootPart.CFrame
                                                                        repeat task.wait()
                                                                            AutoHaki()
                                                                            EquipWeapon(_G.SelectWeapon)
                                                                            v.HumanoidRootPart.CanCollide = false
                                                                            v.Humanoid.WalkSpeed = 0
                                                                            v.Head.CanCollide = false
                                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                                            v.HumanoidRootPart.CFrame = OldCFrameSecond
                                                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                                            Click()
                                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                                        until not _G.AutoSecondSea or not v.Parent or v.Humanoid.Health <= 0
                                                                    end
                                                                else 
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                                                end
                                                            end
                                                        end
                                                    else
                                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]").HumanoidRootPart.CFrame * PositionFarm)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end)
                                end
                            end
                        end)
            
                    
                        if World2 then
                        Main:AddToggle(ATS,_G.AutoThirdSea,function(value)
                            _G.AutoThirdSea = value
                            StopTween(_G.AutoThirdSea)
                        end)
                         end
                    
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
                                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                        if v.Name == "rip_indra [Lv. 1500] [Boss]" then
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
                                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                                    TP(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                                end
                                            end
                                        end
                                    end)
                                end
                            end
                        end)
                    
                     if World2 then
                        Main:AddToggle(AFF,_G.AutoFactory,function(value)
                            _G.AutoFactory = value
                            StopTween(_G.AutoFactory)
                        end)
                    end
                    
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
            
                Main:AddSeperator("Bosses")
            
                local BossTable = {}
                        
                for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if v.Name == "Cyborg" or v.Name == "The Gorilla King" or v.Name == "Wysper" or v.Name == "Thunder God" or v.Name == "Mob Leader" or v.Name == "Bobby" or v.Name == "Saber Expert" or v.Name == "Warden" or v.Name == "Chief Warden" or v.Name == "Swan" or v.Name == "Magma Admiral"  or v.Name == "Fishman Lord" or v.Name == "Wysper" or v.Name == "Ice Admiral" or v.Name == "Diamond" or v.Name == "Jeremy" or v.Name == "Fajita" or v.Name == "Don Swan" or v.Name == "Smoke Admiral" or v.Name == "Awakened Ice Admiral" or v.Name == "Tide Keeper" or v.Name == "Darkbeard" or v.Name == "Stone" or v.Name == "Island Empress" or v.Name == "Kilo Admiral" or v.Name == "Captain Elephant" or v.Name == "Beautiful Pirate" or v.Name == "Longma" or v.Name == "Cake Queen" or v.Name == "Greybeard" or v.Name == "Order" or v.Name == "Cursed Captain" or v.Name == "Soul Reaper" or v.Name == "Rip indra" or v.Name == "Mihawk Boss" or v.Name == "Cake Prince" or v.Name == "Dough King" or v.Name == "Cursed Skeleton Boss" or v.Name == "Factory" then
                        table.insert(BossTable, v.Name)
                    end
                end
            
                local BossName = Main:AddDropdown(SELECTBOSS,"nil", BossTable, function(value)
                    _G.SelectBoss = value
                end)
            
            spawn(function()
            while wait(20) do
              BossName:Clear()
               for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Cyborg" or v.Name == "The Gorilla King" or v.Name == "Wysper" or v.Name == "Thunder God" or v.Name == "Mob Leader" or v.Name == "Bobby" or v.Name == "Saber Expert" or v.Name == "Warden" or v.Name == "Chief Warden" or v.Name == "Swan" or v.Name == "Magma Admiral"  or v.Name == "Fishman Lord" or v.Name == "Wysper" or v.Name == "Ice Admiral" or v.Name == "Diamond" or v.Name == "Jeremy" or v.Name == "Fajita" or v.Name == "Don Swan" or v.Name == "Smoke Admiral" or v.Name == "Awakened Ice Admiral" or v.Name == "Tide Keeper" or v.Name == "Darkbeard" or v.Name == "Stone" or v.Name == "Island Empress" or v.Name == "Kilo Admiral" or v.Name == "Captain Elephant" or v.Name == "Beautiful Pirate" or v.Name == "Longma" or v.Name == "Cake Queen" or v.Name == "Greybeard" or v.Name == "Order" or v.Name == "Cursed Captain" or v.Name == "Soul Reaper" or v.Name == "Rip indra" or v.Name == "Mihawk Boss" or v.Name == "Cake Prince" or v.Name == "Dough King" or v.Name == "Cursed Skeleton Boss" or v.Name == "Factory" then
                  BossName:Add(v.Name) 
                  end
               end
            end
            end)
            
                Main:AddToggle(AFB,_G.Settings.AutoFarmBoss,function(value)
                    _G.AutoFarmBoss = value
                    _G.Settings.AutoFarmBoss = value
                    StopTween(_G.AutoFarmBoss)
                end)
            
                Main:AddToggle(AFBQ,_G.Settings.AutoQuestBoss,function(value)
                    _G.AutoQuestBoss = value
                    _G.Settings.AutoQuestBoss = value
                end)
            
                spawn(function()
                    while wait() do
                        if _G.AutoFarmBoss then
                            pcall(function()
                                CheckBossQuest()
                                if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
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
            
                Main:AddToggle(AFAB,_G.Settings.AutoAllBoss,function(value)
                    _G.AutoAllBoss = value
                    _G.Settings.AutoAllBoss = value
                    StopTween(_G.AutoAllBoss)
                end)
            
                spawn(function()
                    while wait() do
                        if _G.AutoAllBoss then
                            pcall(function()
                                for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                                    if v.Name == "Cyborg" or v.Name == "The Gorilla King" or v.Name == "Wysper" or v.Name == "Thunder God" or v.Name == "Mob Leader" or v.Name == "Bobby" or v.Name == "Saber Expert" or v.Name == "Warden" or v.Name == "Chief Warden" or v.Name == "Swan" or v.Name == "Magma Admiral"  or v.Name == "Fishman Lord" or v.Name == "Wysper" or v.Name == "Ice Admiral" or v.Name == "Diamond" or v.Name == "Jeremy" or v.Name == "Fajita" or v.Name == "Don Swan" or v.Name == "Smoke Admiral" or v.Name == "Awakened Ice Admiral" or v.Name == "Tide Keeper" or v.Name == "Darkbeard" or v.Name == "Stone" or v.Name == "Island Empress" or v.Name == "Kilo Admiral" or v.Name == "Captain Elephant" or v.Name == "Beautiful Pirate" or v.Name == "Longma" or v.Name == "Cake Queen" or v.Name == "Greybeard" or v.Name == "Order" or v.Name == "Cursed Captain" or v.Name == "Soul Reaper" or v.Name == "Rip indra" or v.Name == "Mihawk Boss" or v.Name == "Cake Prince" or v.Name == "Dough King" or v.Name == "Cursed Skeleton Boss" or v.Name == "Factory" then
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
                                end
                            end)
                        end
                    end
                end)
            
                if World3 then
                Main:AddSeperator("Cake Boss")
                    
                local MobKilled = Main:AddLabel("Defeated","")
                
                spawn(function()
                    while wait() do
                        pcall(function()
                            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                                MobKilled:Set("🎂 Defeat "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).." More!")
                            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                                MobKilled:Set("🎂 Defeat "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).." More!")
                            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                                MobKilled:Set("🎂 Defeat "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." More!")
                            else
                                MobKilled:Set("🎂 Boss Has Spawned!")
                            end
                        end)
                    end
                end)
                
                Main:AddToggle(AFCP,_G.AutoPrince,function(value)
                    _G.AutoPrince = value
                    StopTween(_G.AutoPrince)
                end)
                
                spawn(function()
                    while wait() do
                        if _G.AutoPrince then
                            pcall(function()
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
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
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                        TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * PositionFarm)
                                    else                   
                                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
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
                                                            until not _G.AutoPrince or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                                        end
                                                    end
                                                end
                                            else
                                            TP(CFrame.new(-2246.41235, 37.5844498, -12127.0156, -0.934118629, -0.0408047922, -0.3546229, -0.00990429521, 0.996025383, -0.0885188505, 0.356825411, -0.0791748092, -0.930809855)) 
                                                MagnetDought = false
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]") then
                                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]").HumanoidRootPart.CFrame * PositionFarm) 
                                                else
                                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]") then
                                                        TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]").HumanoidRootPart.CFrame * PositionFarm) 
                                                    else
                                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]") then
                                                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]").HumanoidRootPart.CFrame * PositionFarm)
                                                        else
                                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]") then
                                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]").HumanoidRootPart.CFrame * PositionFarm)
                                                            end
                                                        end
                                                    end
                                                end                       
                                            end
                                        else
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                                TP(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * PositionFarm)
                                            else
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * PositionFarm)
                                                end
                                            end
                                        end
                                    end
                                end
                            end)
                        end
                    end
                end)
            
                Main:AddToggle(AFCK,_G.AutoKing,function(value)
                    _G.AutoKing = value
                    StopTween(_G.AutoKing)
                end)
            
                spawn(function()
                    game:GetService("RunService").Heartbeat:Connect(function()
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if _G.AutoKing and AutoKing and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
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
                                        if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                                if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
                                                    repeat wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        MagnetKing = true
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                                        POSCAKE = v.HumanoidRootPart.CFrame
                                                        TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                        Click()
                                                    until _G.AutoKing == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
                                                end
                                            end
                                        else
                                            MagnetKing = false
                                            TP(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                                        end
                                    end						
                                elseif game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                                            if v.Name == "Dough King [Lv. 2300] [Raid Boss]" then
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
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
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
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * PositionFarm)
                                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * PositionFarm)
                                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * PositionFarm)
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
                
                Main:AddToggle(ASCP,_G.Spawn,function(vu)
                    _G.Spawn = vu
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
                
                if World3 then
                Main:AddSeperator("Elite")
                
                local EliteProgress = Main:AddLabel("Elite Progress","")
                
                spawn(function()
                    pcall(function()
                        while wait(1) do
                            EliteProgress:Set("💪🏼 You Has Defeated "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress").." Elite Hunters!")
                        end
                    end)
                end)
                
                 local EliteStatus = Main:AddLabel("Elite Status","")
                 
                spawn(function()
                    while wait(1) do
                        pcall(function()
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                EliteStatus:Set("🏹 Elite Hunter Has Spawned!")	
                            else
                                EliteStatus:Set("🏹 Elite Hunter Has Not Spawned!")	
                            end
                        end)
                    end
                end)
                
                Main:AddToggle("Auto Farm Elite Hunter",_G.Settings.AutoElitehunter,function(value)
                    _G.AutoElitehunter = value
                    _G.Settings.AutoElitehunter = value
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
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
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
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * PositionFarm)
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * PositionFarm)
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * PositionFarm)
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
                
                Main:AddToggle("Auto Elite Hunter Hop",_G.Settings.AutoEliteHunterHop,function(value)
                    _G.AutoEliteHunterHop = value
                    _G.Settings.AutoEliteHunterHop = value
                end)
                end
                
                if World3 then
                Main:AddSeperator(BONES)
                
                local BoneFarm = Main:AddToggle(AFBONE,_G.Auto_Farm_Bone,function(value)
                    _G.Auto_Farm_Bone = value
                    StopTween(_G.Auto_Farm_Bone)
                end)
                
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
                
                Main:AddToggle("Auto Random Surprise",_G.Auto_Random_Bone,function(value)
                    _G.Auto_Random_Bone = value
                end)
                
                spawn(function()
                    pcall(function()
                        while wait(.1) do
                            if _G.Auto_Random_Bone then    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                            end
                        end
                    end)
                end)
                end
                
                Main:AddSeperator(OBSV)
                
                local ObservationRange = Main:AddLabel("Observation Level","")
                
                spawn(function()
                    while wait() do
                        pcall(function()
                            ObservationRange:Set("🧐 You Got "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value).." Observation Level!")
                        end)
                    end
                end)
                
                Main:AddToggle(AFO,_G.Settings.AutoObservation,function(value)
                    _G.AutoObservation = value
                    _G.Settings.AutoObservation = value
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
                
                Main:AddToggle(AFOH,_G.Settings.AutoObservation_Hop,function(value)
                    _G.AutoObservation_Hop = value
                    _G.Settings.AutoObservation_Hop = value
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
                Main:AddSeperator(LEGENDS)

                Main:AddDropdown(SLS,"Shisui",{"Shisui","Saddi","Wando"},function(value)
                    _G.SelectedSword = value
                end)
                
                Main:AddToggle(ALS,_G.AutoBuyLegendarySword,function(value)
                    _G.AutoBuyLegendarySword = value
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
                
                Main:AddToggle(ALSH,_G.AutoBuyLegendarySword_Hop,function(value)
                    _G.AutoBuyLegendarySword_Hop = value
                end)
                end

                Main:AddSeperator(ENCHCO)

                Main:AddDropdown(SECC,"Snow White",{"Snow White","Pure Red","Winter Sky","Absolute Zero","Heat Wave","Fiery Rose","Plump Purple","Blue Jeans","Green Lizard","Slimy Green","Yellow Sunshine","Bright Yellow","Orange Soda"},function(value)
                    _G.SelectedColour = value
                end)
                
                Main:AddToggle(AEC,_G.Settings.AutoBuyEnchancementColour,function(value)
                    _G.AutoBuyEnchancementColour = value
                    _G.Settings.AutoBuyEnchancementColour = value
                end)
                
                Main:AddToggle(AECH,_G.Settings.AutoBuyEnchancementColour_Hop,function(value)
                    _G.AutoBuyEnchancementColour_Hop = value
                    _G.Settings.AutoBuyEnchancementColour_Hop = value
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
                
                Main:AddSeperator(OTHAAR)
                
                Main:AddToggle("Auto Rainbow Haki",_G.Auto_Rainbow_Haki,function(value)
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
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Stone [Lv. 1550] [Boss]" then
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
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Island Empress [Lv. 1675] [Boss]" then
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
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
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
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
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
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
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
                
                Main:AddToggle("Auto Observation Haki v2",_G.AutoObservationv2,function(value)
                    _G.AutoObservationv2 = value
                    StopTween(_G.AutoObservationv2)
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
                
                Main:AddToggle("Auto Rengoku",_G.AutoRengoku,function(value)
                    _G.AutoRengoku = value
                    StopTween(_G.AutoRengoku)
                end)
                
                spawn(function()
                    pcall(function()
                        while wait() do
                            if _G.AutoRengoku then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                                    EquipWeapon("Hidden Key")
                                    TP(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                                elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                RengokuMon = v.HumanoidRootPart.CFrame
                                                TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                Click()
                                                StartRengokuMagnet = true
                                            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                                            StartRengokuMagnet = false
                                        end
                                    end
                                else
                                    StartRengokuMagnet = false
                                    TP(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                                end
                            end
                        end
                    end)
                end)
                
                Main:AddToggle("Auto Evo Race",_G.Auto_EvoRace,function(value)
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
                                                if game:GetService("Workspace").Enemies:FindFirstChild("Zombie [Lv. 950]") then
                                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                        if v.Name == "Zombie [Lv. 950]" then
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
            
                local PlayerCheck = Combat:AddLabel("Players","")
                    
                spawn(function()
                    while wait() do
                        pcall(function()
                            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                                if i == 12 then
                                    PlayerCheck:Set("👥  "..i.." Players In This Server!")
                                elseif i == 1 then
                                    PlayerCheck:Set("👤  "..i.." Player In This Server!")
                                else
                                    PlayerCheck:Set("👥  "..i.." Players In This Server!")
                                end
                            end
                        end)
                    end
                end)
                
                Playerslist = {}
                
                for i,v in pairs(game:GetService("Players"):GetChildren()) do
                    table.insert(Playerslist,v.Name)
                end
                
                local SelectedPly = Combat:AddDropdown(SELP,"nil",Playerslist,function(value)
                    _G.SelectPlayer = value
                end)
                _G.SelectPlayer = ""
                
            spawn(function()
                while wait(20) do
                Playerslist = {}
                    SelectedPly:Clear()
                    for i,v in pairs(game:GetService("Players"):GetChildren()) do  
                        SelectedPly:Add(v.Name)
                    end
                end
            end)
                
                Combat:AddToggle(SPECP,false,function(value)
                    SpectatePlys = value
                    local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
                    local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPlayer)
                    repeat wait(.1)
                    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPlayer).Character.Humanoid
                    until SpectatePlys == false 
                    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
                end)
                
                Combat:AddToggle(TPPLAYER,false,function(value)
                    _G.TeleportPly = value
                    pcall(function()
                        if _G.TeleportPly then
                            repeat TP(game:GetService("Players")[_G.SelectPlayer].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
                        end
                        StopTween(_G.TeleportPly)
                    end)
                end)

                Combat:AddToggle(AFPLAYER,false,function(value)
                    _G.KillSelectedPlayer = value
                    StopTween(_G.KillSelectedPlayer)
                end)
            
                Combat:AddToggle(AAR, _G.AutoAgility, function(value)
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
            
               Combat:AddSeperator("Aimbot")
            
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
               
               _G.Select_Size_Fov = 53
               Combat:AddSlider("Select Size Fov",53,1000,10,function(value)
                _G.Select_Size_Fov = value
                return "Size Fov : " .. tostring(value)
               end)
            
               Combat:AddToggle("Show Fov",false,function(value)
                _G.Show_Fov = value
               end)
            
               Combat:AddToggle("Aimbot Skill Fov",false,function(value)
                _G.Aimbot_Skill_Fov = value
               end)
            
               Combat:AddToggle("Aimbot Gun Fov",false,function(value)
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
            
            Combat:AddSeperator("Custom Aimbot")
            
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
            
            Combat:AddToggle("Aimbot Skill",false,function(bool)
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
            
            Combat:AddSeperator("PvP")
        
            Combat:AddToggle("Auto Player Hunter Quest",false,function(value)
                _G.AutoPlayerHunter = value
            end)
        
            spawn(function()
                pcall(function()
                    while wait(.1) do
                        if _G.AutoPlayerHunter then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                            end
                        end
                    end
                end)
            end)
        
            spawn(function()
                pcall(function()
                    while wait(.1) do
                        if _G.AutoPlayerHunter then
                                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    repeat wait()
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                                    until game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true
                                    else
                                    for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
                                        if game.Players:FindFirstChild(v.Name) then
                                            if game.Players:FindFirstChild(v.Name).Character.Humanoid.Health > 0 then
                                                repeat task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    game.Players:FindFirstChild(v.Name).Character.HumanoidRootPart.CanCollide = false
                                                    TP(game.Players:FindFirstChild(v.Name).Character.HumanoidRootPart.CFrame * CFrame.new(1,0,0))
                                                    spawn(function()
                                                        pcall(function()
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                        wait(2)
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                        wait(2)
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                        wait(2)
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                        wait(2)
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                                        end)
                                                    end)
                                                until game.Players:FindFirstChild(v.Name).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(v.Name) or not _G.AutoPlayerHunter
                                        end
                                    end
                                end
                                end
                            end
                        end
                        end
                    end
                end)
            end)
            
            Combat:AddToggle("Enabled PvP",false,function(value)
                _G.EnabledPvP = value
            end)
            
            spawn(function()
                pcall(function()
                    while wait(.1) do
                        if _G.EnabledPvP then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                            end
                        end
                    end
                end)
            end)
            
            Combat:AddSeperator(BOIT)
            
            BoatsName = {}
                
            for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do  
              table.insert(BoatsName ,v.Name)
            end
            
            local SelectedBot = Combat:AddDropdown(SELCTBT,"nil",BoatsName,function(value)
                _G.SelectB = value
            end)
            
            spawn(function()
                pcall(function()
                    while wait(20) do
                        BoatsName = {}
                        SelectedBot:Clear()
                        for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do  
                            SelectedBot:Add(v.Name)
                        end
                    end
                end)
            end)
            
            bbbb = Combat:AddButton(BringBoat,function()
                game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Boats[_G.SelectB].Seat.CFrame
            end)
            
            Combat:AddToggle(TBB,false,function(bool)
                _G.TPB = bool       
                StopTween(_G.TPB)
            end)
            
            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.TPB then
                              Distance = (game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                              Speed = 220
                              tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                              tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat.CFrame})
                              tween:Play()
                              _G.Clip = true
                              wait(Distance/Speed)
                        end
                    end
                end)
            end)
            
            Combat:AddToggle(SBB,false,function(value)
                _G.SpectateBoat = value
            end)
            
            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.SpectateBoat then
                            local plr1 = game.Players.LocalPlayer.Character.Humanoid
                            local plr2 = game:GetService("Workspace").Boats:FindFirstChild(_G.SelectB)
                            repeat wait(.1)
                            game.Workspace.Camera.CameraSubject = game:GetService("Workspace").Boats[_G.SelectB].VehicleSeat
                            until _G.SpectateBoat == false 
                            game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                        end
                    end
                end)
            end)

            Combat:AddSeperator("Speed & Jump")

            getgenv().WalkSpeedValue = 26
            Combat:AddSlider("WalkSpeed",1,1000,1,function(value)
                    getgenv().WalkSpeedValue = value
                    if getgenv().WalkSpeedValue then
                        local Player = game:service'Players'.LocalPlayer
                        Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
                            Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
                        end)
                        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
                    end
            end)

            getgenv().JumpValue = 50
            Combat:AddSlider("JumpPower",1,1000,1,function(value)
                getgenv().JumpValue = value
                if getgenv().JumpValue then
                    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = getgenv().JumpValue
                end
            end)
            
            Teleport:AddSeperator(SEAA)
                    
            if World1 then
                Teleport:AddDropdown(SELECTSEA,"Sea 2",{"Sea 2","Sea 3"},function(value)
                    _G.TPSea = value
                end)
            end
            if World2 then
                Teleport:AddDropdown(SELECTSEA,"Sea 3",{"Sea 1","Sea 3"},function(value)
                    _G.TPSea = value
                end)
            end
            if World3 then
                Teleport:AddDropdown(SELECTSEA,"Sea 2",{"Sea 1","Sea 2"},function(value)
                    _G.TPSea = value
                end)
            end
            
            tpreal = Teleport:AddButton(Teleportiisssll,function()
                if _G.TPSea == "Sea 1" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                elseif _G.TPSea == "Sea 2" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                elseif _G.TPSea == "Sea 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                end
            end)
            
            Teleport:AddSeperator(ISLIND)
            
            if World1 then
                Teleport:AddDropdown(SELECTISLAND,"WindMill",{
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
                    "Mob Island"
                    },function(value)
                    _G.SelectIsland = value
                end)
            end
            if World2 then
                Teleport:AddDropdown(SELECTISLAND,"The Cafe",{
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
                    "Mini Sky Island"
                    },function(value)
                    _G.SelectIsland = value
                end)
            end
            if World3 then
                Teleport:AddDropdown(SELECTISLAND,"Mansion",{
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
                    "Tiki Outpost"
                    },function(value)
                    _G.SelectIsland = value
                end)
            end
            
            Teleport:AddToggle(TPISLAND,false,function(value)
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

            Dungeon:AddLine()
                    
            local TimeRaid = Dungeon:AddLabel("Dungeon Status","⚔️ Waiting For Dungeon..")
            
            spawn(function()
                pcall(function()
                    while wait() do
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                            CanKill = true
                            TimeRaid:Set("⚔️ "..game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
                        else
                            CanKill = false
                            TimeRaid:Set("⚔️ Waiting For Dungeon..")
                        end
                    end
                end)
            end)

            _G.FruitRat = "Classic"
            Dungeon:AddDropdown(SFRR,"Classic",{
                "Classic",
                "Common",
                "Uncommon",
                "Rare",
                "Legendary", 
                "Mythical"
                },function(value)
                _G.FruitRat = value
            end)
            
            Dungeon:AddToggle(AFDUNG,_G.Settings.AutoFarmDungeon,function(value)
                _G.AutoFarmDungeon = value
                _G.Settings.AutoFarmDungeon = value
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
            
            Dungeon:AddToggle(ANI,_G.Auto_Dungeon,function(value)
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
            
            Dungeon:AddToggle(KA,false,function(vu)
            _G.KillAura = vu
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
                                until not _G.KillAura  or not v.Parent or v.Humanoid.Health <= 0
                            end)
                        end
                    end
                end
            end
            end)
            
            Dungeon:AddToggle("Auto Awakener",_G.Auto_Awakener,function(value)
                _G.Auto_Awakener = value
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
            
            Dungeon:AddLine()
            
            Dungeon:AddDropdown(SELECTCHIPS,"Flame",{"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},function(value)
                _G.SelectChip = value
            end)
            
            Dungeon:AddToggle(ASDUN,_G.AutoSelectDungeon,function(value)
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
            
            Dungeon:AddToggle(ABCH,_G.AutoBuyChip,function(value)
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
            
            bychip = Dungeon:AddButton(BuyChip,function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
            end)
            
            Dungeon:AddToggle(ASTARTD,_G.Auto_StartRaid,function(value)
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
            
            startdun = Dungeon:AddButton(StartDungeon,function()
                if World2 then
                    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif World3 then
                    fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                end
            end)
            
            Dungeon:AddLine()
            
            nextisland = Dungeon:AddButton(NextIsland,function()
                pcall(function()
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
                end)
            end)
            
            if World2 then
                tplab = Dungeon:AddButton(TeleportLab,function()
                    TP(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                    end)
            elseif World3 then
                tplab = Dungeon:AddButton(TeleportLab,function()
                    TP(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
                end)
            end
            
            if World2 then
                awkrom = Dungeon:AddButton(AwakeningRoom,function()
                    TP(CFrame.new(266.227783, 1.39509034, 1857.00732))
                end)
            elseif World3 then
                awkrom = Dungeon:AddButton(AwakeningRoom,function()
                    TP(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
                end)
            end
            
            Dungeon:AddSeperator(LOWD)
            
            Dungeon:AddToggle(ABLC,_G.Auto_Buy_Law_Chip,function(value)
                _G.Auto_Buy_Law_Chip = value
            end)
            
            spawn(function()
            while wait() do
                if _G.Auto_Buy_Law_Chip then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                        
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
            
            Dungeon:AddToggle(ASLD,_G.Auto_Start_Law_Dungeon,function(value)
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
            
            Dungeon:AddToggle(AKL,_G.Auto_Kill_Law,function(value)
                _G.Auto_Kill_Law = value
            end)
            
            spawn(function()
            while wait() do
                if _G.Auto_Kill_Law then
                    pcall(function()
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if _G.Auto_Kill_Law and v.Name == "Order [Lv. 1250] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
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
            
            Fruit:AddSeperator(SNOOPER)
                    
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
            Fruit:AddDropdown(SDVFS,"Leopard-Leopard",FruitList,function(value)
                _G.SelectFruit = value
            end)
            
            Fruit:AddToggle(ABDVF,_G.AutoBuyFruitSniper,function(value)
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
            
            Fruit:AddSeperator(ODARS)
            
            Fruit:AddToggle(ABRDF,_G.Random_Auto,function(value)
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
            
            randomfru = Fruit:AddButton(RandomFruit,function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end)
            
            Fruit:AddToggle(BDFR,_G.BringFruit,function(value)
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
            
            Fruit:AddToggle(ASDF,_G.AutoStore,function(value)
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
        
            Fruit:AddToggle(ADDF,_G.AutoDrop,function(value)
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
            
            Shop:AddSeperator("Race/Fragment")
                    
            cyborg = Shop:AddButton(BuyCyborg,function()
                    local args = {
                   [1] = "CyborgTrainer",
                   [2] = "Buy"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
            
            ghoul = Shop:AddButton(BuyGhoul,function()
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
            end)
            
            resetstats = Shop:AddButton(BuyResetStats,function()
               local args = {
                   [1] = "BlackbeardReward",
                   [2] = "Refund",
                   [3] = "2"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
            
            randomrace = Shop:AddButton(RandomRace,function()
               local args = {
                   [1] = "BlackbeardReward",
                   [2] = "Reroll",
                   [3] = "2"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
            
             Shop:AddSeperator(ABOLT)
            
            geppo = Shop:AddButton(BuyGeppo,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
            end)
            
            buso = Shop:AddButton(BuyBuso,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
            end)
            
            soru = Shop:AddButton(BuySoru,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
            end)
            
            ken = Shop:AddButton(BuyKen,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
            end)
            
            Shop:AddSeperator(FIGHTST)
            
            blackleg = Shop:AddButton(BuyBlackLeg,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
            end)
            
            electro = Shop:AddButton(BuyElectro,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
            end)
            
            fishman = Shop:AddButton(BuyFishman,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
            end)
            
            dragonclaw = Shop:AddButton(BuyDragonClaw,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
            end)
            
            superhuman = Shop:AddButton(BuySuperhuman,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
            end)
            
            deathstep = Shop:AddButton(BuyDeathStep,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
            end)
            
            sharkman = Shop:AddButton(BuySharkman,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
            end)
            
            electricclaw = Shop:AddButton(BuyElectricClaw,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
            end)
            
            dragontalon = Shop:AddButton(BuyDragonTalon,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
            end)
            
            godhuman = Shop:AddButton(BuyGodhuman,function()
            local args = {
            [1] = "BuyGodhuman"
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end)
               
            -----Shop----------------
            Shop:AddSeperator(ACOSS)
            
            tomoe = Shop:AddButton(Tomoe,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
            end)
            
            blackcape = Shop:AddButton(BlackCape,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
            end)
            
            swordshat = Shop:AddButton(SwordsmanHat,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
            end)
            
            Shop:AddSeperator(SIWIRD)
            
            Shop:AddButton("Cutlass",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
            end)
            
            Shop:AddButton("Katana",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
            end)
            
            ironmace = Shop:AddButton(IronMace,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
            end)
            
            dualkat = Shop:AddButton(DualKatana,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
            end)
            
            tripkat = Shop:AddButton(TripleKatana, function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
            end)
            
            Shop:AddButton("Pipe",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
            end)
            
            dualhed = Shop:AddButton(DualHeaded,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
            end)
            
            Shop:AddButton("Bisento",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
            end)
            
            soulcane = Shop:AddButton(SoulCane,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
            end)
            
            Shop:AddSeperator(GAY)
            
            Shop:AddButton("Slingshot",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
            end)
            
            Shop:AddButton("Musket",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
            end)
            
            Shop:AddButton("Flintlock",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
            end)
            
            Shop:AddButton("Refined Flintlock",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
            end)
            
            Shop:AddButton("Cannon",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
            end)
            
            Shop:AddButton("Kabucha",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
            end)
            ------------Bone------------------
            
            Shop:AddSeperator(BABABOI)
            
            suprise = Shop:AddButton(Buysuprise,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end)
            
            refund = Shop:AddButton(BuyRefund,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,2)
            end)
               
            raceroll = Shop:AddButton(RaceReroll,function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
            end)
            
            Misc:AddSeperator(SORVOR)
                    
            reckckc = Misc:AddButton(Rejoin,function()
                game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
            end)
            
            sevrhh = Misc:AddButton(ServerHop,function()
                Hop()
            end)
            
            bababa = Misc:AddButton(HopLow,function()
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
            end)
            
            Misc:AddSeperator("Webhook")
            
            _G.SendWeb = false    
            _G.URL = "" 
            Misc:AddTextbox("Webhook Link","WEBHOOK URL",false,function(value)
                _G.URL = value
            end)
            
            Misc:AddToggle(ASINF,false,function(value)
                _G.SendWeb = value
            end)
            
            _G.WebhookTime = 30
            Misc:AddSlider("Set Webhook Time (S)",30,1000,31,function(value)
                _G.WebhookTime = value
            end)
            
            testwebhkk = Misc:AddButton(TestWebhook,function()
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
            end)
            
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
            
            Misc:AddSeperator("Animations/Effects")
            
            if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
            remvanm = Misc:AddButton(RemoveAnimation,function()
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
            end)
            
            remvmawe = Misc:AddButton(RemoveEffects,function()
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
            end)
        end
            
            Misc:AddToggle(INVSB,false,function(value)
                _G.inv = value
                while wait() do
                     if _G.inv then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                                if v.ClassName == "MeshPart" then
                                    v.Transparency = 1
                                end
                            end
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                                if v.Name == "Head" then
                                    v.Transparency = 1
                                end
                            end
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                                if v.ClassName == "Accessory" then
                                    v.Handle.Transparency = 1
                                end
                            end
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                                if v.ClassName == "Decal" then
                                    v.Transparency = 1
                                end
                            end
                        end)
                    end
                end
            end)
            
            Misc:AddSeperator("Ui")
            
            sadsad = Misc:AddButton(DevilShop,function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
            end)
            
            dsad = Misc:AddButton(Inventory,function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
                wait(1)
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
            end)
            
            ghghgh = Misc:AddButton(InventoryFruit,function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
                game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
            end)
            
            Misc:AddToggle("Highlight Mode",false,function(value)
                if value == true then
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
                else
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = true
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = true
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = true
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = true
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = true
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = true
                end
            end)
            
            Misc:AddSeperator("Troll")
        
            Misc:AddButton("Big Buddha", function()
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
            end)
        
            ---- [RainbowHaki]
            spawn(function()
                while wait() do
                    if RainbowHaki then
                        pcall(function()
                            if game.Players.LocalPlayer.Character.HasBuso then
                                for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetChildren()) do
                                    if v.Name == "RightLowerArm_BusoLayer1" or v.Name == "RightLowerArm_BusoLayer2" or v.Name == "RightHand_BusoLayer1" or v.Name == "RightHand_BusoLayer2" or v.Name == "LeftLowerArm_BusoLayer1" or v.Name == "LeftLowerArm_BusoLayer2" or v.Name == "LeftHand_BusoLayer1" or v.Name == "LeftHand_BusoLayer2" or v.Name == "LeftHand_BusoLayer1" or v.Name == "RightUpperArm_BusoLayer1" or v.Name == "RightUpperArm_BusoLayer2" or v.Name == "LeftUpperArm_BusoLayer1" or v.Name == "LeftUpperArm_BusoLayer2" or v.Name == "UpperTorso_BusoLayer1" or v.Name == "UpperTorso_BusoLayer2" or v.Name == "LowerTorso_BusoLayer1" or v.Name == "LowerTorso_BusoLayer2" or v.Name == "Head_BusoLayer1" or v.Name == "Head_BusoLayer2" or v.Name == "RightUpperLeg_BusoLayer1" or v.Name == "RightUpperLeg_BusoLayer2" or v.Name == "LeftUpperLeg_BusoLayer1" or v.Name == "LeftUpperLeg_BusoLayer2" or v.Name == "RightLowerLeg_BusoLayer1" or v.Name == "RightLowerLeg_BusoLayer2" or v.Name == "LeftLowerLeg_BusoLayer1" or v.Name == "LeftLowerLeg_BusoLayer2" or v.Name == "LeftFoot_BusoLayer1" or v.Name == "LeftFoot_BusoLayer2" or v.Name == "RightFoot_BusoLayer1" or v.Name == "RightFoot_BusoLayer2" then
                                        v.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1)
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
        
            Misc:AddToggle("Rainbow Haki",false,function(value)
                RainbowHaki = value
            end)
        
            Misc:AddToggle("Rainbow Yoru",false,function(value)
                RainbowYoru = value
            end)
        
            ---- [RainbowYoru]
        
            spawn(function()
                while wait() do
                    if RainbowYoru then
                        pcall(function()
                            for i,v in pairs(game.Players.LocalPlayer.Character.DarkBlade.Right:GetChildren()) do
                                if v.Name == "Runes" or v.Name == "Hold" or v.Name == "Bottom" or v.Name == "Gems" or v.Name == "Wings" or v.Name == "Blade" or v.Name == "Tape" then
                                    v.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1)
                                    v.Material = "Neon"
                                end
        
                            end
                        end)
                    end
                end
            end)
        
            spawn(function()
                while wait(1) do
                    if RainbowYoru then
                        pcall(function()
                            for i,v in pairs(game.Players.LocalPlayer.Character.DarkBlade.Right.Handle:GetChildren()) do
                                if v.Name == "Trail" then
                                    v.LightEmission = 1
                                end
        
                            end
                        end)
                    end
                end
            end)
        
            spawn(function()
                while wait(1) do
                    if RainbowYoru then
                        pcall(function()
                            for i,v in pairs(game.Players.LocalPlayer.Character.DarkBlade.Right.Handle.Attachment0:GetChildren()) do
                                if v.Name == "Beam" then
                                    v.LightEmission = 1 v.Texture = 0 v.Width0 = 0 v.Width1 = 0
                                end
        
                            end
                        end)
                    end
                end
            end)
        
            Misc:AddSeperator(SECIYT)  

            Misc:AddButton("Anti-Ban",function()
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
            end)
            
            if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
            Misc:AddToggle(AUTOREJOIN,false,function(value)
            _G.AutoRejoin = value
            end)

            spawn(function()
                pcall(function()
                    while wait(.1) do
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
            end
            
            Misc:AddSeperator(TOAMS)
            
            prrr = Misc:AddButton(PiratesTeam,function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
            end)
            
            mrrr = Misc:AddButton(MarinesTeam,function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
            end)
            
            Misc:AddSeperator("Boost")
            
            urprppr = Misc:AddButton(UnlockPortal,function()
                _G.UnlockPortal = true
            end)
            
            spawn(function()
                while wait() do
                    pcall(function()
                        if _G.UnlockPortal == true then
                            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                                if v.Name == "NotificationTemplate" then
                                    if string.find(v.Text,"cannot") then
                                        v:Destroy()
                                    end
                                end
                            end
                        end
                    end)
                end
            end)
            
            spawn(function()
                while wait() do
                    pcall(function()
                        if _G.UnlockPortal == true then
                            CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
                            MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
                            Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
                            HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
                            if (CastlePostoMansion.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                            end
                            if (MansiontoCastlePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                            end
                            if (Castletophydra.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                            end
                            if (HydratoCastle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                            end
                        end
                    end)
                end
            end)
            
            Misc:AddButton("Stop All Tween",function()
                TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                _G.Clip = false
            end)
            
            Misc:AddSeperator(KODLAR)
            
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
            
            allclcc = Misc:AddButton(AllCodes,function()
                function RedeemCode(value)
                    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
                end
                for i,v in pairs(x2Code) do
                    RedeemCode(v)
                end
            end)
            
            Misc:AddDropdown(SelectedCodes,"TY_FOR_WATCHING",x2Code,function(value)
                _G.CodeSelect = value
            end)
            
            rdmdmdm = Misc:AddButton(RedeemCode,function()
                game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect)
            end)

            if World3 then
            Misc:AddSeperator(RACEV)
            
            tggtgtg = Misc:AddButton(TeleportGear,function()
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
            end)
            Misc:AddToggle(REMOVEFOG,RemoveFog,function(value)
                RemoveFog = value
                task.spawn(function()
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
            end)
            totopfpf = Misc:AddButton(TopOfGreat,function()
                TP(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625))
            end)
            tmpmppmp = Misc:AddButton(TempleOfTime,function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.3555, 14896.5342, 102.624695, -0.161819234, 3.38540431e-08, 0.9868204, -1.84644104e-08, 1, -3.7333983e-08, -0.9868204, -2.42624125e-08, -0.161819234))
            end)
            tppp = Misc:AddButton(TpLever,function()
                TP(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
            end)
            Misc:AddButton("Clock Acces",function()
                game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove()
                game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove()
            end)
            dislslsls = Misc:AddToggle(DISINF,false,function(value)
                game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = value
            end)
            Misc:AddLine()
            sllclclc = Misc:AddDropdown(SELECTDOOR,"Cyborg Door",{
                "Cyborg Door",
                "Fish Door",
                "Ghoul Door",
                "Human Door",
                "Mink Door",
                "Sky Door"
            },function(value)
                _G.SelectDoor = value    
            end)
            Misc:AddToggle(TPRACETAB,false,function(value)
            _G.TeleportDoor = value
            StopTween(_G.TeleportDoor)
            if _G.TeleportDoor then
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
            end)
            tptptpf = Misc:AddButton(TpSafe,function()
                TP(CFrame.new(-20010.7637, 10139.4004, -25.7639999, 1, 0, 0, 0, 1, 0, 0, 0, 1))
            end)
            tptptpt2 = Misc:AddButton(TpSafe2,function()
                TP(CFrame.new(28273.0859, 14896.5332, 157.420639, 0.0920011923, 2.22102354e-08, -0.995758891, 1.27490996e-08, 1, 2.34827606e-08, 0.995758891, -1.48554715e-08, 0.0920011923))
            end)
            ptpvpvppv = Misc:AddButton(TpPvp,function()
                TP(CFrame.new(28766.6816, 14968.377, -164.132904, 0.649408102, -3.51366936e-08, 0.760440111, 3.89960064e-08, 1, 1.29035422e-08, -0.760440111, 2.12744631e-08, 0.649408102))
            end)
            Misc:AddLine()
            mimimim = Misc:AddButton(Minktr,function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.MinkTrial.Ceiling.CFrame * CFrame.new(0,-5,0)
            end)
            skykkyky = Misc:AddButton(Skytr,function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.SkyTrial.Model.FinishPart.CFrame
            end)
            cybbbb = Misc:AddButton(Cyborgtr,function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,300,0)
            end)
            end

            Misc:AddSeperator("State")
            
            Misc:AddDropdown("Select Haki State","State 0",{"State 0","State 1","State 2","State 3","State 4","State 5"},function(value)
                _G.SelectStateHaki = value
            end)
            
            Misc:AddButton("Change Buso Haki State",function()
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
            end)
            
            Misc:AddSeperator("Graphic")
            
            Misc:AddToggle(WHITESCREEN,_G.White_Screen,function(value)
                _G.White_Screen = value
                if _G.White_Screen then
                    game:GetService("RunService"):Set3dRenderingEnabled(false)
                else
                game:GetService("RunService"):Set3dRenderingEnabled(true)
             end
            end)
            
            local a = game.Lighting
            local c = Instance.new("ColorCorrectionEffect", a)
            local e = Instance.new("ColorCorrectionEffect", a)
            OldAmbient = a.Ambient
            OldBrightness = a.Brightness
            OldColorShift_Top = a.ColorShift_Top
            OldBrightnessc = c.Brightness
            OldContrastc = c.Contrast
            OldTintColorc = c.TintColor
            OldTintColore = e.TintColor
            Misc:AddToggle("RTX Mode",_G.RTXMode,function(value)
                _G.RTXMode = value
                if not _G.RTXMode then return end
                while _G.RTXMode do wait()
                    a.Ambient = Color3.fromRGB(33, 33, 33)
                    a.Brightness = 0.3
                    c.Brightness = 0.176
                    c.Contrast = 0.39
                    c.TintColor = Color3.fromRGB(217, 145, 57)
                    game.Lighting.FogEnd = 999
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight") then
                        local a2 = Instance.new("PointLight")
                        a2.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        a2.Range = 15
                        a2.Color = Color3.fromRGB(217, 145, 57)
                    end
                    if not _G.RTXMode then
                        a.Ambient = OldAmbient
                        a.Brightness = OldBrightness
                        a.ColorShift_Top = OldColorShift_Top
                        c.Contrast = OldContrastc
                        c.Brightness = OldBrightnessc
                        c.TintColor = OldTintColorc
                        e.TintColor = OldTintColore
                        game.Lighting.FogEnd = 2500
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight"):Destroy()
                    end
                end
            end)
            
            Misc:AddButton("FPS Boost",function()
                pcall(function()
                    game:GetService("Lighting").FantasySky:Destroy()
                    local g = game
                    local w = g.Workspace
                    local l = g.Lighting
                    local t = w.Terrain
                    t.WaterWaveSize = 0
                    t.WaterWaveSpeed = 0
                    t.WaterReflectance = 0
                    t.WaterTransparency = 0
                    l.GlobalShadows = false
                    l.FogEnd = 9e9
                    l.Brightness = 0
                    settings().Rendering.QualityLevel = "Level01"
                    for i, v in pairs(g:GetDescendants()) do
                        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
                            v.Material = "Plastic"
                            v.Reflectance = 0
                        elseif v:IsA("Decal") or v:IsA("Texture") then
                            v.Transparency = 1
                        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                            v.Lifetime = NumberRange.new(0)
                        elseif v:IsA("Explosion") then
                            v.BlastPressure = 1
                            v.BlastRadius = 1
                        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                            v.Enabled = false
                        elseif v:IsA("MeshPart") then
                            v.Material = "Plastic"
                            v.Reflectance = 0
                            v.TextureID = 10385902758728957
                        end
                    end
                    for i, e in pairs(l:GetChildren()) do
                        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                            e.Enabled = false
                        end
                    end
                    for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
                        if v.Name == ("Water;") then
                            v.Transparency = 1
                            v.Material = "Plastic"
                        end
                    end
                end)
            end)
            
            Misc:AddToggle(REMOVEFOG2,RemoveFog,function(value)
                RemoveFog = value
                task.spawn(function()
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
            end)
            
            Misc:AddButton("Unlock FPS",function()
                setfpscap(100)
            end)
            
            Misc:AddSeperator("ESP")
        
            Misc:AddToggle("ESP Player",false,function(value)
                ESPPlayer = value
                while ESPPlayer do wait()
                    UpdatePlayerChams()
                end
            end)
            
            Misc:AddToggle("ESP Chest",false,function(value)
                ChestESP = value
                while ChestESP do wait()
                    UpdateChestChams() 
                end
            end)
            
            Misc:AddToggle("ESP Fruit",false,function(value)
                DevilFruitESP = value
                while DevilFruitESP do wait()
                    UpdateDevilChams() 
                end
            end)
            
            Misc:AddToggle("ESP Flower",false,function(value)
                FlowerESP = value
                while FlowerESP do wait()
                    UpdateFlowerChams() 
                end
            end)
            
            Misc:AddToggle("ESP Island",IslandESP,function(value)
                IslandESP = value
                while IslandESP do wait()
                    UpdateIslandESP() 
                end
            end)
        
            Misc:AddToggle("ESP Npc",NpcESP,function(value)
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
            
            Misc:AddSeperator(ABOULTY)
            
            Misc:AddToggle("Dodge No Cooldown",false,function(value)
                nododgecool = value
                NoDodgeCool()
            end)
            
            Misc:AddToggle("Infinite Energy",false,function(value)
                InfiniteEnergy = value
                originalstam = LocalPlayer.Character.Energy.Value
            end)
            
            Misc:AddToggle("Auto Active Race",_G.AutoAgility,function(value)
                _G.AutoAgility = value
            end)
            
            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.AutoAgility then
                            game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                        end
                    end
                end)
            end)
            
            Misc:AddToggle("Infinite Ability",false,function(value)
                InfAbility = value
                if value == false then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
                end
            end)
            
            spawn(function()
                while wait() do
                    if InfAbility then
                        InfAb()
                    end
                end
            end)
            
            Misc:AddToggle("Infinite Obversation Range",getgenv().InfiniteObRange,function(value)
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
            
            Misc:AddToggle("Infinite Geppo",getgenv().InfGeppo,function(value)
                getgenv().InfGeppo = value
            end)
            
            spawn(function()
                while wait() do
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
            
            Misc:AddToggle("Infinite Soru",getgenv().InfSoru,function(value)
                getgenv().InfSoru = value
            end)
            
            spawn(function()
                while wait() do
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
            
            Misc:AddToggle("Walk on Water",_G.WalkWater,function(value)
                _G.WalkWater = value
            end)
            
            spawn(function()
                while task.wait() do
                    pcall(function()
                        if _G.WalkWater then
                            game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
                        else
                            game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
                        end
                    end)
                end
            end)
            
            Misc:AddToggle("NoClip",_G.NOCLIP,function(value)
                _G.NOCLIP = value
            end)
            
            Misc:AddSeperator("Mastery Health Settings")
            
            _G.Kill_At = 25
            Misc:AddSlider("Kill At %",10,100,17,function(value)
                _G.Kill_At = value
            end)
            
            Misc:AddSeperator("Mastery Skill Settings")
            
            Misc:AddToggle("Skill Z",true,function(value)
                _G.SkillZ = value
            end)
            
            Misc:AddToggle("Skill X",true,function(value)
                _G.SkillX = value
            end)
            
            Misc:AddToggle("Skill C",true,function(value)
                _G.SkillC = value
            end)
            
            Misc:AddToggle("Skill V",true,function(value)
                _G.SkillV = value
            end) 

            Misc:AddToggle("Skill F",false,function(value)
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
            -------------------------FINISH-------------------------------------
            end
            end
        end
        _G.Authenicated = string.reverse(game.Players.LocalPlayer.UserId)
        Script()
