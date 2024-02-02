local GetLoadLink = function(Url)
	return game:HttpGet(Url)
end

spawn(function()
    if setfpscap then
        setfpscap(60)
    end
end)
spawn(function()
	if setfflag then
		setfflag("AbuseReportScreenshot", "False")
		setfflag("AbuseReportScreenshotPercentage", "0")
	end
end)
game:GetService("Players").LocalPlayer.Idled:connect(
function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local Player = Players.LocalPlayer

local ZekromHubLibV2 = {
  info = {
    Version = "v1.5.0",
    PlaceName = MarketplaceService:GetProductInfo(game.PlaceId).Name
  },
  Themes = loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/SpeedHubLib_V2/GetTheme.lua"))(),
  Flags = {},
  Save = {
    Theme = "Default",
    UISize = {600, 350},
    ScrollSize = 160,
    TransparencyHub = 0.1
  },
  Icons = loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/SpeedHubLib_V2/GetIcons.lua"))() ,
  SaveForTheme = {
    Stroke = {},
    Buttons = {},
    Images = {},
    Text = {},
    DarkText = {},
    Frames = {},
    Corner = {},
    Theme = {},
    Toggle = {}
  }
}
local function GetIcon(GetName)
  if #GetName:split("") < 1 then return GetName end
  for iconName,rbxassetid in pairs(ZekromHubLibV2.Icons) do
    local Name1 = GetName:lower():gsub("lucide", ""):gsub("-", "")
    local Name2 = iconName:lower():gsub("lucide", ""):gsub("-", "")
    
    if Name1 == Name2 then
      return rbxassetid
    end
  end
  for iconName,rbxassetid in pairs(ZekromHubLibV2.Icons) do
    local Name1 = GetName:lower():gsub("lucide", ""):gsub("-", "")
    local Name2 = iconName:lower():gsub("lucide", ""):gsub("-", "")
    if Name2:find(Name1) then
      return rbxassetid
    end
  end
  return GetName
end
local ViewportSize = workspace.CurrentCamera.ViewportSize
local UIScale = ViewportSize.Y / 550
local function SetProps(Instance, props)
  if props and typeof(props) == "table" then
    table.foreach(props, function(prop, value)
      Instance[prop] = value
    end)
  end
  return Instance
end
local function SetChildren(Instance, children)
  if children and typeof(children) == "table" then
    table.foreach(children, function(a, b)
      b.Parent = Instance
    end)
  end
  return Instance
end
local function Create(InstanceName, parent, props, Children)
  local New = Instance.new(InstanceName)
  if parent and typeof(parent) == "Instance" then 
  New.Parent = parent SetProps(New, props)SetChildren(New, Children)
  else SetProps(New, parent)SetChildren(New, props)end
  return New
end
local function FindTable(table, val)
  for i,_ in pairs(table) do
    if i == val then
      return true
    end
  end
end
local function VerifyTheme(ThemeName)
  for name,__ in pairs(ZekromHubLibV2.Themes) do
    if name == ThemeName then
      return true
    end
  end
end
local function LoadSettings(FileName)
  if readfile and isfile and isfile(FileName) then
    local decode = HttpService:JSONDecode(readfile(FileName))
    if decode and typeof(decode) == "table" then
      if FindTable(decode, "ScrollSize") then ZekromHubLibV2.Save["ScrollSize"] = decode["ScrollSize"]end
      if FindTable(decode, "UISize") then ZekromHubLibV2.Save["UISize"] = decode["UISize"]end
      if FindTable(decode, "Theme") and VerifyTheme(decode["Theme"]) then ZekromHubLibV2.Save["Theme"] = decode["Theme"]end
      if FindTable(decode, "TransparencyHub")then ZekromHubLibV2.Save["TransparencyHub"] = decode["TransparencyHub"]end
    end
  end
end;LoadSettings("Zekrom Hub X Library V4.lua")
local Theme = ZekromHubLibV2.Themes[ZekromHubLibV2.Save.Theme]
local function SaveSenttigs(FileName, save)
  if writefile then
    local json = HttpService:JSONEncode(save)
    writefile(FileName, json)
  end
end
local function CreateTween(Configs)
  local Instance = Configs[1] or Configs.Instance
  local Prop = Configs[2] or Configs.Prop
  local NewVal = Configs[3] or Configs.NewVal
  local Time = Configs[4] or Configs.Time or 0.5
  local TweenWait = Configs[5] or Configs.wait or false
  local TweenInfo = TweenInfo.new(Time, Theme["Tween Style"])
  
  local Tween = TweenService:Create(Instance, TweenInfo, {[Prop] = NewVal})
  Tween:Play()
  if TweenWait then
    Tween.Completed:Wait()
  end
  return Tween
end
local function MakeDrag(Instance)
	task.spawn(function()
		local DragStart, StartPos
		local function Update(Input)
			local delta = Input.Position - DragStart
			local Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + delta.X / UIScale, StartPos.Y.Scale, StartPos.Y.Offset + delta.Y / UIScale)
			Instance.Position = Position
		end
    Instance.InputBegan:Connect(function(Input)
      if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
        StartPos = Instance.Position
        DragStart = Input.Position
        while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do RunService.Heartbeat:Wait()
          Update(Input)
        end
      end
    end)
	end)
return Instance
end
local function insertTheme(instance, Theme)
  table.insert(ZekromHubLibV2.SaveForTheme[Theme], instance)
  if typeof(instance) == "table" then
    return instance[1]
  end
  return instance
end
local function Corner(props, Circle)
  local New = Create("UICorner", {
    CornerRadius = Circle and UDim.new(0.7, 0)
  })SetProps(New, props)
  if not Circle then table.insert(ZekromHubLibV2.SaveForTheme.Corner, New)end
  return New
end
local function Stroke(props)
  local New = Create("UIStroke", {
    Color = Theme["Color Stroke"],
    Thickness = Theme["Stroke Thickness"],
    ApplyStrokeMode = "Border"
  })SetProps(New, props)
  table.insert(ZekromHubLibV2.SaveForTheme.Stroke, New)
  return New
end
local function Button(parent, props, childrens)
  local New = Create("TextButton", parent, {
    Text = "",
    AutoButtonColor = false,
    BackgroundColor3 = Theme["Color Background 2"],
    BackgroundTransparency = Theme["Transparency"],
    Name = "Frame"
  }, {Corner()})SetProps(New, props)SetChildren(New, childrens)
  table.insert(ZekromHubLibV2.SaveForTheme.Buttons, New)
  return New
end
local function AddConnection(Instance, Connection, func)
  Instance[Connection]:Connect(function()func(Instance)end)
  return Instance
end
local function ConnectSave(Instance, func)
  Instance.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
      while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
      end
    end
    func()
  end)
end
local ScreenGui = Create("ScreenGui", CoreGui, {
  Name = "Zekrom Hub X library V4"
}, {
  Create("UIScale", {
    Scale = UIScale
  })
})

local ScreenFind = CoreGui:FindFirstChild(ScreenGui.Name)
if ScreenFind and ScreenFind ~= ScreenGui then
  ScreenFind:Destroy()
end
task.spawn(function()
  local NotifyContainer = Create("Frame", ScreenGui, {
    Size = UDim2.new(0, 300, 1),
    Position = UDim2.fromScale(1),
    AnchorPoint = Vector2.new(1),
    BackgroundTransparency = 1
  }, {
    Create("UIPadding", {
      PaddingLeft = UDim.new(0, 25),
      PaddingTop = UDim.new(0, 25),
      PaddingBottom = UDim.new(0, 30)
    }), Create("UIListLayout", {
      Padding = UDim.new(0, 15),
        VerticalAlignment = "Bottom"
    })
  })
  function ZekromHubLibV2:MakeNotify(Configs)
    local NTitle = Configs[1] or Configs.Title or "Notification"
    local NText = Configs[2] or Configs.Text or ""
    local NTime = Configs[3] or Configs.Time or 5
    local NFrame = Create("Frame", NotifyContainer, {
      Size = UDim2.new(2, 0, 0, 0),
      BackgroundTransparency = 1,
      AutomaticSize = "Y",
      Name = "Title"
    })
    local RealNFrame = insertTheme(Create("Frame", NFrame, {
      Size = UDim2.new(0.5, -25),
      BackgroundColor3 = Theme["Color Background 1"],
      BackgroundTransparency = Theme["Transparency"],
      Position = UDim2.fromOffset(1),
      AutomaticSize = "Y",
      Active = true
    }, {
      Corner(),
      insertTheme(Create("TextLabel", {
        Size = UDim2.new(1, 0, 0, 15),
        Font = Theme["Font"][2],
        BackgroundTransparency = 1,
        Text = NTitle,
        TextSize = 12,
        Position = UDim2.new(0, 15, 0, 5),
        TextXAlignment = "Left",
        TextColor3 = Theme["Color Text"]
      }), "Text"),
      insertTheme(Create("TextLabel", {
        Size = UDim2.new(1, -25, 0, 0),
        Position = UDim2.new(0, 15, 0, 25),
        TextSize = 10,
        TextColor3 = Theme["Color Dark Text"],
        TextXAlignment = "Left",
        TextYAlignment = "Top",
        AutomaticSize = "Y",
        Text = NText,
        Font = Theme["Font"][3],
        BackgroundTransparency = 1,
        AutomaticSize = Enum.AutomaticSize.Y,
        TextWrapped = true
      }, {
        Create("Frame", {
          Size = UDim2.fromOffset(0, 8),
          Position = UDim2.fromScale(0, 1),
          BackgroundTransparency = 1
        })
      }), "DarkText")
    }), "Frames")
    local CloseNotify = Create("TextButton", RealNFrame, {
      Text = "X",
      Font = Enum.Font.FredokaOne,
      TextSize = 15,
      BackgroundTransparency = 1,
      TextColor3 = Color3.fromRGB(200, 200, 200),
      Position = UDim2.new(1, -5, 0, 2),
      AnchorPoint = Vector2.new(1, 0),
      Size = UDim2.fromOffset(15, 15)
    })
    local NotifyTimer = insertTheme(Create("Frame", RealNFrame, {
      Size = UDim2.new(1, 0, 0, 1.5),
      BackgroundColor3 = Theme["Color Stroke"],
      Position = UDim2.new(0, 2, 0, 20),
      BorderSizePixel = 0
    }, {
      Corner(),
      Create("Frame", {
        Size = UDim2.new(0, 0, 0, 5),
        Position = UDim2.new(0, 0, 1, 5),
        BackgroundTransparency = 1
      })
    }), "Stroke")
    local NotifyFinish, destroy
    CloseNotify.MouseButton1Click:Connect(function()
      if not destroy and not NotifyFinish and NFrame then
        NotifyFinish = true
        CreateTween({RealNFrame, "Position", UDim2.new(0, -50), 0.15, true})
        CreateTween({RealNFrame, "Position", UDim2.new(1), 0.50, true})
        NFrame:Destroy()
        destroy = true
      end
    end)  
    task.spawn(function()
      CreateTween({RealNFrame, "Position", UDim2.new(0, -50), 0.5, true})
      CreateTween({RealNFrame, "Position", UDim2.new(0, 0), 0.15, true})
      CreateTween({NotifyTimer, "Size", UDim2.new(0, 0, 0, 1.5), NTime, true})
      if not destroy and not NotifyFinish and NFrame then
        NotifyFinish = true
        CreateTween({RealNFrame, "Position", UDim2.new(0, -50), 0.15, true})
        CreateTween({RealNFrame, "Position", UDim2.new(1), 0.50, true})
        NFrame:Destroy()
        destroy = true
      end
    end)
    
    local Notify = {}
    function Notify:Destroy()destroy = true NFrame:Destroy()end
    function Notify:Visible(Bool)NFrame.Visible = Bool end
    function Notify:Wait()repeat task.wait()until not NFrame or NotifyFinish or destroy end
    return Notify
  end
end)

-- Themes
function ZekromHubLibV2:GetIcon(IconName)
  return GetIcon(IconName)
end
function ZekromHubLibV2:SetTransparency(NewVal)
  local NewVal = math.clamp(NewVal, 0, 0.5)
  ZekromHubLibV2.Save.TransparencyHub = NewVal
  
  local Save = ZekromHubLibV2.SaveForTheme
  table.foreach(Save.Frames, function(_,Intance)
    Intance.BackgroundTransparency = NewVal
  end)
  table.foreach(Save.Buttons, function(_,Intance)
    Intance.BackgroundTransparency = NewVal
  end)
end
function ZekromHubLibV2:CreateTheme(ThemeName, Configs)
  ZekromHubLibV2.Themes[ThemeName] = Configs
end
function ZekromHubLibV2:SetTheme(themeName)
  if not VerifyTheme(themeName) then return end
  
  Theme, ZekromHubLibV2.Save.Theme = ZekromHubLibV2.Themes[themeName], themeName
  Theme["Transparency"] = ZekromHubLibV2.Save.TransparencyHub
  
  local Save = ZekromHubLibV2.SaveForTheme
  SaveSenttigs("Zekrom Hub X library V4.lua", ZekromHubLibV2.Save)
  
  table.foreach(Save.Frames, function(_,Intance)
    if not Intance then return end
    Intance.BackgroundColor3 = Theme["Color Background 1"]
    Intance.BackgroundTransparency = Theme["Transparency"]
  end)
  table.foreach(Save.Buttons, function(_,Intance)
    if not Intance then return end
    Intance.BackgroundColor3 = Theme["Color Background 2"]
    Intance.BackgroundTransparency = Theme["Transparency"]
  end)
  table.foreach(Save.Stroke, function(_,Intance)
    if not Intance then return end
    if Intance:IsA("ImageLabel") then
      Intance.ImageColor3 = Theme["Color Stroke"]
    elseif Intance:IsA("UIStroke") then
      Intance.Color = Theme["Color Stroke"]
      Intance.Thickness = Theme["Stroke Thickness"]
    else
      Intance.BackgroundColor3 = Theme["Color Stroke"]
    end
  end)
  table.foreach(Save.Corner, function(_,Intance)
    if not Intance then return end
    Intance.CornerRadius = Theme["Corner Radius"]
  end)
  table.foreach(Save.Text, function(_,Intance)
    if not Intance then return end
    if Intance:IsA("ImageLabel") then
      Intance.ImageColor3 = Theme["Color Text"]
    else
      Intance.TextColor3 = Theme["Color Text"]
    end
  end)
  table.foreach(Save.DarkText, function(_,Intance)
    if not Intance then return end
    Intance.TextColor3 = Theme["Color Dark Text"]
  end)
  table.foreach(Save.Theme, function(_,Intance)
    if not Intance then return end
    Intance.BackgroundColor3 = Theme["Color Theme"]
  end)
  table.foreach(Save.Toggle, function(_,table)
    if not table[1] then return end
    if table[2]:GetToggle() then
      if table[1]:IsA("Frame") then
        table[1].BackgroundColor3 = Theme["Color Theme"]
      else
        table[1].Color = Theme["Color Theme"]
      end
    else
      if table[1]:IsA("Frame") then
        table[1].BackgroundColor3 = Theme["Color Stroke"]
      else
        table[1].Color = Theme["Color Stroke"]
      end
    end
  end)
end
function ZekromHubLibV2:GetThemes()
  local Themes = {}
  table.foreach(ZekromHubLibV2.Themes, function(ThemeName)
    table.insert(Themes, ThemeName)
  end)
  return Themes
end

-- Window
function ZekromHubLibV2:Visible(Bool)ScreenGui.Enabled = Bool end
function ZekromHubLibV2:Destroy()SreenGui:Destroy()end
function ZekromHubLibV2:MakeWindow(Configs)
  local Minimized, WaitMinimize, SavedSize
  local WTitle = Configs[1] or Configs.Title or "Zekrom Hub X library"
  local SubTitle = Configs[2] or Configs.SubTitle or "by : TMRX Team"
  local LoadTitle = Configs[3] or Configs.LoadText or SubTitle
  local DefaultTheme = Configs[4] or Configs.DefaultTheme or false
  local SaveCfg = Configs[5] or Configs.Flags or "Zekrom Hub X Library v4 | Flags.lua"
  local Flags = ZekromHubLibV2.Flags
  
  if SaveCfg and typeof(SaveCfg) == "string" then
    SaveCfg = string.gsub(SaveCfg, "/", "|")
  end
  
  if DefaultTheme and typeof(DefaultTheme) == "string" and VerifyTheme(DefaultTheme) then
    ZekromHubLibV2:SetTheme(DefaultTheme)
  end

  local function SaveFile(Name, Value)
    if writefile then
      if SaveCfg and typeof(SaveCfg) == "string" then
        Flags[Name] = Value
        local encode = HttpService:JSONEncode(Flags)
        writefile(SaveCfg, encode)
      end
    end
  end
  local function LoadFile()
    if SaveCfg and typeof(SaveCfg) == "string" then
      if readfile and isfile and isfile(SaveCfg) then
        local decode = HttpService:JSONDecode(readfile(SaveCfg))
        
        if decode and typeof(decode) == "table" then
          Flags = decode
        end
      end
    end
  end;LoadFile()
  
  local MainFrame = MakeDrag(insertTheme(Create("Frame", ScreenGui, {
    Size = UDim2.fromOffset(unpack(ZekromHubLibV2.Save.UISize)),
    Position = UDim2.new(0.5, -ZekromHubLibV2.Save.UISize[1]/2, 0.5, -ZekromHubLibV2.Save.UISize[2]/2),
    Active = true,
    BackgroundColor3 = Color3.fromRGB(34, 34, 34),
    BackgroundTransparency = 0
  }, {Corner()}), "Frames"))

  local Topbar = Create("Frame", MainFrame, {
    Size = UDim2.new(1, 0, 0, 28),
    BackgroundTransparency = 1
  })

  local UIStrokeMain2 = Create("UIStroke", MainFrame, {
    Thickness = 1.5,
    Color = Color3.fromRGB(66, 138, 245)
  })
  
  local MainScroll = Create("ScrollingFrame", MainFrame, {
    Size = UDim2.new(0, ZekromHubLibV2.Save.ScrollSize, 1, -Topbar.Size.Y.Offset),
    Position = UDim2.new(0, 0, 1, 0),
    AnchorPoint = Vector2.new(0, 1),
    ScrollBarThickness = 1,
    BackgroundTransparency = 1,
    CanvasSize = UDim2.new(),
    AutomaticCanvasSize = "Y"
  }, {
    Create("UIPadding", {
      PaddingLeft = UDim.new(0, 10),
      PaddingRight = UDim.new(0, 10),
      PaddingTop = UDim.new(0, 10),
      PaddingBottom = UDim.new(0, 10)
    }), Create("UIListLayout", {
      Padding = UDim.new(0, 5)
    })
  })
  
  local Containers = Create("Frame", MainFrame, {
    Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -Topbar.Size.Y.Offset),
    AnchorPoint = Vector2.new(1, 1),
    Position = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 1
  })
  
  local ControlSize1, ControlSize2 = MakeDrag(Create("Frame", MainFrame, {
    Size = UDim2.new(0, 35, 0, 35),
    Position = MainFrame.Size,
    Active = true,
    Draggable = true,
    AnchorPoint = Vector2.new(0.8, 0.8),
    BackgroundTransparency = 1
  })), MakeDrag(Create("Frame", MainFrame, {
    Size = UDim2.new(0, 20, 1, -30),
    Position = UDim2.new(0, MainScroll.Size.X.Offset, 1, 0),
    AnchorPoint = Vector2.new(0.5, 1),
    Active = true,
    BackgroundTransparency = 1
  }))
  local function ControlSize()
    local Pos1, Pos2 = ControlSize1.Position, ControlSize2.Position
    ControlSize1.Position = UDim2.fromOffset(math.clamp(Pos1.X.Offset, 400, 1000), math.clamp(Pos1.Y.Offset, 200, 500))
    ControlSize2.Position = UDim2.new(0, math.clamp(Pos2.X.Offset, 135, 250), 1, 0)
    MainScroll.Size = UDim2.new(0, ControlSize2.Position.X.Offset, 1, -Topbar.Size.Y.Offset)
    Containers.Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -Topbar.Size.Y.Offset)
    MainFrame.Size = ControlSize1.Position
  end
  ControlSize1:GetPropertyChangedSignal("Position"):Connect(ControlSize)
  ControlSize2:GetPropertyChangedSignal("Position"):Connect(ControlSize)
  ConnectSave(ControlSize1, function()
    if not Minimized then
      ZekromHubLibV2.Save.UISize = {MainFrame.Size.X.Offset, MainFrame.Size.Y.Offset}
      SaveSenttigs("Zekrom Hub X library V4.lua", ZekromHubLibV2.Save)
    end
  end)
  ConnectSave(ControlSize2, function()
    ZekromHubLibV2.Save.ScrollSize = MainScroll.Size.X.Offset
    SaveSenttigs("Zekrom Hub X V4.lua", ZekromHubLibV2.Save)
  end)
  local DialogBackground = insertTheme(AddConnection(Create("TextButton", MainFrame, {
    BackgroundTransparency = 0.5,
    Text = "",
    BackgroundColor3 = Theme["Color Background 2"],
    Visible = false,
    AutoButtonColor = false,
    AnchorPoint = Vector2.new(0.5, 0.5),
    Position = UDim2.fromScale(0.5, 0.5)
  }, {
    Corner()
  }), "MouseButton1Click", function(DialogBackground)
    CreateTween({DialogBackground, "Size", UDim2.new(), 0.0, true})
    DialogBackground.Visible = false
  end), "Stroke")
  local DialogFrame = insertTheme(Create("Frame", DialogBackground, {
    Size = UDim2.fromScale(0.65, 0.6),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Position = UDim2.fromScale(0.5, 0.5),
    BackgroundColor3 = Color3.fromRGB(34, 34, 34),
    Active = true
  }, {
    Corner(),
    Stroke()
  }), "Frames")
  local DialogTitle = insertTheme(Create("TextLabel", DialogFrame, {
    Size = UDim2.fromScale(0.6, 0.3),
    Position = UDim2.fromScale(0.5, 0.15),
    TextColor3 = Theme["Color Text"],
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    Font = Theme["Font"][1],
    TextScaled = true
  }), "Text")
  
  local DialogConfirm = insertTheme(Create("TextButton", DialogFrame, {
    Size = UDim2.fromScale(0.35, 0.20),
    Position = UDim2.fromScale(0.1, 0.65),
    BackgroundColor3 = Theme["Color Background 2"],
    TextColor3 = Color3.fromRGB(0, 200, 0),
    Font = Theme["Font"][2],
    TextSize = 18
  }, {
    Corner(),
    Stroke()
  }), "Buttons")
  
  local DialogCancel = insertTheme(Create("TextButton", DialogFrame, {
    Size = UDim2.fromScale(0.35, 0.20),
    Position = UDim2.fromScale(0.9, 0.65),
    AnchorPoint = Vector2.new(1, 0),
    BackgroundColor3 = Theme["Color Background 2"],
    TextColor3 = Color3.fromRGB(200, 0, 0),
    Font = Theme["Font"][2],
    TextSize = 18
  }, {
    Corner(),
    Stroke()
  }), "Buttons")
  local CloseBTN = insertTheme(Create("TextButton", Topbar, {
    Size = UDim2.fromOffset(20, 20),
    Position = UDim2.new(1, -10, 0.5, 1.5),
    AnchorPoint = Vector2.new(1, 0.5),
    Font = Enum.Font.FredokaOne,
    Text = "×",
    TextSize = 27,
    BackgroundTransparency = 1,
    TextColor3 = Theme["Color Text"],
    AutoButtonColor = false,
    TextYAlignment = "Bottom"
  }), "Text")
  local LabelTitle = insertTheme(Create("TextLabel", Topbar, {
    Font = Theme["Font"][1],
    TextSize = 16,
    TextColor3 = Theme["Color Text"],
    Text = WTitle,
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 20, 0, 0),
    Size = UDim2.fromScale(0, 1),
    AutomaticSize = "X",
    TextXAlignment = "Left"
  }, {
    insertTheme(Create("TextLabel", {
      TextSize = 10,
      Font = Theme["Font"][2],
      TextColor3 = Theme["Color Dark Text"],
      Position = UDim2.new(1, 5, 0, 2),
      Text = SubTitle,
      Size = UDim2.new(1, 0, 1, 0),
      BackgroundTransparency = 1,
      TextXAlignment = "Left"
    }), "DarkText")
  }), "Text")
  
  local IsFirst
  local Window = {Dialog = {}}
  CloseBTN["MouseButton1Click"]:Connect(function()
    if not WaitMinimize then
      WaitMinimize = true
      Window.Dialog:Create({
        Title = "You Want Close To Zekrom Hub X?",
        Confirm = {
          Text = "Yes",
          Callback = function()
            CreateTween({ScreenGui.UIScale, "Scale", 0, 0.3, true})
            ScreenGui:Destroy()
          end
        },
        Cancel = {
          Cancel = "Cancel"
        }
      })
      WaitMinimize = false
    end
  end)
  function Window.Dialog:Wait()
    repeat task.wait()
    until not DialogBackground or not DialogBackground.Visible
  end
  function Window.Dialog:Create(Configs)
    local Dialog = {
      Title = Configs[1] or Configs.Title or "Dialog",
      Confirm = {
        Text = Configs.Confirm[1] or Configs.Confirm.Text or "Confirm",
        Callback = Configs.Confirm[2] or Configs.Confirm.Callback or function()end
      },
      Cancel = {
        Text = Configs.Cancel[1] or Configs.Cancel.Text or "Cancel",
        Callback = Configs.Cancel[2] or Configs.Cancel.Callback or function()end
      },
    }
    
    local connect1, connect2
    local function disconnect()
      connect1:Disconnect()
      connect2:Disconnect()
    end
    
    DialogTitle.Text = Dialog.Title
    DialogCancel.Text = Dialog.Cancel.Text
    DialogConfirm.Text = Dialog.Confirm.Text
    
    connect1 = DialogCancel.MouseButton1Click:Connect(function()disconnect()
      task.spawn(Dialog.Cancel.Callback)
      CreateTween({DialogBackground, "Size", UDim2.new(), 0.3, true})
      DialogBackground.Visible = false
    end)
    
    connect2 = DialogConfirm.MouseButton1Click:Connect(function()disconnect()
      task.spawn(Dialog.Confirm.Callback)
      CreateTween({DialogBackground, "Size", UDim2.new(), 0.3, true})
      DialogBackground.Visible = false
    end)
    
    DialogBackground.Visible = true
    if Minimized then
      CreateTween({MainFrame, "Size", SavedSize, 0.3})
      MinimizeBTN.Text = "-"
      Minimized = false
    end
    CreateTween({DialogBackground, "Size", UDim2.fromScale(1, 1), 0.2, true})
  end
  function Window:Destroy()MainFrame:Destroy()end
  function Window:Visible(Bool)MainFrame.Visible = Bool end
  function Window:Set(NewVal)
    if typeof(NewVal) == "string" then
      LabelTitle.Text = NewVal
    elseif typeof(NewVal) == "number" then
      ZekromHubLibV2:SetTransparency(NewVal)
    end
  end
  function Window:MakeTab(Configs)
    local TName = Configs[1] or Configs.Name or "Tab"
    local TImage = Configs[2] or Configs.Icon or "rbxassetid://"
    
    if not TImage:find("rbxassetid://") then
      TImage = GetIcon(TImage)
    end
    if not TImage:find("rbxassetid://") or #TImage:gsub("rbxassetid://", ""):split("") < 5 then
      TImage = false
    end
    
    local Container = Create("ScrollingFrame", Containers, {
      Size = UDim2.new(1, 0, 1, 0),
      ScrollBarThickness = 1,
      BackgroundTransparency = 1,
      AutomaticCanvasSize = "Y",
      CanvasSize = UDim2.new(),
      Visible = not IsFirst
    }, {
      Create("UIPadding", {
        PaddingLeft = UDim.new(0, 10),
        PaddingRight = UDim.new(0, 10),
        PaddingTop = UDim.new(0, 10),
        PaddingBottom = UDim.new(0, 10)
      }), Create("UIListLayout", {
        Padding = UDim.new(0, 5)
      })
    })

    local FrameC = Button(MainScroll, {
      Size = UDim2.new(1, 0, 0, 20),
    })

    local Text = insertTheme(Create("TextLabel", FrameC, {
      Font = Theme["Font"][3],
      Text = TName,
      Size = UDim2.new(1, -20, 1, 0),
      Position = UDim2.fromOffset(TImage and 38 or 18, 0),
      TextXAlignment = "Left",
      BackgroundTransparency = 1,
      TextColor3 = Theme["Color Text"],
      TextTransparency = IsFirst and 0.4 or 0,
      TextSize = 12,
      TextTruncate = "AtEnd"
    }), "DarkText")
    
    local Selected = insertTheme(Create("Frame", FrameC, {
      Size = UDim2.new(0, 5, 1, -6),
      Position = UDim2.new(0, 8, 0.5, 0),
      AnchorPoint = Vector2.new(0, 0.5),
      BackgroundTransparency = 1,
      BackgroundColor3 = Theme["Color Theme"]
    }, {
      Corner()
    }), "Theme")
    
    local Image = insertTheme(Create("ImageLabel", FrameC, {
      Size = UDim2.new(0, 15, 0, 15),
      Position = UDim2.new(0, 18, 0.5, 0),
      AnchorPoint = Vector2.new(0, 0.5),
      BackgroundTransparency = 1,
      Image = TImage or "",
      ImageTransparency = IsFirst and 0.4 or 0,
      ImageColor3 = Theme["Color Text"]
    }), "Text")
    
    FrameC.MouseButton1Click:Connect(function()
      for _,instance in pairs(Containers:GetChildren()) do
        if instance ~= Container and instance:IsA(Container.ClassName) then
          instance.Visible = false
        end
      end
      for _,instance in pairs(MainScroll:GetChildren()) do
        if instance ~= FrameC and instance:IsA(FrameC.ClassName) then
          CreateTween({instance["TextLabel"], "TextTransparency", 0.4, 0.3})
          CreateTween({instance["Frame"], "BackgroundTransparency", 1, 0.3})
          CreateTween({instance["ImageLabel"], "ImageTransparency", 0.4, 0.3})
        end
      end
      CreateTween({Text, "TextTransparency", 0, 0.3})
      CreateTween({Selected, "BackgroundTransparency", 1, 1})
      CreateTween({Image, "ImageTransparency", 0, 0.3})
      Container.Visible = true
    end)
    
    IsFirst = true
    local Tab = {}
    function Tab:Set(val1, val2)
      if val1 and typeof(val1) == "string" then
        if val2 then
          Text.Text = val1
          Image.Image = val2
        elseif val1:find("rbxassetid://") then
          Image.Image = val1
        else
          Text.Text = val1
        end
      end
    end
    function Tab:Visible(Bool)
      FrameC.Visible = Bool
      Container.Visible = Bool
    end
    function Tab:Destroy()
      FrameC:Destroy()
      Container:Destroy()
    end
    function Tab:AddSection(Configs)
      local SName = Configs[1] or Configs.Name or "Section"
      
      local Frame = Create("Frame", Container, {
        Size = UDim2.new(1, 0, 0, 15),
        BackgroundTransparency = 1
      })
      local Text = insertTheme(Create("TextLabel", Frame, {
        Font = Theme["Font"][2],
        Text = SName,
        TextSize = 11,
        Size = UDim2.new(1, -20, 1, 0),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Dark Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "DarkText")
      local Section = {}
      function Section:Set(NewVal)Text.Text = NewVal end
      function Section:Destroy()Frame:Destroy()end
      function Section:Visible(Bool)Frame.Visible = Bool end
      return Section
    end
    function Tab:AddLabel(Configs)
      local Type = Configs[1] or Configs.Type or "Text"
      local NameI = Configs[2] or Configs.Name or "This is a " ..  Type .. " Label"
      local ImageI = Configs[3] or Configs.Image or "rbxassetid://"
      local Frame = Button(Container, {
        Size = UDim2.new(1, 0, 0, 25)
      }, {
        Corner()
      })
      local Bagulho1, Bagulho2
      if Type == "Image" then
        Frame.Size = UDim2.new(1, 0, 0, 160)
        Bagulho1 = insertTheme(Create("TextLabel", Frame, {
          Font = Theme["Font"][2],
          Text = NameI,
          TextSize = 13,
          Size = UDim2.new(1, -25, 0, 25),
          Position = UDim2.new(0, 15, 0, 0),
          BackgroundTransparency = 1,
          TextColor3 = Theme["Color Text"],
          TextXAlignment = "Left",
          TextTruncate = "AtEnd"
        }), "Text")
        Bagulho2 = Create("ImageLabel", Frame, {
          Size = UDim2.new(0, 125, 0, 125),
          Position = UDim2.new(0, 15, 0, 25),
          BackgroundTransparency = 1,
          Image = ImageI
        })
      else
        Bagulho1 = insertTheme(Create("TextLabel", Frame, {
          Font = Theme["Font"][2],
          Text = NameI,
          TextSize = 13,
          Size = UDim2.new(1, -25, 1, 0),
          Position = UDim2.new(0, 15, 0, 0),
          BackgroundTransparency = 1,
          TextColor3 = Theme["Color Text"],
          TextXAlignment = "Left",
          TextTruncate = "AtEnd"
        }), "Text")
      end
      local Label = {}
      function Label:Visible(Bool)Frame.Visible = Bool end
      function Label:Destroy()Frame:Destroy()end
      function Label:Set(NewValue1, NewValue2)
        if Type == "Image" then
          if typeof(NewValue1) == "string" then
            if string.find(NewValue1, "rbxassetid://") then
              Bagulho2.Image = NewValue1
            else
              Bagulho1.Text = NewValue1
            end
            if NewValue2 and string.find(NewValue2, "rbxassetid://") then
              Bagulho2.Image = NewValue2
            end
          end
        else
          if typeof(NewValue1) == "string" then
            Bagulho1.Text = NewValue1
          end
        end
      end
      return Label
    end
    function Tab:AddParagraph(Configs)
      local ParagraphName1 = Configs[1] or Configs.Name or "Paragraph!!"
      local ParagraphName2 = Configs[2] or Configs.Text or "Paragraph!!"
      
      local Frame = Button(Container, {
        Size = UDim2.new(1, 0, 0, 25),
        AutomaticSize = "Y"
      }, {
        Corner(),
        Create("UIListLayout"),
        Create("UIPadding", {
          PaddingLeft = UDim.new(0, 15),
          PaddingRight = UDim.new(0, 10),
          PaddingTop = UDim.new(0, 5),
          PaddingBottom = UDim.new(0, 5)
        }),
        Create("UIStroke", {
            Thickness = 1,
            Color = Theme["Color Stroke"]
        })
      })
      local TextLabel1 = Create("TextLabel", Frame, {
        TextSize = 13,
        TextColor3 = Theme["Color Text"],
        Text = ParagraphName1,
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = "Y",
        BackgroundTransparency = 1,
        TextXAlignment = "Left",
        TextYAlignment = "Top",
        Font = Theme["Font"][2],
        TextWrapped = true
      })
      local TextLabel2 = Create("TextLabel", Frame, {
        Size = UDim2.new(1, 0, 0, 0),
        BackgroundTransparency = 1,
        AutomaticSize = "Y",
        TextXAlignment = "Left",
        TextYAlignment = "Top",
        TextColor3 = Theme["Color Dark Text"],
        TextSize = 11,
        Text = ParagraphName2,
        Font = Theme["Font"][3],
        TextWrapped = true
      })
      local Paragraph = {}
      function Paragraph:Set(val1, val2)
        if not val2 then
          TextLabel2.Text = val1
        else
          TextLabel1.Text = val1
          TextLabel2.Text = val2
        end
      end
      function Paragraph:Visible(Bool)Frame.Visible = Bool end
      function Paragraph:Destroy()Frame:Destroy()end
      return Paragraph
    end
    function Tab:AddButton(Configs)
      local BName = Configs[1] or Configs.Name or "Button"
      local Callback = Configs[2] or Configs.Callback or function()end
      local Frame = Button(Container, {Size = UDim2.new(1, 0, 0, 25), AutomaticSize = "Y"})
      local Text = insertTheme(Create("TextLabel", Frame, {
        Font = Theme["Font"][2],
        Text = BName,
        TextSize = 13,
        Size = UDim2.new(1, -50, 0, 25),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "Text")
      local ButtonIcon = insertTheme(Create("ImageLabel", Frame, {
        Size = UDim2.new(0, 16, 0, 16),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -10, 0.5, 0),
        BackgroundTransparency = 1,
        Image = "rbxassetid://15458295336",
        ImageColor3 = Color3.fromRGB(200, 200, 200)
      }), "Stroke")
      local WaitClick
      Frame.MouseButton1Click:Connect(function()
        task.spawn(Callback, "Click")
        if not WaitClick then
          WaitClick = true
          CreateTween({ButtonIcon, "ImageColor3", Theme["Color Theme"], 0.5})
          CreateTween({Text, "TextColor3", Theme["Color Theme"], 0.5, true})
          CreateTween({ButtonIcon, "ImageColor3", Color3.fromRGB(255, 255, 255), 0.5})
          CreateTween({Text, "TextColor3", Theme["Color Text"], 0.5, true})
          WaitClick = false
        end
      end)
      local Button = {}
      function Button:Callback(func)
        Frame.MouseButton1Click:Connect(function()
          task.spawn(func, "Click")
        end)
      end
      function Button:Visible(Bool)Frame.Visible = Bool end
      function Button:Destroy()Frame:Deztroy()end
      function Button:Set(Configs)
        if typeof(Configs) == "string" then Text.Text = Configs
        elseif typeof(Configs) == "function" then Callback = Configs end
      end
      return Button
    end
    function Tab:AddToggle(Configs)
      local TName = Configs[1] or Configs.Name or "Toggle"
      local Default = Configs[2] or Configs.Default or false
      local Callback = Configs[3] or Configs.Callback or function()end
      local Flag = Configs[4] or Configs.Flag or false
      local ToggleCallback, ToggleTable = {}, {}
      function ToggleTable:GetToggle()return Default end
      if Flag and typeof(Flag) == "string" and FindTable(Flags, Flag) then Default = Flags[Flag]end
      local Frame = Button(Container, {Size = UDim2.new(1, 0, 0, 25)})
      local Text = insertTheme(Create("TextLabel", Frame, {
        Font = Theme["Font"][2],
        Text = TName,
        TextSize = 13,
        Size = UDim2.new(1, -70, 1, 0),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "Text")
      local ToggleFrame = insertTheme(Create("Frame", Frame, {
        Size = UDim2.new(0, 35, 0, 16),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -10, 0.5, 0),
        BackgroundTransparency = 1
      }, {
        Corner({}, true)
      }), "Theme")
      local ToggleIcon = insertTheme({Create("Frame", ToggleFrame, {
        Size = UDim2.new(0, 26,0, 22),
        Position = UDim2.new(0.543, -3,0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = Color3.fromRGB(5, 5, 5)
      }, {
        Corner({}, true)
      }), ToggleTable}, "Toggle")
      local function SaveToggle()
        if Flag and typeof(Flag) == "string" then
          SaveFile(Flag, Default)
        end
      end

      local TweenWait
      local function SetToggle(NewVal)
        if not TweenWait then
          TweenWait = true
          Default = NewVal
          task.spawn(Callback, Default)
          SaveToggle()
          table.foreach(ToggleCallback, function(_,func)task.spawn(func, Default)end)
          if Default then
            CreateTween({ToggleIcon, "BackgroundColor3", Color3.fromRGB(48, 222, 29), 0.3})
          else
            CreateTween({ToggleIcon, "BackgroundColor3", Color3.fromRGB(5, 5, 5), 0.3})
          end
          TweenWait = false
        end
      end;task.spawn(SetToggle, Default, true)
      Frame.MouseButton1Click:Connect(function()
        SetToggle(not Default)
      end)
      local Toggle = {}
      function Toggle:Callback(func)
        Frame.MouseButton1Click:Connect(function()
          if not TweenWait then
            task.spawn(func, not NewVal)
          end
        end)
      end
      function Toggle:Set(newVal)
        if typeof(newVal) == "boolean" then SetToggle(newVal)
        elseif typeof(newVal) == "function" then Callback = (newVal)
        elseif typeof(newVal) == "string" then Text.Text = (newVal)
        end
      end
      function Toggle:Visible(Bool)Frame.Visible = Bool end
      function Toggle:Destroy()Frame:Destroy()end
      return Toggle
    end

    function Tab:AddSlider(Configs)
      local SName = Configs[1] or Configs.Name or "Slider"
      local Increase = Configs[5] or Configs.Increase or 1
      local Min = Configs[2] and Configs[2] / Increase or Configs.MinValue and Configs.MinValue / Increase or 10 / Increase
      local Max = Configs[3] and Configs[3] / Increase or Configs.MaxValue and Configs.MaxValue / Increase or 100 / Increase
      local Default = Configs[4] or Configs.Default or 25
      local Callback = Configs[6] or Configs.Callback or function()end
      local Save = Configs[7] or Configs.Flag or false
      local SliderCallback = {}
      
      if Save and typeof(Save) == "string" and FindTable(Flags, Save) then
        Default = Flags[Save]
      end
      local Frame = Button(Container, {Size = UDim2.new(1, 0, 0, 25)})
      local Text = insertTheme(Create("TextLabel", Frame, {
        Font = Theme["Font"][2],
        Text = SName,
        TextSize = 13,
        Size = UDim2.new(0.55, -15, 1, 0),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "Text")
      local SliderPart = Create("TextButton", Frame, {
        Size = UDim2.new(0.45, 0, 1, 0),
        Position = UDim2.new(1, 0, 0, 0),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundTransparency = 1,
        AutoButtonColor = false,
        Text = ""
      })
      
      local SliderBar = insertTheme(Create("Frame", SliderPart, {
        Size = UDim2.new(1, -20, 0, 8),
        Position = UDim2.new(0.5, 0, 0.5),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(5, 5, 5)
      }, {
        Corner({}, true)
      }), "Stroke")
      
      local Indicator = insertTheme(Create("Frame", SliderBar, {
        Size = UDim2.new(0, 0, 1, 0),
        BackgroundColor3 = Color3.fromRGB(5, 5, 5)
      }, {
        Corner({}, true)
      }), "Theme")
      
      local SliderIcon = insertTheme(Create("Frame", SliderBar, {
        Size = UDim2.new(0, 15, 0, 15),
        BackgroundColor3 = Color3.fromRGB(5, 5, 5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5)
      }, {
        Corner({}, true)
      }), "Stroke")

      local LabelVal = insertTheme(Create("TextLabel", SliderPart, {
        Size = UDim2.new(0, 18, 0, 18),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(0, 0, 0.5, 0),
        TextColor3 = Theme["Color Text"],
        BackgroundTransparency = 1,
        TextScaled = true,
        Font = Enum.Font.FredokaOne
      }), "Text")
      
      local BaseMousePos = Create("Frame", SliderBar, {
        Position = UDim2.new(0, 0, 0.5, 0),
        Visible = false
      })
      
      local function SaveSlider()
        if Save and typeof(Save) == "string" then
          SaveFile(Save, Default)
        end
      end
      
      local function UpdateLabel(NewValue)
        local Number = tostring(NewValue * Increase)
        
        LabelVal.Text = Number
        Default = tonumber(Number)
        task.spawn(Callback, tonumber(Number))
      end
      
      local function ControlPos()
        local MousePos = Player:GetMouse()
        local APos = MousePos.X - BaseMousePos.AbsolutePosition.X
        local ConfigureDpiPos = APos / SliderBar.AbsoluteSize.X
        
        SliderIcon.Position = UDim2.new(math.clamp(ConfigureDpiPos, 0, 1), 0, 0.5, 0)
      end
      
      SliderPart.MouseButton1Down:Connect(function()
        Container.ScrollingEnabled = false
        while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
          ControlPos()
        end
        table.foreach(SliderCallback, function(_,func)
          task.spawn(func, Default)
        end)
        SaveSlider()
        Container.ScrollingEnabled = true
      end)
      
      SliderIcon:GetPropertyChangedSignal("Position"):Connect(function()
        Indicator.Size = UDim2.new(SliderIcon.Position.X.Scale, 0, 1, 0)
        local SliderPos = SliderIcon.Position.X.Scale
        local NewValue = math.floor(((SliderPos * Max) / Max) * (Max - Min) + Min)
        UpdateLabel(NewValue)
      end)
      
		function SetSlider(NewValue)
        local Min, Max = Min * Increase, Max * Increase
        
        local SliderPos = (NewValue - Min) / (Max - Min)
        
        CreateTween({SliderIcon, "Position", UDim2.fromScale(math.clamp(SliderPos, 0, 1), 0.5), 0.3})
			end SetSlider(Default)
			
      local Slider = {}
      function Slider:Callback(func)
        func(Default)
        table.insert(SliderCallback, func)
      end
      function Slider:Set(val1)
        if typeof(val1) == "function" then Callback = val1
        elseif typeof(val1) == "string" then Text.Text = val1
        elseif typeof(val1) == "number" then SetSlider(val1) end
      end
      function Slider:Visible(Bool)Frame.Visible = Bool end
      function Slider:Destroy()Frame:Destroy()end
      return Slider
    end
    function Tab:AddColorpicker(Configs)
      local CName = Configs[1] or Configs.Name or "Colorpicker"
      local DefaultColor = Configs[2] or Configs.Default or Color3.fromRGB(0, 120, 50)
      local Callback = Configs[3] or Configs.Callback or function()end
      local Save = Configs[4] or Configs.Flag or false
      if Save and typeof(Save) == "string" and FindTable(Flags, Save) then
        DefaultColor = Color3.fromRGB(unpack(Flags[Save]))
      end
      
      local ColorH, ColorS, ColorV = Color3.toHSV(DefaultColor)
      
      local Frame = Button(Container, {Size = UDim2.new(1, 0, 0, 25)})
      local MainContainer = Create("Frame", Frame, {Size = UDim2.new(1, 0, 0, 25),BackgroundTransparency = 1})
      local Text = insertTheme(Create("TextLabel", MainContainer, {
        Font = Theme["Font"][2],
        Text = SName,
        TextSize = 13,
        Size = UDim2.new(0.55, -15, 1, 0),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "Text")
      
      local ColorSelected = Create("Frame", MainContainer, {
        Size = UDim2.new(0, 60, 1, -5),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -10, 0.5, 0)
      }, {
        Corner()
      })
      
      local function SaveColorpicker()
        if Save and typeof(Save) == "string" then
          local str = string.split(tostring(ColorSelected.BackgroundColor3))
          local Color = {
            tonumber(str[1]) * 255,
            tonumber(str[2]) * 255,
            tonumber(str[3]) * 255
          }
          
          SaveFile(Save, Color)
        end
      end
      
      local ColorpickerC = Create("Frame", Frame, {
        Size = UDim2.new(1, 0, 1, -25),
        Position = UDim2.new(0, 0, 0, 25),
        BackgroundTransparency = 1,
        ClipsDescendants = true
      })
      
      local Select1 = Create("ImageButton", ColorpickerC, {
        Size = UDim2.new(0, 180, 1, -20),
        Position = UDim2.new(0, 10, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        AutoButtonColor = false,
        Image = "rbxassetid://4155801252"
      }, {
        Corner()
      })
      
      local Select2 = Create("ImageButton", ColorpickerC, {
        Size = UDim2.new(1, -210, 0, 20),
        Position = UDim2.new(1, -10, 0, 10),
        AnchorPoint = Vector2.new(1, 0),
        AutoButtonColor = false
      }, {
        Corner(),
        Create("UIGradient", {
          Rotation = 0,
          Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
            ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
            ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
            ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
            ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
            ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
          })
        })
      })
      
      local BaseMousePos1, BaseMousePos2 = Create("Frame", Select1, {Visible = false}), Create("Frame", Select2, {Visible = false})
      
      local Label1, Label2, Label3
      local S1 = insertTheme(Create("TextBox", ColorpickerC, {
        Size = UDim2.new(0, 40, 0, 20),
        Position = UDim2.new(1, -10, 0, 35),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundColor3 = Theme["Color Background 2"],
        Font = Theme["Font"][3],
        TextColor3 = Theme["Color Text"],
        TextScaled = true,
        ClearTextOnFocus = false
      }, {
        Corner(),
        Create("TextLabel", {
          Size = UDim2.new(0, 20, 0, 20),
          AnchorPoint = Vector2.new(1, 0),
          TextColor3 = Color3.fromRGB(255, 0, 0),
          TextScaled = true,
          BackgroundTransparency = 1,
          Text = "R",
          Font = Theme["Font"][3]
        })
      }), "Text")
      
      local S2 = insertTheme(Create("TextBox", ColorpickerC, {
        Size = UDim2.new(0, 40, 0, 20),
        Position = UDim2.new(1, -10, 0, 60),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundColor3 = Theme["Color Background 2"],
        Font = Theme["Font"][3],
        TextColor3 = Theme["Color Text"],
        TextScaled = true,
        ClearTextOnFocus = false
      }, {
        Corner(),
        Create("TextLabel", {
          Size = UDim2.new(0, 20, 0, 20),
          AnchorPoint = Vector2.new(1, 0),
          TextColor3 = Color3.fromRGB(0, 255, 0),
          TextScaled = true,
          BackgroundTransparency = 1,
          Text = "G",
          Font = Theme["Font"][3]
        })
      }), "Text")
    
      local S3 = insertTheme(Create("TextBox", ColorpickerC, {
        Size = UDim2.new(0, 40, 0, 20),
        Position = UDim2.new(1, -10, 0, 85),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundColor3 = Theme["Color Background 2"],
        Font = Theme["Font"][3],
        TextColor3 = Theme["Color Text"],
        TextScaled = true,
        ClearTextOnFocus = false
      }, {
        Corner(),
        Create("TextLabel", {
          Size = UDim2.new(0, 20, 0, 20),
          AnchorPoint = Vector2.new(1, 0),
          TextColor3 = Color3.fromRGB(0, 0, 255),
          TextScaled = true,
          BackgroundTransparency = 1,
          Text = "B",
          Font = Theme["Font"][3]
        })
      }), "Text")
      
      local Mouse1 = Create("Frame", Select1, {
        Size = UDim2.new(0, 15, 0, 15),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(1 - ColorS, 0, 1 - ColorV, 0),
        BackgroundTransparency = 1
      }, {
        Corner({}, true),
        Create("UIStroke", {
          Thickness = 1.2,
          Color = Color3.fromRGB(255, 255, 255)
        })
      })
      
      local Mouse2 = Create("Frame", Select2, {
        Size = UDim2.new(0, 8, 1, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(ColorH, 0, 0.5, 0),
        BackgroundTransparency = 1
      }, {
        Corner({}, true),
        Create("UIStroke", {
          Thickness = 1.2,
          Color = Color3.fromRGB(255, 255, 255)
        })
      })
      
      local function ConfigureColor()
        ColorH = Mouse2.Position.X.Scale
        ColorS = 1 - Mouse1.Position.X.Scale
        ColorV = 1 - Mouse1.Position.Y.Scale
        
        Select1.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
        ColorSelected.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
        task.spawn(Callback, Color3.fromHSV(ColorH, ColorS, ColorV))
      end;ConfigureColor()
      
      local Mouse1Input, Mouse2Input, Minimized, WaitClick
      Select1.InputBegan:Connect(function(Input)
        if Minimized and not WaitClick and not Mouse2Input then
          if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
            Container.ScrollingEnabled, Mouse1Input = false, true
            while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
              local MousePos = Player:GetMouse()
              local APosX = MousePos.X - BaseMousePos1.AbsolutePosition.X
              local APosY = MousePos.Y - BaseMousePos1.AbsolutePosition.Y
              local BPosX = APosX / Select1.AbsoluteSize.X
              local BPosY = APosY / Select1.AbsoluteSize.Y
              
              Mouse1.Position = UDim2.new(math.clamp(BPosX, 0, 1), 0, math.clamp(BPosY, 0, 1), 0)
              ConfigureColor()
            end
            Container.ScrollingEnabled, Mouse1Input = true, false
            SaveColorpicker()
          end
        end
      end)
      
      Select2.InputBegan:Connect(function(Input)
        if Minimized and not WaitClick and not Mouse1Input then
          if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
            Container.ScrollingEnabled, Mouse2Input = false, true
            while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
              local MousePos = Player:GetMouse()
              local APosX = MousePos.X - BaseMousePos2.AbsolutePosition.X
              local BPosX = APosX / Select2.AbsoluteSize.X
              
              Mouse2.Position = UDim2.new(math.clamp(BPosX, 0, 1), 0, 0.5, 0)
              ConfigureColor()
            end
            Container.ScrollingEnabled, Mouse2Input = true, false
            SaveColorpicker()
          end
        end
      end)
      
      Frame.MouseButton1Click:Connect(function()
        if not WaitClick then
          WaitClick = true
          if not Minimized then
            CreateTween({Frame, "Size", UDim2.new(1, 0, 0, 135), 0.3, true})
          else
            CreateTween({Frame, "Size", UDim2.new(1, 0, 0, 25), 0.3, true})
          end
          WaitClick = false
          Minimized = not Minimized
        end
      end)
      
      local function SetColor(Color)
        local H, S, V = Color3.toHSV(Color)
        
        ColorH = H
        ColorS = 1 - S
        ColorV = 1 - V
        
        CreateTween({Mouse1, "Position", UDim2.new(ColorS, 0, ColorV, 0), 0.3})
        CreateTween({Mouse2, "Position", UDim2.new(ColorH, 0, 0.5, 0), 0.3})
        CreateTween({ColorSelected, "BackgroundColor3", Color, 0.3})
        CreateTween({Select1, "ImageColor3", Color3.fromHSV(ColorH, 1, 1), 0.3})
        task.spawn(Callback, Color)
      end
      
      task.spawn(function()
        local Saved1, Saved2, Saved3
        local function UPD()
          SetColor(Color3.fromRGB(Saved1, Saved2, Saved3))
        end
        
        local function UPD1()if tonumber(S1.Text) then local number = math.clamp(tonumber(S1.Text), 0, 255)
        S1.Text = tostring(number)Saved1 = S1.Text else S1.Text = Saved1 end UPD()end
        local function UPD2()if tonumber(S2.Text) then local number = math.clamp(tonumber(S2.Text), 0, 255)
        S2.Text = tostring(number)Saved2 = S2.Text else S2.Text = Saved2 end UPD()end
        local function UPD3()if tonumber(S3.Text) then local number = math.clamp(tonumber(S3.Text), 0, 255)
        S3.Text = tostring(number)Saved3 = S3.Text else S3.Text = Saved3 end UPD()end
        
        local function SetToColor()
          local str = tostring((ColorSelected.BackgroundColor3)):gsub(" ", "")
          local color = str:split(",")
          
          color[1] = tostring(math.ceil(tonumber(color[1] * 255)))
          color[2] = tostring(math.ceil(tonumber(color[2] * 255)))
          color[3] = tostring(math.ceil(tonumber(color[3] * 255)))
          
          S1.Text = color[1]
          S2.Text = color[2]
          S3.Text = color[3]
        end
        
        S1.FocusLost:Connect(UPD1)
        S2.FocusLost:Connect(UPD2)
        S3.FocusLost:Connect(UPD3)
        
        local str = tostring((DefaultColor)):gsub(" ", "")
        local color = str:split(",")
        
        color[1] = tostring(math.ceil(tonumber(color[1] * 255)))
        color[2] = tostring(math.ceil(tonumber(color[2] * 255)))
        color[3] = tostring(math.ceil(tonumber(color[3] * 255)))
        
        S1.Text = color[1]
        S2.Text = color[2]
        S3.Text = color[3]
        
        ColorSelected:GetPropertyChangedSignal("BackgroundColor3"):Connect(SetToColor)
      end)
      
      local Colorpicker = {}
      
      function Colorpicker:Set(val1)
        if typeof(val1) == "function" then Callback = val1
        elseif typeof(val1) == "Color3" then SetColor(val1)
        elseif typreof(val1) == "string" then TextLabel1.Text = val1 end
      end
      function Colorpicker:Destroy()Frame:Destroy()end
      function Colorpicker:Visible(Bool)Frame.Visible = Bool end
      return Colorpicker
    end
    function Tab:AddDropdown(Configs)
      local DName = Configs[1] or Configs.Name or "Dropdown"
      local Options = Configs[2] or Configs.Options or {"1", "2", "3"}
      local Default = Configs[3] or Configs.Default or {"2"}
      local MultSelect = Configs[4] or Configs.MultSelect or false
      local Callback = Configs[5] or Configs.Callback or function()end
      local Save = Configs[6] or Configs.Flag or false
      
      if Save and typeof(Save) == "string" and FindTable(Flags, Save) then
        Default = Flags[Save]
      end
      local Frame = Button(Container, {Size = UDim2.new(1, 0, 0, 25)}, {Corner()})
      local MainContainer = Create("Frame", Frame, {
        Size = UDim2.new(1, 0, 0, 25),
        BackgroundTransparency = 1
      })
      local Text = insertTheme(Create("TextLabel", MainContainer, {
        Font = Theme["Font"][2],
        Text = DName,
        TextSize = 13,
        Size = UDim2.new(0.5, 0, 1, 0),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        TextTruncate = "AtEnd"
      }), "Text")
      local TextLabel2 = insertTheme(Create("TextLabel", MainContainer, {
        Size = UDim2.new(0.45, -18, 0, 20),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -8, 0.5, 0),
        BackgroundTransparency = 0.8,
        TextColor3 = Theme["Color Text"],
        Font = Theme["Font"][2],
        TextScaled = true,
        Text = "..."
      }, {Corner()}), "Text")
      local Arrow = insertTheme(Create("ImageLabel", TextLabel2, {
        Size = UDim2.new(0, 16, 0, 16),
        Position = UDim2.new(0, -5, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        Image = "rbxassetid://16157040227",
        BackgroundTransparency = 1,
        Rotation = 180,
        ImageColor3 = Color3.fromRGB(200, 200, 200)
      }), "Stroke")
      local ContainerList = Create("ScrollingFrame", Frame, {
        Size = UDim2.new(1, 0, 1, -25),
        Position = UDim2.new(0, 0, 0, 25),
        ScrollBarThickness = 2,
        ScrollingDirection = "Y",
        AutomaticCanvasSize = "Y",
        CanvasSize = UDim2.new(),
        BackgroundTransparency = 1
      }, {
        Create("UIPadding", {
          PaddingLeft = UDim.new(0, 10),
          PaddingRight = UDim.new(0, 10),
          PaddingTop = UDim.new(0, 10),
          PaddingBottom = UDim.new(0, 10)
        }), Create("UIListLayout", {
          Padding = UDim.new(0, 4)
        })
      })
      local OptionsC, SelectedOption, SelectedOptionT = {}, "", {}
      local function SaveDropdown()
        if Save and typeof(Save) == "string" then
          if MultSelect then
            SaveFile(Save, {SelectedOptionT})
          else
            SaveFile(Save, {SelectedOption})
          end
        end
      end
      local function Void()
        table.foreach(ContainerList:GetChildren(), function(a, b)
          if b:IsA("TextButton") then
            b:Destroy()
          end
        end)
        TextLabel2.Text = "..."
        SelectedOptionT = {}
        OptionsC = {}
      end
      local function SetLabelTable()
        local str, first = ""
        table.foreach(SelectedOptionT, function(a, b)
          if first then
            str = str .. ", "
          end
          str = str .. b
          first = true
        end)
        TextLabel2.Text = str
      end
      local function RemoveOption(name)
        local Option = ContainerList:FindFirstChild(name)
        if Option then
          Option:Destroy()
          table.foreach(OptionsC, function(a, b)
            if b == name then
              table.remove(OptionsC, a)
            end
          end)
        end
      end
      local function AddOption(val, void)
        local function CreateButton(name)
          table.insert(OptionsC, name)
          local Frame = Create("TextButton", ContainerList, {
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 0.9,
            BackgroundColor3 = Color3.fromRGB(8, 8, 8),
            AutoButtonColor = false,
            Text = ""
          }, {
            Corner()
          })
          
          local TextLabel = insertTheme(Create("TextLabel", Frame, {
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, 20, 0, 0),
            Text = name,
            TextColor3 = Theme["Color Text"],
            TextTransparency = 0.4,
            Font = Theme["Font"][3],
            TextSize = 14,
            BackgroundTransparency = 1,
            TextXAlignment = "Left"
          }), "Text")

          local Selected = insertTheme(Create("Frame", Frame, {
            Size = UDim2.new(0, 5, 0, 10),
            Position = UDim2.new(0, 10, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundTransparency = 1,
            BackgroundColor3 = Color3.fromRGB(8, 8, 8)
          }, {
            Corner(Selected)
          }), "Theme")
          
          if typeof(Default) == "table" and Default[1] == name or Default == name and name == SelectedOption then
            CreateTween({Selected, "BackgroundTransparency", 1, 1})
            CreateTween({TextLabel, "TextTransparency", 0, 0.2})
            CreateTween({Frame, "BackgroundTransparency", 0.7, 0.2})
            SelectedOption = name
            TextLabel2.Text = name
            task.spawn(Callback, name)
          end
          
          Frame.MouseButton1Click:Connect(function()
            for _,option in pairs(ContainerList:GetChildren()) do
              if option ~= Frame and option:IsA("TextButton") then
                CreateTween({option.Frame, "BackgroundTransparency", 0.8, 0.2})
                CreateTween({option.TextLabel, "TextTransparency", 0.4, 0.2})
                CreateTween({option, "BackgroundTransparency", 0.9, 0.2})
              end
            end
            CreateTween({Selected, "BackgroundTransparency", 1, 1})
            CreateTween({TextLabel, "TextTransparency", 0, 0.2})
            CreateTween({Frame, "BackgroundTransparency", 0.7, 0.2})
            SelectedOption = name
            TextLabel2.Text = name
            task.spawn(Callback, name)
            SaveDropdown()
          end)
        end
        local function CreateToggle(name)
          table.insert(OptionsC, name)
          local Frame = Create("TextButton", ContainerList, {
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 0.9,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            AutoButtonColor = false,
            Text = ""
          }, {
            Corner()
          })
          
          local TextLabel = insertTheme(Create("TextLabel", Frame, {
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, 20, 0, 0),
            Text = name,
            TextColor3 = Theme["Color Dark Text"],
            Font = Theme["Font"][3],
            TextSize = 14,
            BackgroundTransparency = 1,
            TextXAlignment = "Left"
          }), "DarkText")
          
          local Selected = insertTheme(Create("Frame", Frame, {
            Size = UDim2.new(0, 5, 0, 10),
            Position = UDim2.new(0, 10, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundTransparency = 0.8,
            BackgroundColor3 = Theme["Color Theme"]
          }, {
            Corner()
          }), "Theme")
          
          local OnOff
          if table.find(Default, name) or table.find(SelectedOptionT, name) then
            CreateTween({Selected, "BackgroundTransparency", 1, 1})
            CreateTween({TextLabel, "TextColor3", Theme["Color Text"], 0.2})
            CreateTween({Frame, "BackgroundTransparency", 0.7, 0.2})
            if not table.find(SelectedOptionT, name) then
              table.insert(SelectedOptionT, name)
            end
            task.spawn(Callback, name, true)
            OnOff = true
            SetLabelTable()
          end
          
          Frame.MouseButton1Click:Connect(function()
            OnOff = not OnOff
            if OnOff then
              CreateTween({Selected, "BackgroundTransparency", 1, 1})
              CreateTween({TextLabel, "TextColor3", Theme["Color Text"], 0.2})
              CreateTween({Frame, "BackgroundTransparency", 0.7, 0.2})
              if not table.find(SelectedOptionT, name) then
                table.insert(SelectedOptionT, name)
              end
              task.spawn(Callback, name, true)
              SetLabelTable()
            else
              CreateTween({Selected, "BackgroundTransparency", 1, 1})
              CreateTween({TextLabel, "TextColor3", Theme["Color Dark Text"], 0.2})
              CreateTween({Frame, "BackgroundTransparency", 0.9, 0.2})
              table.foreach(SelectedOptionT, function(a, b)
                if b == name then

                  table.remove(SelectedOptionT, a)
                end
              end)
              task.spawn(Callback, name, false)
              SetLabelTable()
            end
            SaveDropdown()
          end)
        end

        if typeof(val) == "table" then
          if void then
            Void()
          end
          table.foreach(val, function(a, b)
            if not table.find(OptionsC, b) then
              if MultSelect then
                CreateToggle(b)
              else
                CreateButton(b)
              end
            end
          end)
        end
      end;AddOption(Options, true)
      local function GetNumber()
        local counter = 0
        for _,v in pairs(ContainerList:GetChildren()) do
          if v:IsA("TextButton") then
            counter = counter + 1
          end
        end
        return counter
      end
      local Minimized, WaitPress
      Frame.MouseButton1Click:Connect(function()
        if not WaitPress then
          local SizeY
          if GetNumber() >= 1 then
            SizeY = (35 + math.clamp(GetNumber(), 1, 5) * 20)
          else
            SizeY = 25
          end
          WaitPress = true
          if not Minimized then
            CreateTween({Arrow, "Rotation", 0, 0.3})
            CreateTween({Arrow, "ImageColor3", Color3.fromRGB(200, 200, 200), 0.3})
            CreateTween({Frame, "Size", UDim2.new(1, 0, 0, SizeY), 0.3, true})
          else
            CreateTween({Arrow, "Rotation", 180, 0.3})
            CreateTween({Arrow, "ImageColor3", Color3.fromRGB(200, 200, 200), 0.3})
            CreateTween({Frame, "Size", UDim2.new(1, 0, 0, 25), 0.3, true})
          end
          Minimized = not Minimized
          WaitPress = false
        end
      end)
      local DropdownF = {}
      function DropdownF:Void()
        Void()
      end
      function DropdownF:Set(val1, val2)
        if val1 and typeof(val1) == "string" then Text.Text = val1
        elseif val1 and typeof(val1) == "function" then Callback = val1
        elseif val1 and val2 and typeof(val1) == "table" then AddOption(val1, val2) end
      end
      function DropdownF:Visible(Bool)Frame.Visible = Bool end
      function DropdownF:Destroy()Frame:Destroy()end
      return DropdownF
    end
    function Tab:AddTextBox(Configs)
      local TName = Configs[1] or Configs.Name or "Text Box"
      local Default = Configs[2] or Configs.Default or ""
      local PHText = Configs[3] or Configs.PlaceholderText or "< input >"
      local ClearOnFocus = Configs[4] or Configs.ClearText or false
      local Callback = Configs[5] or Configs.Callback or function()end
      local Save = Configs[6] or Configs.Flag or false
      local TextBoxCallback = {}
      
      if Save and typeof(Save) == "string" and FindTable(Flags, Save) then
        Default = Flags[Save]
      end
      
      local Frame = Button(Container, {
        Size = UDim2.new(1, 0, 0, 25)
      }, {
        Corner(),
        insertTheme(Create("TextLabel", {
          Font = Theme["Font"][2],
          Text = TName,
          TextSize = 13,
          Size = UDim2.new(0.5, 0, 1, 0),
          Position = UDim2.new(0, 15, 0, 0),
          BackgroundTransparency = 1,
          TextColor3 = Theme["Color Text"],
          TextXAlignment = "Left",
          TextTruncate = "AtEnd"
        }), "Text")
      })
      
      local TextBox = insertTheme(Create("TextBox", Frame, {
        Size = UDim2.new(0.45, -18, 0, 20),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -8, 0.5, 0),
        BackgroundTransparency = 0.8,
        TextColor3 = Theme["Color Text"],
        Font = Theme["Font"][3],
        TextScaled = true,
        ClearTextOnFocus = ClearOnFocus,
        PlaceholderText = PHText,
        Text = Default
      }, {
        Corner()
      }), "Text")
      
      local Pencil = insertTheme(Create("ImageLabel", TextBox, {
        Size = UDim2.new(0, 16, 0, 16),
        Position = UDim2.new(0, -5, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        Image = "rbxassetid://15637081879",
        BackgroundTransparency = 1,
        ImageColor3 = Theme["Color Stroke"]
      }), "Stroke")
      
      local function SetBox(NewText)
        TextBox.Text = NewText
        Default = NewText
        table.foreach(TextBoxCallback, function(_,func)
          task.spawn(func, NewText)
        end)
        task.spawn(Callback, NewText)
        if Save and typeof(Save) == "string" then
          SaveFile(Save, Default)
        end
      end
      TextBox.MouseEnter:Connect(function()
        CreateTween({Pencil, "ImageColor3", Theme["Color Theme"], 0.5, true})
        CreateTween({Pencil, "ImageColor3", Theme["Color Stroke"], 0.5, true})
      end)
      TextBox.FocusLost:Connect(function()
        SetBox(TextBox.Text)
        CreateTween({Pencil, "ImageColor3", Theme["Color Theme"], 0.5, true})
        CreateTween({Pencil, "ImageColor3", Theme["Color Stroke"], 0.5, true})
      end)
      local TextBoxF = {}
      function TextBoxF:Set()
        if typeof(val1) == "function" then Callback = val1
        elseif typeof(val1) == "string" then SetBox(val1) end
      end
      function TextBoxF:Callback(func)table.insert(TextBoxCallback, func)end
      function TextBoxF:Destroy()Frame:Destroy()end
      function TextBoxF:Visible(Bool)Frame.Visible = Value end
      return TextBoxF
    end
    function Tab:AddDiscordInvite(Configs)
      local DiscordLink = Configs[1] or Configs.DiscordLink or "https://discord.gg/"
      local DiscordIcon = Configs[2] or Configs.DiscordIcon or "rbxassetid://"
      local DiscordTitle = Configs[3] or Configs.DiscordTitle or ""
      local Frame1 = Create("Frame", Container, {
        Size = UDim2.new(1, 0, 0, 110),
        BackgroundTransparency = 1
      }) 
      local Frame2 = insertTheme(Create("Frame", Frame1, {
        Size = UDim2.new(1, 0, 0, 110 - 25),
        BackgroundColor3 = Color3.fromRGB(30, 30, 30),
        Position = UDim2.new(0, 0, 0, 25),
        BackgroundColor3 = Theme["Color Background 2"]
      }, {
        Corner()
      }), "Buttons")
      local LinkLabel = Create("TextLabel", Frame1, {
        Size = UDim2.new(1, 0, 0, 25),
        Text = "",
        TextXAlignment = "Left",
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 12, 0, 0),
        TextColor3 = Color3.fromRGB(30, 160, 255),
        Font = Enum.Font.GothamBold,
        TextSize = 14
      })
      local TitleLabel = insertTheme(Create("TextLabel", Frame2, {
        Size = UDim2.new(1, 0, 0, 20),
        Text = DiscordTitle,
        TextXAlignment = "Left",
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 60, 0, 5),
        TextColor3 = Theme["Color Text"],
        Font = Enum.Font.GothamBold,
        TextSize = 14
      }), "Text")
      local IconLabel = Create("ImageLabel", Frame2, {
        Size = UDim2.new(0, 40, 0, 40),
        Position = UDim2.new(0, 12, 0, 5),
        Image = DiscordIcon
      }, {
        Corner({
          CornerRadius = UDim.new(0, 8)
        })
      })
      local JoinButton = Create("TextButton", Frame2, {
        Size = UDim2.new(1, -24, 0, 25),
        AnchorPoint = Vector2.new(0.5, 1),
        Position = UDim2.new(0.5, 0, 1, -8),
        Text = "Join Server",
        Font = Enum.Font.GothamBold,
        TextSize = 15,
        TextColor3 = Color3.fromRGB(220, 220, 220),
        BackgroundColor3 = Color3.fromRGB(66, 138, 245)
      }, {
        Corner()
      })
      local JoinClick
      JoinButton.MouseButton1Click:Connect(function()
        setclipboard(DiscordLink)
        if not JoinClick then
          JoinClick = true
          JoinButton.Text = "Copied to Clipboard"
          JoinButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
          JoinButton.TextColor3 = Color3.fromRGB(150, 150, 150)
          task.wait(5)
          JoinButton.Text = "Join"
          JoinButton.BackgroundColor3 = Color3.fromRGB(66, 138, 245)
          JoinButton.TextColor3 = Color3.fromRGB(220, 220, 220)
          JoinClick = false
        end
      end)
      local DiscordInvite = {}
      function DiscordInvite:Set(NewVal)
        if typeof(NewVal) == "string" then
          if string.find(NewVal, "https://discord.gg/") then LinkLabel.Text = NewVal
          elseif string.find(NewVal, "rbxassetid://") then IconLabel.Image = NewVal
          else TitleLabel.Text = NewVal end
        end
      end
      function DiscordInvite:Visible(Bool)Frame1.Visible = Bool end
      function DiscordInvite:Destroy()Frame1:Destroy()end
      return DiscordInvite
    end
    function Tab:AddYoutube(Configs)
        local YouTubeLink = Configs[1] or Configs.YouTubeLink or "https://www.youtube.com//"
        local YoutubeIcon = Configs[2] or Configs.YoutubeIcon or "rbxassetid://"
        local YoutubeTitle = Configs[3] or Configs.YoutubeTitle or ""
        local Frame1 = Create("Frame", Container, {
          Size = UDim2.new(1, 0, 0, 110),
          BackgroundTransparency = 1
        }) 
        local Frame2 = insertTheme(Create("Frame", Frame1, {
          Size = UDim2.new(1, 0, 0, 110 - 25),
          BackgroundColor3 = Color3.fromRGB(30, 30, 30),
          Position = UDim2.new(0, 0, 0, 25),
          BackgroundColor3 = Theme["Color Background 2"]
        }, {
          Corner()
        }), "Buttons")
        local LinkLabel = Create("TextLabel", Frame1, {
          Size = UDim2.new(1, 0, 0, 25),
          Text = "",
          TextXAlignment = "Left",
          BackgroundTransparency = 1,
          Position = UDim2.new(0, 12, 0, 0),
          TextColor3 = Color3.fromRGB(30, 160, 255),
          Font = Enum.Font.GothamBold,
          TextSize = 14
        })
        local TitleLabel = insertTheme(Create("TextLabel", Frame2, {
          Size = UDim2.new(1, 0, 0, 20),
          Text = YoutubeTitle,
          TextXAlignment = "Left",
          BackgroundTransparency = 1,
          Position = UDim2.new(0, 60, 0, 5),
          TextColor3 = Theme["Color Text"],
          Font = Enum.Font.GothamBold,
          TextSize = 14
        }), "Text")
        local IconLabel = Create("ImageLabel", Frame2, {
          Size = UDim2.new(0, 40, 0, 40),
          Position = UDim2.new(0, 12, 0, 5),
          Image = YoutubeIcon
        }, {
          Corner({
            CornerRadius = UDim.new(0, 8)
          })
        })
        local YoutubeButton = Create("TextButton", Frame2, {
          Size = UDim2.new(1, -24, 0, 25),
          AnchorPoint = Vector2.new(0.5, 1),
          Position = UDim2.new(0.5, 0, 1, -8),
          Text = "Subscribe",
          Font = Enum.Font.GothamBold,
          TextSize = 15,
          TextColor3 = Color3.fromRGB(220, 220, 220),
          BackgroundColor3 = Color3.fromRGB(66, 138, 245)
        }, {
          Corner()
        })
        local JoinClick
        YoutubeButton.MouseButton1Click:Connect(function()
          setclipboard(YouTubeLink)
          if not JoinClick then
            JoinClick = true
            YoutubeButton.Text = "Copied to Clipboard"
            YoutubeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
            YoutubeButton.TextColor3 = Color3.fromRGB(150, 150, 150)
            task.wait(5)
            YoutubeButton.Text = "Subscribe"
            YoutubeButton.BackgroundColor3 = Color3.fromRGB(66, 138, 245)
            YoutubeButton.TextColor3 = Color3.fromRGB(220, 220, 220)
            JoinClick = false
          end
        end)
        local YouTubeUrl = {}
        function YouTubeUrl:Set(NewVal)
          if typeof(NewVal) == "string" then
            if string.find(NewVal, "https://www.youtube.com//") then LinkLabel.Text = NewVal
            elseif string.find(NewVal, "rbxassetid://") then IconLabel.Image = NewVal
            else TitleLabel.Text = NewVal end
          end
        end
        function YouTubeUrl:Visible(Bool)Frame1.Visible = Bool end
        function YouTubeUrl:Destroy()Frame1:Destroy()end
        return YouTubeUrl
    end
    return Tab
  end
  function Window:AddMinimizeButton(Configs)
    local ButtonProps = Configs[1] or Configs.Button or {}
    local UICorner = Configs[2] or Configs.UICorner or {true, {CornerRadius = UDim.new(0.5, 0)}}
    local UIStroke = Configs[3] or Configs.UIStroke or {false, {Color = Theme["Color Stroke"]}}
    UICorner[2] = UICorner[2] or {}
    UIStroke[2] = UIStroke[2] or {}
    
    local ButtonMinimize = SetProps(MakeDrag(Create("ImageButton", ScreenGui, {
      Size = UDim2.fromOffset(70, 70),
      Active = true,
      Position = UDim2.fromScale(0.15, 0.15),
      BackgroundColor3 = Theme["Color Background 1"],
      Image = GetIcon("swords")
    })), ButtonProps)
    
    local MinimizeBool
    ButtonMinimize.MouseButton1Click:Connect(function()
      MainFrame.Visible = MinimizeBool
      MinimizeBool = not MinimizeBool
    end)
    
    local StrokeBTN, CornerBTN
    if UICorner[1] then
      CornerBTN = Create("UICorner", ButtonMinimize)
      SetProps(CornerBTN, UICorner[2])
    end
    if UIStroke[1] then
      StrokeBTN = Create("UIStroke", ButtonMinimize)
      SetProps(StrokeBTN, UIStroke[2])
    end
    local Minimize = {
      Button = ButtonMinimize,
      Stroke = StrokeBTN,
      Corner = CornerBTN
    }
    function Minimize:Visible(Bool)
      ButtonMinimize.Visible = Bool
    end
    function Minimize:Destroy()
      ButtonMinimize:Destroy()
    end
    return Minimize
  end
  return Window
end
loadstring(GetLoadLink("https://raw.githubusercontent.com/ahmadsgamer2/Zekrom-Hub-X/main/ZekromLib/V2/Setting.lua"))()
local Window = ZekromHubLibV2:MakeWindow({
    Title = "Zekrom Hub X V2 [Beta]",
    SubTitle = "by : TMRX Team",
    LoadText = "",
    Flags = "Zekrom Hub X Script.lua"
  })
  Window:AddMinimizeButton({
    Button = {
      Image = "rbxassetid://16172861652"
    },
    UICorner = {true,
      CornerRadius = UDim.new(0.5, 0)
    },
    UIStroke = {false, {
    }}
  })

local Main = Window:MakeTab({Name = "Main", Icon = "Home"})

local Status = Main:AddParagraph({"Home", "Status: "})

function UpdateGetText()
if game.PlaceId == 2753915549 then StatusWorld = "1" elseif game.PlaceId == 4442272183 then StatusWorld = "2" elseif game.PlaceId == 7449423635 then StatusWorld = "3" end
local Fps = workspace:GetRealPhysicsFPS()
local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
local Status1 = "Fps: "..Fps.." | Ping: "..Ping.." | World: "..StatusWorld
Status:Set("Home", "Status: "..Status1)
end

spawn(function()
    while true do wait()
        UpdateGetText()
    end
end)

Main:AddDiscordInvite({
    DiscordTitle = "TMR 𝕏 Community | 2024",
    DiscordIcon = "rbxassetid://16172891740",
    DiscordLink = _G.Discord
  })
repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")
task.wait()
if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
  _G.Settings = {
    Auto_Farm_Level = false,
    Auto_Farm_Fast = true,
    Auto_New_World = false,
    Auto_Third_World = false,
    Auto_Farm_Chest = false,
    Auto_Farm_Chest_Hop = false,
    Auto_Elite_Hunter = false,
    Auto_Elite_Hunter_Hop = false,
    Auto_Spawn_Cake_Prince = false,
    Auto_Cake_Prince = false,
    Auto_Farm_Boss = false,
    Select_Boss = "",
    Auto_Quest_Boss = true,
    Auto_Farm_All_Boss = false,
    SelectWeapon = "Melee",
    Auto_Set_Spawn = true,
    Method = "Upper",
    DistanceAutoFarm = 30,
    Brimob = true,
    Select_Stats = {},
    Bypass = false,
    Rejoin = true,
    FastAttack = true,
    Auto_Saber = false,
    Auto_Saber_Hop = false,
    Auto_Pole_V1_Hop = false,
    Auto_Factory_Farm = false,
    Auto_Farm_Ectoplasm = false,
    Auto_Swan_Glasses = false,
    Auto_Swan_Glasses_Hop = false,
    Auto_Farm_Bone = false,
    AutoObservation = false,
    AutoObservation_Hop = false,
    Auto_Trade_Bone = false,
    Auto_Rainbow_Haki = false,
    Auto_Rainbow_Haki_Hop = false,
    Auto_Canvander = false,
    AutoBuddySwords = false,
    AutoCavander = false,
    AutoMirageIsland = false,
    Auto_Gear = false,
    TptoKisuneIsland = false,
    NeareastFarm = false,
    TptoKisuneshrine = false,
    AutoFarmBossHallow = false,
    Auto_Twin_Hook_Hop = false,
    Auto_Twin_Hook = false,
    Auto_Serpent_Bow = false,
    Auto_Serpent_Bow_Hop = false,
    Auto_Evo_Race_V2 = false,
    Auto_Rengoku = false,
    Auto_Buy_Legendary_Sword = false,
    Auto_Buy_Enchancement = false,
    Auto_Yama = false,
    Auto_Holy_Torch = false,
    Auto_Musketeer_Hat = false,
    Auto_Superhuman = false,
    Auto_Fully_Superhuman = false,
    Auto_Death_Step = false,
    Auto_Fully_Death_Step = false,
    Auto_SharkMan_Karate = false,
    Auto_Fully_SharkMan_Karate = false,
    Auto_Electric_Claw = false,
    Auto_Dragon_Talon = false,
    Auto_God_Human = false,
    Select_Player = "",
    Spectate_Player = false,
    Teleport_to_Player = false,
    EnabledPvP = false,
    Auto_Stats = false,
    Point = 1,
    No_clip = false,
    Infinit_Energy = false,
    Dodge_No_CoolDown = false,
    Infinit_Ability = false,
    Infinit_SkyJump = false,
    Infinit_Inf_Soru = false,
    Infinit_Range_Observation_Haki = false,
    Select_Island = "",
    Start_Tween_Island = false,
    Select_Dungeon = false,
    Auto_Buy_Chips_Dungeon = false,
    Auto_Start_Dungeon = false,
    Auto_Next_Island = false,
    Kill_Aura = false,
    Auto_Awake = false,
    Auto_Buy_Law_Chip = false,
    Auto_Start_Law_Dungeon = false,
    Auto_Kill_Law = false,
    Select_Devil_Fruit = "",
    Auto_Buy_Devil_Fruit = false,
    Auto_Random_Fruit = false,
    Auto_Bring_Fruit = false,
    Auto_Store_Fruit = false,
    LockMoon = false,
    Auto_Mirage_Island = false,
    SkillZ = true,
    SkillX = true,
    SkillC = true,
    SkillV = true,
    AutoMasterySkill = false,
    HealthMs = 85,
    Distance = 30,
    DistanceY = 5,
    ESP_Mirage_Island = false,
    Auto_Awakening_One_Quest = false,
    SuperFastAttack = false,
    ESP_Chest = false,
    Auto_Dack_Coat = false,
    Auto_Sea_King = false,
    Select_Mode = "Chest",
    Remove_UI_DamageCounter = false,
    Notifications_Remove = false,
    Auto_CFrame = true,
    Auto_Gear = false,
}

if game.PlaceId == 2753915549 then
    W1 = true
	World1 = true
elseif game.PlaceId == 4442272183 then
    W2 = true
	World2 = true
elseif game.PlaceId == 7449423635 then
    W3 = true
	World3 = true
end
-----Script functions
repeat wait(0) until game:IsLoaded()
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")  then
    repeat wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if _G.Team == "Pirate" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            elseif _G.Team == "Marine" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end
if game:IsLoaded() then
    pcall(function()
        repeat wait()
            game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
            game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
        until not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") or not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn")
    end)
end
_G.DisDieffect  = true
spawn(function()
    while  _G.DisDieffect do wait()
        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
                pcall(function()
                    if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" then
                        v:Destroy()
                    end
                end)
            end
        end
    end)

function two(gotoCFrame)
	pcall(function()
		game.Players.LocalPlayer.Character.Humanoid.Sit = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
		pcall(function() 
			tweenz:Cancel()
		end)
		game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
	else
		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/325, Enum.EasingStyle.Linear)
		 tween, err = pcall(function()
			tweenz = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
			tweenz:Play()
		end)
		if not tween then return err end
	end
	function _TweenCanCle()
		tweenz:Cancel()
	end
end

local EnemySpawns = Instance.new("Folder",workspace)
EnemySpawns.Name = "EnemySpawns"

for i, v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
    if v:IsA("Part") then
        local EnemySpawnsX2 = v:Clone()
        local result = string.gsub(v.Name, "Lv. ", "")
        local result2 = string.gsub(result, "[%[%]]", "")
        local result3 = string.gsub(result2, "%d+", "")
        local result4 = string.gsub(result3, "%s+", "")
        EnemySpawnsX2.Name = result4
        EnemySpawnsX2.Parent = workspace.EnemySpawns
        EnemySpawnsX2.Anchored = true
    end
end
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
        local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
        local result = string.gsub(v.Name, "Lv. ", "")
        local result2 = string.gsub(result, "[%[%]]", "")
        local result3 = string.gsub(result2, "%d+", "")
        local result4 = string.gsub(result3, "%s+", "")

        EnemySpawnsX2.Name = result4
        EnemySpawnsX2.Parent = workspace.EnemySpawns
        EnemySpawnsX2.Anchored = true
    end
end
for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
        local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
        local result = string.gsub(v.Name, "Lv. ", "")
        local result2 = string.gsub(result, "[%[%]]", "")
        local result3 = string.gsub(result2, "%d+", "")
        local result4 = string.gsub(result3, "%s+", "")

        EnemySpawnsX2.Name = result4
        EnemySpawnsX2.Parent = workspace.EnemySpawns
        EnemySpawnsX2.Anchored = true
    end
end

local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local tween = game:service"TweenService"
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")
	
function LoadSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfolder("ZekromHubV2") then
            makefolder("ZekromHubV2")
        end
        if not isfolder("ZekromHubV2/Blox Fruits/") then
            makefolder("ZekromHubV2/Blox Fruits/")
        end
        if not isfile("ZekromHubV2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            writefile("ZekromHubV2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("ZekromHubV2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
            for i,v in pairs(Decode) do
                _G.Settings[i] = v
            end
        end
    else
        return --warn("Status: error")
    end
end

function SaveSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfile("ZekromHubV2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            LoadSettings()
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("ZekromHubV2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
            local Array = {}
            for i,v in pairs(_G.Settings) do
                Array[i] = v
            end
            writefile("ZekromHubV2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
        end
    else
        return --warn("Status: error")
    end
end

LoadSettings()

function GetMaterial(matname)
	for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
	if type(v) == "table" then
		if v.Type == "Material" then
			if v.Name == matname then
				return v.Count
			end
		end
	end
	end
	return 0
end
	
local AllMaterial
	if World1 then
	AllMaterial = {
	"Magma Ore",
	"Leather",
	"Scrap Metal",
	"Angel Wings",
	"Fish Tail"
	}
elseif World2 then
	AllMaterial = {
	"Magma Ore",
	"Scrap Metal",
	"Radioactive Material",
	"Vampire Fang",
	"Mystic Droplet",
	}
elseif World3 then
	AllMaterial = {
	"Mini Tusk",
	"Fish Tail",
	"Scrap Metal",
	"Dragon Scale",
	"Conjured Cocoa",
	"Demonic Wisp",
	"Gunpowder",
	}
end
	
	table.sort(AllMaterial)

	function AntiBan()
		for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
			if v:IsA("LocalScript") then
				if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
					v:Destroy()
				end
			end
		 end
		 for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
			if v:IsA("LocalScript") then
				if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
					v:Destroy()
				end
			end
		 end
		end
	AntiBan()
	
	-- [CustomFindFirstChild]
	
local function CustomFindFirstChild(tablename)
	for i, v in pairs(tablename) do
	if game:GetService("Workspace").Enemies:FindFirstChild(v) then
		return true
	end
	end
	return false
end
	
	-- [CheckMaterial]
	
local function CheckMaterial(v1)
	if World1 then
	if (v1 == "Magma Ore") then
		MaterialMob = { "Military Soldier", "Military Spy" };
		CFrameMon = CFrame.new(-5815, 84, 8820);
	elseif ((v1 == "Leather") or (v1 == "Scrap Metal")) then
		MaterialMob = { "Brute"};
		CFrameMon = CFrame.new(-1145, 15, 4350);
	elseif (v1 == "Angel Wings") then
		MaterialMob = { "God's Guard"};
		CFrameMon = CFrame.new(-4698, 845, -1912);
	elseif (v1 == "Fish Tail") then
		MaterialMob = { "Fishman Warrior", "Fishman Commando" };
		CFrameMon = CFrame.new(61123, 19, 1569);
	end
	end
if World2 then
	if (v1 == "Magma Ore") then
		MaterialMob = { "Magma Ninja" };
		CFrameMon = CFrame.new(-5428, 78, -5959);
	elseif (v1 == "Scrap Metal") then
		MaterialMob = { "Swan Pirate" };
		CFrameMon = CFrame.new(878, 122, 1235);
	elseif (v1 == "Radioactive Material") then
		MaterialMob = { "Factory Staff" };
		CFrameMon = CFrame.new(295, 73, -56);
	elseif (v1 == "Vampire Fang") then
		MaterialMob = { "Vampire" };
		CFrameMon = CFrame.new(-6033, 7, -1317);
	elseif (v1 == "Mystic Droplet") then
		MaterialMob = { "Water Fighter", "Sea Soldier" };
		CFrameMon = CFrame.new(-3385, 239, -10542);
	end
end
if World3 then
	if (v1 == "Mini Tusk") then
		MaterialMob = { "Mythological Pirate" };
		CFrameMon = CFrame.new(-13545, 470, -6917);
	elseif (v1 == "Fish Tail") then
		MaterialMob = { "Fishman Raider", "Fishman Captain" };
		CFrameMon = CFrame.new(-10993, 332, -8940);
	elseif (v1 == "Scrap Metal") then
		MaterialMob = { "Jungle Pirate" };
		CFrameMon = CFrame.new(-12107, 332, -10549);
	elseif (v1 == "Dragon Scale") then
		MaterialMob = { "Dragon Crew Archer", "Dragon Crew Warrior" };
		CFrameMon = CFrame.new(6594, 383, 139);
	elseif (v1 == "Conjured Cocoa") then
		MaterialMob = { "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief",
			"Candy Rebel" };
		CFrameMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625);
	elseif (v1 == "Demonic Wisp") then
		MaterialMob = { "Demonic Soul" };
		CFrameMon = CFrame.new(-9507, 172, 6158);
	elseif (v1 == "Gunpowder") then
		MaterialMob = { "Pistol Billionaire" };
		CFrameMon = CFrame.new(-469, 74, 5904);
	end
	end
end

function CheckQuest()
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if World1 then
    if MyLevel == 1 or MyLevel <= 9 then -- Bandit
        LevelFarm = 1
    
        Name = "Bandit"
        QuestName = "BanditQuest1"
    
        LevelQuest = 1
        NameMon = "Bandit"
    
        CFrameMon = CFrame.new(1145, 17, 1634)
        VectorMon = Vector3.new(1145, 17, 1634)
    
        CFrameQuest = CFrame.new(1060, 17, 1547)
        VectorQuest = Vector3.new(1060, 17, 1547)
    elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
        LevelFarm = 3
    
        Name = "Monkey"
        QuestName = "JungleQuest"
    
        LevelQuest = 1
        NameMon = "Monkey"
    
        CFrameMon = CFrame.new(-1496, 39, 35)
        VectorMon = Vector3.new(-1496, 39, 35)
    
        CFrameQuest = CFrame.new(-1602, 37, 152)
        VectorQuest = Vector3.new(-1602, 37, 152)
    elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
        LevelFarm = 4
    
        Name = "Gorilla"
        QuestName = "JungleQuest"
    
        LevelQuest = 2
        NameMon = "Gorilla"
    
        CFrameMon = CFrame.new(-1237, 6, -486)
        VectorMon = Vector3.new(-1237, 7, -486)
    
        CFrameQuest = CFrame.new(-1602, 37, 152)
        VectorQuest = Vector3.new(-1602, 37, 152)
    elseif MyLevel == 30 or MyLevel <= 59 then -- Pirate
        LevelFarm = 6
    
        Name = "Pirate"
        QuestName = "BuggyQuest1"
    
        LevelQuest = 1
        NameMon = "Pirate"
    
        CFrameMon = CFrame.new(-1115, 14, 3938)
        VectorMon = Vector3.new(-1115, 14, 3938)
    
        CFrameQuest = CFrame.new(-1140, 5, 3828)
        VectorQuest = Vector3.new(-1140, 5, 3828)
    elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
        LevelFarm = 9
    
        Name = "Desert Bandit"
        QuestName = "DesertQuest"
    
        LevelQuest = 1
        NameMon = "Desert Bandit"
    
        CFrameMon = CFrame.new(932, 7, 4484)
        VectorMon = Vector3.new(932, 7, 4484)
    
        CFrameQuest = CFrame.new(897, 7, 4388)
        VectorQuest = Vector3.new(897, 7, 4388)
    elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
        LevelFarm = 10
    
        Name = "Desert Officer"
        QuestName = "DesertQuest"
    
        LevelQuest = 2
        NameMon = "Desert Officer"
    
        CFrameMon = CFrame.new(1572, 10, 4373)
        VectorMon = Vector3.new(1572, 10, 4373)
    
        CFrameQuest = CFrame.new(897, 7, 4388)
        VectorQuest = Vector3.new(897, 7, 4388)
    elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
        LevelFarm = 12
    
        Name = "Snow Bandit"
        QuestName = "SnowQuest"
    
        LevelQuest = 1
        NameMon = "Snow Bandits"
    
        CFrameMon = CFrame.new(1289, 150, -1442)
        VectorMon = Vector3.new(1289, 106, -1442)
    
        CFrameQuest = CFrame.new(1386, 87, -1297)
        VectorQuest = Vector3.new(1386, 87, -1297)
    elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
        LevelFarm = 13
    
        Name = "Snowman"
        QuestName = "SnowQuest"
    
        LevelQuest = 2
        NameMon = "Snowman"
    
        CFrameMon = CFrame.new(1289, 150, -1442)
        VectorMon = Vector3.new(1289, 106, -1442)
    
        CFrameQuest = CFrame.new(1386, 87, -1297)
        VectorQuest = Vector3.new(1386, 87, -1297)
    elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
        LevelFarm = 15
    
        Name = "Chief Petty Officer"
        QuestName = "MarineQuest2"
    
        LevelQuest = 1
        NameMon = "Chief Petty Officer"
    
        CFrameMon = CFrame.new(-4855, 23, 4308)
        VectorMon = Vector3.new(-4855, 23, 4308)
    
        CFrameQuest = CFrame.new(-5036, 29, 4325)
        VectorQuest = Vector3.new(-5036, 29, 4325)
    elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
        LevelFarm = 17
    
        Name = "Sky Bandit"
        QuestName = "SkyQuest"
    
        LevelQuest = 1
        NameMon = "Sky Bandit"
    
        CFrameMon = CFrame.new(-4981, 278, -2830)
        VectorMon = Vector3.new(-4981, 278, -2830)
    
        CFrameQuest = CFrame.new(-4842, 718, -2623)
        VectorQuest = Vector3.new(-4842, 718, -2623)
    elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
        LevelFarm = 18
    
        Name = "Dark Master"
        QuestName = "SkyQuest"
    
        LevelQuest = 2
        NameMon = "Dark Master"
    
        CFrameMon = CFrame.new(-5250, 389, -2272)
        VectorMon = Vector3.new(-5250, 389, -2272)
    
        CFrameQuest = CFrame.new(-4842, 718, -2623)
        VectorQuest = Vector3.new(-4842, 718, -2623)
    elseif MyLevel == 190 or MyLevel <= 209 then -- Dark Master
        LevelFarm = 20
    
        Name = "Prisoner"
        QuestName = "PrisonerQuest"
    
        LevelQuest = 1
        NameMon = "Prisoner"
    
        CFrameMon = CFrame.new(5411, 96, 690)
        VectorMon = Vector3.new(5411, 96, 690)
    
        CFrameQuest = CFrame.new(5308, 2, 474)
        VectorQuest = Vector3.new(5308, 2, 474)
    elseif MyLevel == 210 or MyLevel <= 249 then -- Dark Master
        LevelFarm = 21
    
        Name = "Dangerous Prisoner"
        QuestName = "PrisonerQuest"
    
        LevelQuest = 2
        NameMon = "Dangerous Prisoner"
    
        CFrameMon = CFrame.new(5411, 96, 690)
        VectorMon = Vector3.new(5411, 96, 690)
    
        CFrameQuest = CFrame.new(5308, 2, 474)
        VectorQuest = Vector3.new(5308, 2, 474)
    elseif MyLevel == 250 or MyLevel <= 299 then -- Toga Warrior
        LevelFarm = 23
    
        Name = "Toga Warrior"
        QuestName = "ColosseumQuest"
    
        LevelQuest = 1
        NameMon = "Toga Warrior"
    
        CFrameMon = CFrame.new(-1824, 50, -2743)
        VectorMon = Vector3.new(-1824, 50, -2743)
    
        CFrameQuest = CFrame.new(-1576, 8, -2985)
        VectorQuest = Vector3.new(-1576, 8, -2985)
    elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
        LevelFarm = 25
    
        Name = "Military Soldier"
        QuestName = "MagmaQuest"
    
        LevelQuest = 1
        NameMon = "Military Soldier"
    
        CFrameMon = CFrame.new(-5555.064453125, 16.73392105102539, 8377.623046875)
        VectorMon = Vector3.new(-5555.064453125, 16.73392105102539, 8377.623046875)
    
        CFrameQuest = CFrame.new(-5316, 12, 8517)
        VectorQuest = Vector3.new(-5316, 12, 8517)
    elseif MyLevel == 330 or MyLevel <= 374 then -- Military Spy
        LevelFarm = 26
    
        Name = "Military Spy"
        QuestName = "MagmaQuest"
    
        LevelQuest = 2
        NameMon = "Military Spy"
    
        CFrameMon = CFrame.new(-5806.056640625, 99.96672058105469, 8777.8447265625)
        VectorMon = Vector3.new(-5806.056640625, 99.96672058105469, 8777.8447265625)
    
        CFrameQuest = CFrame.new(-5316, 12, 8517)
        VectorQuest = Vector3.new(-5316, 12, 8517)
    elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
        LevelFarm = 28
    
        Name = "Fishman Warrior"
        QuestName = "FishmanQuest"
    
        LevelQuest = 1
        NameMon = "Fishman Warrior"
    
        CFrameMon = CFrame.new(60859, 19, 1501)
        VectorMon = Vector3.new(60859, 19, 1501)
    
        CFrameQuest = CFrame.new(61123, 19, 1569)
        VectorQuest = Vector3.new(61123, 19, 1569)
    elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
        LevelFarm = 29
    
        Name = "Fishman Commando"
        QuestName = "FishmanQuest"
    
        LevelQuest = 2
        NameMon = "Fishman Commando"
    
        CFrameMon = CFrame.new(61891, 19, 1470)
        VectorMon = Vector3.new(61891, 19, 1470)
    
        CFrameQuest = CFrame.new(61123, 19, 1569)
        VectorQuest = Vector3.new(61123, 19, 1569)
    elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
        LevelFarm = 31
    
        Name = "God's Guard"
        QuestName = "SkyExp1Quest"
    
        LevelQuest = 1
        NameMon = "God's Guards"
    
        CFrameMon = CFrame.new(-4698, 845, -1912)
        VectorMon = Vector3.new(-4698, 845, -1912)
    
        CFrameQuest = CFrame.new(-4722, 845, -1954)
        VectorQuest = Vector3.new(-4722, 846, -1954)
    elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
        LevelFarm = 33
    
        Name = "Shanda"
        QuestName = "SkyExp1Quest"
    
        LevelQuest = 2
        NameMon = "Shandas"
    
        CFrameMon = CFrame.new(-7685, 5567, -502)
        VectorMon = Vector3.new(-7685, 5567, -502)
    
        CFrameQuest = CFrame.new(-7862, 5546, -380)
        VectorQuest = Vector3.new(-7862, 5546, -380)
    elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
        LevelFarm = 34
    
        Name = "Royal Squad"
        QuestName = "SkyExp2Quest"
    
        LevelQuest = 1
        NameMon = "Royal Squad"
    
        CFrameMon = CFrame.new(-7670, 5607, -1460)
        VectorMon = Vector3.new(-7670, 5607, -1460)
    
        CFrameQuest = CFrame.new(-7904, 5636, -1412)
        VectorQuest = Vector3.new(-7904, 5636, -1412)
    elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
        LevelFarm = 35
    
        Name = "Royal Soldier"
        QuestName = "SkyExp2Quest"
    
        LevelQuest = 2
        NameMon = "Royal Soldier"
    
        CFrameMon = CFrame.new(-7828, 5607, -1744)
        VectorMon = Vector3.new(-7828, 5607, -1744)
    
        CFrameQuest = CFrame.new(-7904, 5636, -1412)
        VectorQuest = Vector3.new(-7904, 5636, -1412)
    elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
        LevelFarm = 37
    
        Name = "Galley Pirate"
        QuestName = "FountainQuest"
    
        LevelQuest = 1
        NameMon = "Galley Pirate"
    
        CFrameMon = CFrame.new(5589, 45, 3996)
        VectorMon = Vector3.new(5589, 45, 3996)
    
        CFrameQuest = CFrame.new(5256, 39, 4050)
        VectorQuest = Vector3.new(5256, 39, 4050)
    elseif MyLevel >= 650 then -- Galley Captain
        LevelFarm = 38
    
        Name = "Galley Captain"
        QuestName = "FountainQuest"
    
        LevelQuest = 2
        NameMon = "Galley Captain"
    
        CFrameMon = CFrame.new(5649, 39, 4936)
        VectorMon = Vector3.new(5649, 39, 4936)
    
        CFrameQuest = CFrame.new(5256, 39, 4050)
        VectorQuest = Vector3.new(5256, 39, 4050)
    end
    end
    if World2 then
    if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
        LevelFarm = 1
    
        Name = "Raider"
        QuestName = "Area1Quest"
    
        LevelQuest = 1
        NameMon = "Raider"
    
        CFrameQuest = CFrame.new(-425, 73, 1837)
        VectorQuest = Vector3.new(-425, 73, 1837)
    
        CFrameMon = CFrame.new(-746, 39, 2390)
        VectorMon = Vector3.new(-746, 39, 2389)
    elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
        LevelFarm = 2
    
        Name = "Mercenary"
        QuestName = "Area1Quest"
    
        LevelQuest = 2
        NameMon = "Mercenary"
    
        CFrameQuest = CFrame.new(-425, 73, 1837)
        VectorQuest = Vector3.new(-425, 73, 1837)
    
        CFrameMon = CFrame.new(-856.213134765625, 135.4429473876953, 1407.4842529296875)
        VectorMon = Vector3.new(-856.213134765625, 135.4429473876953, 1407.4842529296875)
    elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
        LevelFarm = 3
    
        Name = "Swan Pirate"
        QuestName = "Area2Quest"
    
        LevelQuest = 1
        NameMon = "Swan Pirate"
    
        CFrameQuest = CFrame.new(634, 73, 918)
        VectorQuest = Vector3.new(634, 73, 918)
    
        CFrameMon = CFrame.new(878, 122, 1235)
        VectorMon = Vector3.new(878, 122, 1235)
    elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
        LevelFarm = 4
    
        Name = "Factory Staff"
        QuestName = "Area2Quest"
    
        LevelQuest = 2
        NameMon = "Factory Staff"
    
        CFrameQuest = CFrame.new(634, 73, 918)
        VectorQuest = Vector3.new(634, 73, 918)
    
        CFrameMon = CFrame.new(295, 73, -56)
        VectorMon = Vector3.new(295, 73, -56)
    elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
        LevelFarm = 6
    
        Name = "Marine Lieutenant"
        QuestName = "MarineQuest3"
    
        LevelQuest = 1
        NameMon = "Marine Lieutenant"
    
        CFrameMon = CFrame.new(-2806, 73, -3038)
        VectorMon = Vector3.new(-2806, 73, -3038)
    
        CFrameQuest = CFrame.new(-2443, 73, -3219)
        VectorQuest = Vector3.new(-2443, 73, -3219)
    elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
        LevelFarm = 7
    
        Name = "Marine Captain"
        QuestName = "MarineQuest3"
    
        LevelQuest = 2
        NameMon = "Marine Captain"
    
        CFrameMon = CFrame.new(-1869, 73, -3320)
        VectorMon = Vector3.new(-1869, 73, -3320)
    
        CFrameQuest = CFrame.new(-2443, 73, -3219)
        VectorQuest = Vector3.new(-2443, 73, -3219)
    elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
        LevelFarm = 9
    
        Name = "Zombie"
        QuestName = "ZombieQuest"
    
        LevelQuest = 1
        NameMon = "Zombie"
    
        CFrameMon = CFrame.new(-5736, 126, -728)
        VectorMon = Vector3.new(-5736, 126, -728)
    
        CFrameQuest = CFrame.new(-5494, 49, -795)
        VectorQuest = Vector3.new(-5494, 49, -794)
    elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
        LevelFarm = 10
    
        Name = "Vampire"
        QuestName = "ZombieQuest"
    
        LevelQuest = 2
        NameMon = "Vampire"
    
        CFrameMon = CFrame.new(-6033, 7, -1317)
        VectorMon = Vector3.new(-6033, 7, -1317)
    
        CFrameQuest = CFrame.new(-5494, 49, -795)
        VectorQuest = Vector3.new(-5494, 49, -795)
    elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
        LevelFarm = 12
    
        Name = "Snow Trooper"
        QuestName = "SnowMountainQuest"
    
        LevelQuest = 1
        NameMon = "Snow Trooper"
    
        CFrameMon = CFrame.new(478, 402, -5362)
        VectorMon = Vector3.new(478, 402, -5362)
    
        CFrameQuest = CFrame.new(605, 402, -5371)
        VectorQuest = Vector3.new(605, 402, -5371)
    elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
        LevelFarm = 13
    
        Name = "Winter Warrior"
        QuestName = "SnowMountainQuest"
    
        LevelQuest = 2
        NameMon = "Winter Warrior"
    
        CFrameMon = CFrame.new(1157, 430, -5188)
        VectorMon = Vector3.new(1157, 430, -5188)
    
        CFrameQuest = CFrame.new(605, 402, -5371)
        VectorQuest = Vector3.new(605, 402, -5371)
    elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
        LevelFarm = 15
    
        Name = "Lab Subordinate"
        QuestName = "IceSideQuest"
    
        LevelQuest = 1
        NameMon = "Lab Subordinate"
    
        CFrameMon = CFrame.new(-5782, 42, -4484)
        VectorMon = Vector3.new(-5782, 42, -4484)
    
        CFrameQuest = CFrame.new(-6060, 16, -4905)
        VectorQuest = Vector3.new(-6060, 16, -4905)
    elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
        LevelFarm = 16
    
        Name = "Horned Warrior"
        QuestName = "IceSideQuest"
    
        LevelQuest = 2
        NameMon = "Horned Warrior"
    
        CFrameMon = CFrame.new(-6406, 24, -5805)
        VectorMon = Vector3.new(-6406, 24, -5805)
    
        CFrameQuest = CFrame.new(-6060, 16, -4905)
        VectorQuest = Vector3.new(-6060, 16, -4905)
    elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
        LevelFarm = 18
    
        Name = "Magma Ninja"
        QuestName = "FireSideQuest"
        LevelQuest = 1
        NameMon = "Magma Ninja"
    
        CFrameMon = CFrame.new(-5428, 78, -5959)
        VectorMon = Vector3.new(-5428, 78, -5959)
    
        CFrameQuest = CFrame.new(-5430, 16, -5295)
        VectorQuest = Vector3.new(-5430, 16, -5296)
    elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
        LevelFarm = 19
    
        Name = "Lava Pirate"
        QuestName = "FireSideQuest"
    
        LevelQuest = 2
        NameMon = "Lava Pirate"
    
        CFrameMon = CFrame.new(-5270, 42, -4800)
        VectorMon = Vector3.new(-5270, 42, -4800)
    
        CFrameQuest = CFrame.new(-5430, 16, -5295)
        VectorQuest = Vector3.new(-5430, 16, -5296)
    elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
        LevelFarm = 21
    
        Name = "Ship Deckhand"
        QuestName = "ShipQuest1"
    
        LevelQuest = 1
        NameMon = "Ship Deckhand"
    
        CFrameMon = CFrame.new(1198, 126, 33031)
        VectorMon = Vector3.new(1198, 126, 33031)
    
        CFrameQuest = CFrame.new(1038, 125, 32913)
        VectorQuest = Vector3.new(1038, 125, 32913)
    elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
        LevelFarm = 22
    
        Name = "Ship Engineer"
        QuestName = "ShipQuest1"
    
        LevelQuest = 2
        NameMon = "Ship Engineer"
    
        CFrameMon = CFrame.new(918, 44, 32787)
        VectorMon = Vector3.new(918, 44, 32787)
    
        CFrameQuest = CFrame.new(1038, 125, 32913)
        VectorQuest = Vector3.new(1038, 125, 32913)
    elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
        LevelFarm = 23
    
        Name = "Ship Steward"
        QuestName = "ShipQuest2"
    
        LevelQuest = 1
        NameMon = "Ship Steward"
    
        CFrameMon = CFrame.new(915, 130, 33419)
        VectorMon = Vector3.new(915, 130, 33419)
    
        CFrameQuest = CFrame.new(969, 125, 33245)
        VectorQuest = Vector3.new(969, 125, 33245)
    elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
        LevelFarm = 24
    
        Name = "Ship Officer"
        QuestName = "ShipQuest2"
    
        LevelQuest = 2
        NameMon = "Ship Officer"
    
        CFrameMon = CFrame.new(916, 181, 33335)
        VectorMon = Vector3.new(916, 181, 33335)
    
        CFrameQuest = CFrame.new(969, 125, 33245)
        VectorQuest = Vector3.new(969, 125, 33245)
    elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
        LevelFarm = 26
    
        Name = "Arctic Warrior"
        QuestName = "FrostQuest"
    
        LevelQuest = 1
        NameMon = "Arctic Warrior"
    
        CFrameMon = CFrame.new(6038, 29, -6231)
        VectorMon = Vector3.new(6038, 29, -6231)
    
        VectorQuest = Vector3.new(5669, 28, -6482)
        CFrameQuest = CFrame.new(5669, 28, -6482)
    elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
        LevelFarm = 27
    
        Name = "Snow Lurker"
        QuestName = "FrostQuest"
    
        LevelQuest = 2
        NameMon = "Snow Lurker"
    
        CFrameMon = CFrame.new(5560, 42, -6826)
        VectorMon = Vector3.new(5560, 42, -6826)
    
        VectorQuest = Vector3.new(5669, 28, -6482)
        CFrameQuest = CFrame.new(5669, 28, -6482)
    elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
        LevelFarm = 29
        Name = "Sea Soldier"
        QuestName = "ForgottenQuest"
    
        LevelQuest = 1
        NameMon = "Sea Soldier"
    
        CFrameMon = CFrame.new(-3022, 16, -9722)
        VectorMon = Vector3.new(-3022, 16, -9722)
    
        CFrameQuest = CFrame.new(-3054, 237, -10148)
        VectorQuest = Vector3.new(-3054, 237, -10148)
    elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
        LevelFarm = 30
        Name = "Water Fighter"
        QuestName = "ForgottenQuest"
    
        LevelQuest = 2
        NameMon = "Water Fighter"
    
        CFrameMon = CFrame.new(-3385, 239, -10542)
        VectorMon = Vector3.new(-3385, 239, -10542)
    
        CFrameQuest = CFrame.new(-3054, 237, -10148)
        VectorQuest = Vector3.new(-3054, 237, -10148)
    end
    end
    if World3 then
    if MyLevel == 1500 or MyLevel <= 1524 then
        LevelFarm = 1
    
        Name = "Pirate Millionaire"
        QuestName = "PiratePortQuest"
    
        LevelQuest = 1
        NameMon = "Pirate"
    
        CFrameMon = CFrame.new(-373, 75, 5550)
        VectorMon = Vector3.new(-373, 75, 5550)
    
        CFrameQuest = CFrame.new(-288, 44, 5576)
        VectorQuest = Vector3.new(-288, 44, 5576)
    elseif MyLevel == 1525 or MyLevel <= 1574 then
        LevelFarm = 2
    
        Name = "Pistol Billionaire"
        QuestName = "PiratePortQuest"
    
        LevelQuest = 2
        NameMon = "Pistol"
    
        CFrameMon = CFrame.new(-469, 74, 5904)
        VectorMon = Vector3.new(-469, 74, 5904)
    
        CFrameQuest = CFrame.new(-288, 44, 5576)
        VectorQuest = Vector3.new(-288, 44, 5576)
    elseif MyLevel == 1575 or MyLevel <= 1599 then
        LevelFarm = 4
    
        Name = "Dragon Crew Warrior"
        QuestName = "AmazonQuest"
    
        LevelQuest = 1
        NameMon = "Warrior"
    
        CFrameMon = CFrame.new(6339, 52, -1213)
        VectorMon = Vector3.new(6338, 52, -1213)
    
        CFrameQuest = CFrame.new(5835, 52, -1105)
        VectorQuest = Vector3.new(5835, 52, -1105)
    elseif MyLevel == 1600 or MyLevel <= 1624 then
        LevelFarm = 5
    
        Name = "Dragon Crew Archer"
        QuestName = "AmazonQuest"
    
        LevelQuest = 2
        NameMon = "Archer"
    
        CFrameMon = CFrame.new(6594, 383, 139)
        VectorMon = Vector3.new(6594, 383, 139)
    
        CFrameQuest = CFrame.new(5835, 52, -1105)
        VectorQuest = Vector3.new(5835, 52, -1105)
    elseif MyLevel == 1625 or MyLevel <= 1649 then
        LevelFarm = 6
    
        Name = "Female Islander"
        QuestName = "AmazonQuest2"
    
        LevelQuest = 1
        NameMon = "Female"
    
        CFrameMon = CFrame.new(5308, 819, 1047)
        VectorMon = Vector3.new(5308, 819, 1047)
    
        CFrameQuest = CFrame.new(5443, 602, 751)
        VectorQuest = Vector3.new(5443, 602, 751)
    elseif MyLevel == 1650 or MyLevel <= 1699 then
        LevelFarm = 7
    
        Name = "Giant Islander"
        QuestName = "AmazonQuest2"
    
        LevelQuest = 2
        NameMon = "Giant Islanders"
    
        CFrameMon = CFrame.new(4951, 602, -68)
        VectorMon = Vector3.new(4951, 602, -68)
    
        CFrameQuest = CFrame.new(5443, 602, 751)
        VectorQuest = Vector3.new(5443, 602, 751)
    elseif MyLevel == 1700 or MyLevel <= 1724 then
        LevelFarm = 9
    
        Name = "Marine Commodore"
        QuestName = "MarineTreeIsland"
    
        LevelQuest = 1
        NameMon = "Marine Commodore"
    
        CFrameMon = CFrame.new(2447, 73, -7470)
        VectorMon = Vector3.new(2447, 73, -7470)
    
        CFrameQuest = CFrame.new(2180, 29, -6737)
        VectorQuest = Vector3.new(2180, 29, -6737)
    elseif MyLevel == 1725 or MyLevel <= 1774 then
        LevelFarm = 10
    
        Name = "Marine Rear Admiral"
        QuestName = "MarineTreeIsland"
    
        LevelQuest = 2
        NameMon = "Marine Rear Admiral"
    
        CFrameMon = CFrame.new(3671, 161, -6932)
        VectorMon = Vector3.new(3671, 161, -6932)
    
        CFrameQuest = CFrame.new(2180, 29, -6737)
        VectorQuest = Vector3.new(2180, 29, -6737)
    elseif MyLevel == 1775 or MyLevel <= 1800 then
        LevelFarm = 12
    
        Name = "Fishman Raider"
        QuestName = "DeepForestIsland3"
    
        LevelQuest = 1
        NameMon = "Fishman Raider"
    
        CFrameMon = CFrame.new(-10560, 332, -8466)
        VectorMon = Vector3.new(-10560, 332, -8466)
    
        CFrameQuest = CFrame.new(-10584, 332, -8758)
        VectorQuest = Vector3.new(-10584, 332, -8758)
    elseif MyLevel == 1800 or MyLevel <= 1824 then
        LevelFarm = 13
    
        Name = "Fishman Captain"
        QuestName = "DeepForestIsland3"
    
        LevelQuest = 2
        NameMon = "Fishman Captain"
    
        CFrameMon = CFrame.new(-10993, 332, -8940)
        VectorMon = Vector3.new(-10993, 332, -8940)
    
        CFrameQuest = CFrame.new(-10584, 332, -8758)
        VectorQuest = Vector3.new(-10584, 332, -8758)
    elseif MyLevel == 1825 or MyLevel <= 1849 then
        LevelFarm = 14
    
        Name = "Forest Pirate"
        QuestName = "DeepForestIsland"
    
        LevelQuest = 1
        NameMon = "Forest Pirate"
    
        CFrameMon = CFrame.new(-13479, 333, -7905)
        VectorMon = Vector3.new(-13479, 333, -7905)
    
        CFrameQuest = CFrame.new(-13232, 333, -7627)
        VectorQuest = Vector3.new(-13232, 333, -7627)
    elseif MyLevel == 1850 or MyLevel <= 1899 then
        LevelFarm = 15
    
        Name = "Mythological Pirate"
        QuestName = "DeepForestIsland"
    
        LevelQuest = 2
        NameMon = "Mythological Pirate"
    
        CFrameMon = CFrame.new(-13545, 470, -6917)
        VectorMon = Vector3.new(-13545, 470, -6917)
    
        CFrameQuest = CFrame.new(-13232, 333, -7627)
        VectorQuest = Vector3.new(-13232, 333, -7627)
    elseif MyLevel == 1900 or MyLevel <= 1924 then
        LevelFarm = 16
    
        Name = "Jungle Pirate"
        QuestName = "DeepForestIsland2"
    
        LevelQuest = 1
        NameMon = "Jungle Pirate"
    
        CFrameMon = CFrame.new(-12107, 332, -10549)
        VectorMon = Vector3.new(-12106, 332, -10549)
    
        CFrameQuest = CFrame.new(-12684, 391, -9902)
        VectorQuest = Vector3.new(-12684, 391, -9902)
    elseif MyLevel == 1925 or MyLevel <= 1974 then
        LevelFarm = 17
    
        Name = "Musketeer Pirate"
        QuestName = "DeepForestIsland2"
    
        LevelQuest = 2
        NameMon = "Musketeer Pirate"
    
        CFrameMon = CFrame.new(-13286, 392, -9769)
        VectorMon = Vector3.new(-13286, 392, -9768)
    
        CFrameQuest = CFrame.new(-12684, 391, -9902)
        VectorQuest = Vector3.new(-12684, 391, -9902)
    elseif MyLevel == 1975 or MyLevel <= 1999 then
        LevelFarm = 19
        Name = "Reborn Skeleton"
        QuestName = "HauntedQuest1"
    
        LevelQuest = 1
        NameMon = "Reborn Skeleton"
    
        CFrameMon = CFrame.new(-8760, 142, 6039)
        VectorMon = Vector3.new(-8760, 142, 6039)
    
        CFrameQuest = CFrame.new(-9482, 142, 5567)
        VectorQuest = Vector3.new(-9482, 142, 5567)
    elseif MyLevel == 2000 or MyLevel <= 2024 then
        LevelFarm = 20
    
        Name = "Living Zombie"
        QuestName = "HauntedQuest1"
    
        LevelQuest = 2
        NameMon = "Living Zombie"
    
        CFrameMon = CFrame.new(-10144, 140, 5932)
        VectorMon = Vector3.new(-10144, 140, 5932)
    
        CFrameQuest = CFrame.new(-9482, 142, 5567)
        VectorQuest = Vector3.new(-9482, 142, 5567)
    elseif MyLevel == 2025 or MyLevel <= 2049 then
        LevelFarm = 21
    
        Name = "Demonic Soul"
        QuestName = "HauntedQuest2"
    
        LevelQuest = 1
        NameMon = "Demonic Soul"
    
        CFrameMon = CFrame.new(-9507, 172, 6158)
        VectorMon = Vector3.new(-9506, 172, 6158)
    
        CFrameQuest = CFrame.new(-9513, 172, 6079)
        VectorQuest = Vector3.new(-9513, 172, 6079)
    elseif MyLevel == 2050 or MyLevel <= 2074 then
        LevelFarm = 22
    
        Name = "Posessed Mummy"
        QuestName = "HauntedQuest2"
    
        LevelQuest = 2
        NameMon = "Posessed Mummy"
    
        CFrameMon = CFrame.new(-9577, 6, 6223)
        VectorMon = Vector3.new(-9577, 6, 6223)
    
        CFrameQuest = CFrame.new(-9513, 172, 6079)
        VectorQuest = Vector3.new(-9513, 172, 6079)
    elseif MyLevel == 2075 or MyLevel <= 2099 then
        LevelFarm = 24
    
        Name = "Peanut Scout"
        QuestName = "NutsIslandQuest"
    
        LevelQuest = 1
        NameMon = "Peanut Scout"
    
        CFrameMon = CFrame.new(-2124, 123, -10435)
        VectorMon = Vector3.new(-2124, 123, -10435)
    
        CFrameQuest = CFrame.new(-2104, 38, -10192)
        VectorQuest = Vector3.new(-2104, 38, -10192)
    elseif MyLevel == 2100 or MyLevel <= 2124 then
        LevelFarm = 25
    
        Name = "Peanut President"
        QuestName = "NutsIslandQuest"
    
        LevelQuest = 2
        NameMon = "Peanut President"
    
        CFrameMon = CFrame.new(-2124, 123, -10435)
        VectorMon = Vector3.new(-2124, 123, -10435)
    
        CFrameQuest = CFrame.new(-2104, 38, -10192)
        VectorQuest = Vector3.new(-2104, 38, -10192)
    elseif MyLevel == 2125 or MyLevel <= 2149 then
        LevelFarm = 26
    
        Name = "Ice Cream Chef"
        QuestName = "IceCreamIslandQuest"
    
        LevelQuest = 1
        NameMon = "Ice Cream Chef"
    
        CFrameMon = CFrame.new(-641, 127, -11062)
        VectorMon = Vector3.new(-641, 127, -11062)
    
        CFrameQuest = CFrame.new(-822, 66, -10965)
        VectorQuest = Vector3.new(-822, 66, -10965)
    elseif MyLevel == 2150 or MyLevel <= 2199 then
        LevelFarm = 27
    
        Name = "Ice Cream Commander"
        QuestName = "IceCreamIslandQuest"
    
        LevelQuest = 2
        NameMon = "Ice Cream Commander"
    
        CFrameMon = CFrame.new(-641, 127, -11062)
        VectorMon = Vector3.new(-641, 127, -11062)
    
        CFrameQuest = CFrame.new(-822, 66, -10965)
        VectorQuest = Vector3.new(-822, 66, -10965)
        ---------------------------------------------------------------
    elseif MyLevel == 2200 or MyLevel <= 2224 then
        LevelFarm = 29
    
        Name = "Cookie Crafter"
        QuestName = "CakeQuest1"
    
        LevelQuest = 1
        NameMon = "Cookie Crafter"
    
        CFrameMon = CFrame.new(-2365, 38, -12099)
        VectorMon = Vector3.new(-2365, 38, -12099)
    
        CFrameQuest = CFrame.new(-2020, 38, -12025)
        VectorQuest = Vector3.new(-2020, 38, -12025)
    elseif MyLevel == 2225 or MyLevel <= 2249 then
        LevelFarm = 30
    
        Name = "Cake Guard"
        QuestName = "CakeQuest1"
    
        LevelQuest = 2
        NameMon = "Cake Guard"
    
        CFrameMon = CFrame.new(-1651, 38, -12308)
        VectorMon = Vector3.new(-1651, 38, -12308)
    
        CFrameQuest = CFrame.new(-2020, 38, -12025)
        VectorQuest = Vector3.new(-2020, 38, -12025)
    elseif MyLevel == 2250 or MyLevel <= 2274 then
        LevelFarm = 31
    
        Name = "Baking Staff"
        QuestName = "CakeQuest2"
    
        LevelQuest = 1
        NameMon = "Baking Staff"
    
        CFrameMon = CFrame.new(-1870, 38, -12938)
        VectorMon = Vector3.new(-1870, 38, -12938)
    
        CFrameQuest = CFrame.new(-1926, 38, -12850)
        VectorQuest = Vector3.new(-1926, 38, -12850)
    elseif MyLevel == 2275 or MyLevel <= 2299 then
        LevelFarm = 32
    
        Name = "Head Baker"
        QuestName = "CakeQuest2"
    
        LevelQuest = 2
        NameMon = "Head Baker"
    
        CFrameMon = CFrame.new(-1926, 88, -12850)
        VectorMon = CFrame.new(-1870, 38, -12938)
    
        CFrameQuest = CFrame.new(-1926, 38, -12850)
        VectorQuest = Vector3.new(-1926, 38, -12850)
        ---------------------------------------------------------------
    elseif MyLevel == 2300 or MyLevel <= 2324 then
        LevelFarm = 34
    
        Name = "Cocoa Warrior"
        QuestName = "ChocQuest1"
    
        LevelQuest = 1
        NameMon = "Cocoa Warrior"
    
        CFrameMon = CFrame.new(231, 23, -12194)
        VectorMon = CFrame.new(231, 23, -12194)
    
        CFrameQuest = CFrame.new(231, 23, -12194)
        VectorQuest = Vector3.new(231, 23, -12194)
    elseif MyLevel == 2325 or MyLevel <= 2349 then
        LevelFarm = 35
    
        Name = "Chocolate Bar Battler"
        QuestName = "ChocQuest1"
    
        LevelQuest = 2
        NameMon = "Chocolate Bar Battler"
    
        CFrameMon = CFrame.new(231, 23, -12194)
        VectorMon = CFrame.new(231, 23, -12194)
    
        CFrameQuest = CFrame.new(231, 23, -12194)
        VectorQuest = Vector3.new(231, 23, -12194)
    elseif MyLevel == 2350 or MyLevel <= 2374 then
        LevelFarm = 36
    
        Name = "Sweet Thief"
        QuestName = "ChocQuest2"
    
        LevelQuest = 1
        NameMon = "Sweet Thief"
    
        CFrameMon = CFrame.new(71, 77, -12632)
        VectorMon = CFrame.new(71, 77, -12632)
    
        CFrameQuest = CFrame.new(151, 23, -12774)
        VectorQuest = Vector3.new(151, 23, -12774)
    elseif MyLevel == 2375 or MyLevel <= 2399 then
        LevelFarm = 37
    
        Name = "Candy Rebel"
        QuestName = "ChocQuest2"
    
        LevelQuest = 2
        NameMon = "Candy Rebel"
    
        CFrameMon = CFrame.new(134, 77, -12882)
        VectorMon = CFrame.new(134, 77, -12882)
    
        CFrameQuest = CFrame.new(151, 23, -12774)
        VectorQuest = Vector3.new(151, 23, -12774)
    elseif MyLevel == 2400 or MyLevel <= 2424 then
        LevelFarm = 39
    
        Name = "Candy Pirate"
        QuestName = "CandyQuest1"
    
        LevelQuest = 1
        NameMon = "Candy Pirates"
    
        CFrameMon = CFrame.new(-1358.691650390625, 162.7437286376953, -14389.7919921875)
        VectorMon = CFrame.new(-1358.691650390625, 162.7437286376953, -14389.7919921875)
    
        CFrameQuest = CFrame.new(-1146.59741, 14.1330338, -14445.6426, 0.142417297, 4.85419136e-08, 0.989806712,
            4.3708237e-08, 1, -5.53307267e-08, -0.989806712, 5.11427594e-08, 0.142417297)
        VectorQuest = Vector3.new(-1146.59741, 14.1330338, -14445.6426, 0.142417297, 4.85419136e-08, 0.989806712,
            4.3708237e-08, 1, -5.53307267e-08, -0.989806712, 5.11427594e-08, 0.142417297)
    elseif MyLevel == 2425 or MyLevel <= 2449 then
        LevelFarm = 40
    
        Name = "Snow Demon"
        QuestName = "CandyQuest1"
    
        LevelQuest = 2
        NameMon = "Snow Demons"
    
        CFrameMon = CFrame.new(-940.4050903320312, 60.94138717651367, -14554.1630859375)
        VectorMon = CFrame.new(-940.4050903320312, 60.94138717651367, -14554.1630859375)
    
        CFrameQuest = CFrame.new(-1146.59741, 14.1330338, -14445.6426, 0.142417297, 4.85419136e-08, 0.989806712,
            4.3708237e-08, 1, -5.53307267e-08, -0.989806712, 5.11427594e-08, 0.142417297)
        VectorQuest = Vector3.new(-1146.59741, 14.1330338, -14445.6426, 0.142417297, 4.85419136e-08, 0.989806712,
            4.3708237e-08, 1, -5.53307267e-08, -0.989806712, 5.11427594e-08, 0.142417297)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            LevelFarm = 42
    
            Name = "Isle Outlaw"
            QuestName = "TikiQuest1"
    
            LevelQuest = 1
            NameMon = "Isle Outlaw"
    
            CFrameMon = CFrame.new(-16299.3252, 94.0675659, -172.353226, 0.99993372, 1.59262612e-08, -0.0115144337, -1.50289505e-08, 1, 7.80157237e-08, 0.0115144337, -7.78375053e-08, 0.99993372)
            VectorMon = CFrame.new(-16299.3252, 94.0675659, -172.353226, 0.99993372, 1.59262612e-08, -0.0115144337, -1.50289505e-08, 1, 7.80157237e-08, 0.0115144337, -7.78375053e-08, 0.99993372)
    
            CFrameQuest = CFrame.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
            VectorQuest = Vector3.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
        elseif MyLevel == 2475 or MyLevel <= 2500 then
            LevelFarm = 43
    
            Name = "Island Boy"
            QuestName = "TikiQuest1"
    
            LevelQuest = 2
            NameMon = "Island Boy"
    
            CFrameMon = CFrame.new(-16853.3887, 192.103561, -152.378189, 0.705479085, -8.49727329e-08, 0.708730757, 5.86954414e-08, 1, 6.14680928e-08, -0.708730757, -1.76518711e-09, 0.705479085)
            VectorMon = CFrame.new(-16853.3887, 192.103561, -152.378189, 0.705479085, -8.49727329e-08, 0.708730757, 5.86954414e-08, 1, 6.14680928e-08, -0.708730757, -1.76518711e-09, 0.705479085)
    
            CFrameQuest = CFrame.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
            VectorQuest = Vector3.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            LevelFarm = 44
    
            Name = "Sun-kissed Warrior"
            QuestName = "TikiQuest2"
    
            LevelQuest = 1
            NameMon = "Warrior"
    
            CFrameMon = CFrame.new(-16273.3027, 49.6616859, 1049.43701, -0.906199515, -4.19694537e-08, 0.422850341, -3.66385891e-08, 1, 2.07344755e-08, -0.422850341, 3.29693228e-09, -0.906199515)
            VectorMon = CFrame.new(-16273.3027, 49.6616859, 1049.43701, -0.906199515, -4.19694537e-08, 0.422850341, -3.66385891e-08, 1, 2.07344755e-08, -0.422850341, 3.29693228e-09, -0.906199515)
    
            CFrameQuest = CFrame.new(-16539.1426, 55.6605415, 1050.85059, -0.152818754, 1.09818366e-07, 0.988254249, 3.35132171e-08, 1, -1.05941282e-07, -0.988254249, 1.6929766e-08, -0.152818754)
            VectorQuest = Vector3.new(-16539.1426, 55.6605415, 1050.85059, -0.152818754, 1.09818366e-07, 0.988254249, 3.35132171e-08, 1, -1.05941282e-07, -0.988254249, 1.6929766e-08, -0.152818754)
        elseif MyLevel == 2525 or MyLevel <= 2600 then
            LevelFarm = 45
    
            Name = "Isle Champion"
            QuestName = "TikiQuest2"
    
            LevelQuest = 2
            NameMon = "Isle Champion"
    
            CFrameMon = CFrame.new(-16780.4238, 82.1132126, 1033.55408, -0.962516546, 1.58372231e-08, 0.271222919, -1.30016424e-08, 1, -1.04532162e-07, -0.271222919, -1.04140284e-07, -0.962516546)
            VectorMon = CFrame.new(-16780.4238, 82.1132126, 1033.55408, -0.962516546, 1.58372231e-08, 0.271222919, -1.30016424e-08, 1, -1.04532162e-07, -0.271222919, -1.04140284e-07, -0.962516546)
    
            CFrameQuest = CFrame.new(-16539.1426, 55.6605415, 1050.85059, -0.152818754, 1.09818366e-07, 0.988254249, 3.35132171e-08, 1, -1.05941282e-07, -0.988254249, 1.6929766e-08, -0.152818754)
            VectorQuest = Vector3.new(-16539.1426, 55.6605415, 1050.85059, -0.152818754, 1.09818366e-07, 0.988254249, 3.35132171e-08, 1, -1.05941282e-07, -0.988254249, 1.6929766e-08, -0.152818754)
    end
    end
    end
    
    function CheckOldQuest(LevelFarm)
    if World1 then
    if LevelFarm == 1 then -- Bandit
        Name = "Bandit"
        QuestName = "BanditQuest1"
    
        LevelQuest = 1
        NameMon = "Bandit"
    
        CFrameMon = CFrame.new(1145, 17, 1634)
        VectorMon = Vector3.new(1145, 17, 1634)
    
        CFrameQuest = CFrame.new(1060, 17, 1547)
        VectorQuest = Vector3.new(1060, 17, 1547)
    elseif LevelFarm == 3 then -- Monkey
        Name = "Monkey"
        QuestName = "JungleQuest"
    
        LevelQuest = 1
        NameMon = "Monkey"
    
        CFrameMon = CFrame.new(-1496, 39, 35)
        VectorMon = Vector3.new(-1496, 39, 35)
    
        CFrameQuest = CFrame.new(-1602, 37, 152)
        VectorQuest = Vector3.new(-1602, 37, 152)
    elseif LevelFarm == 4 then -- Gorilla
        Name = "Gorilla"
        QuestName = "JungleQuest"
    
        LevelQuest = 2
        NameMon = "Gorilla"
    
        CFrameMon = CFrame.new(-1237, 6, -486)
        VectorMon = Vector3.new(-1237, 7, -486)
    
        CFrameQuest = CFrame.new(-1602, 37, 152)
        VectorQuest = Vector3.new(-1602, 37, 152)
    elseif LevelFarm == 6 then -- Pirate
        Name = "Pirate"
        QuestName = "BuggyQuest1"
    
        LevelQuest = 1
        NameMon = "Pirate"
    
        CFrameMon = CFrame.new(-1115, 14, 3938)
        VectorMon = Vector3.new(-1115, 14, 3938)
    
        CFrameQuest = CFrame.new(-1140, 5, 3828)
        VectorQuest = Vetor3.new(-1140, 5, 3828)
    elseif LevelFarm == 9 then -- Desert Bandit
        Name = "Desert Bandit"
        QuestName = "DesertQuest"
    
        LevelQuest = 1
        NameMon = "Desert Bandit"
    
        CFrameMon = CFrame.new(932, 7, 4484)
        VectorMon = Vector3.new(932, 7, 4484)
    
        CFrameQuest = CFrame.new(897, 7, 4388)
        VectorQuest = Vector3.new(897, 7, 4388)
    elseif LevelFarm == 10 then -- Desert Officre
        Name = "Desert Officer"
        QuestName = "DesertQuest"
    
        LevelQuest = 2
        NameMon = "Desert Officer"
    
        CFrameMon = CFrame.new(1572, 10, 4373)
        VectorMon = Vector3.new(1572, 10, 4373)
    
        CFrameQuest = CFrame.new(897, 7, 4388)
        VectorQuest = Vector3.new(897, 7, 4388)
    elseif LevelFarm == 12 then -- Snow Bandits
        Name = "Snow Bandit"
        QuestName = "SnowQuest"
    
        LevelQuest = 1
        NameMon = "Snow Bandits"
    
        CFrameMon = CFrame.new(1289, 150, -1442)
        VectorMon = Vector3.new(1289, 106, -1442)
    
        CFrameQuest = CFrame.new(1386, 87, -1297)
        VectorQuest = Vector3.new(1386, 87, -1297)
    elseif LevelFarm == 13 then -- Snowman
        Name = "Snowman"
        QuestName = "SnowQuest"
    
        LevelQuest = 2
        NameMon = "Snowman"
    
        CFrameMon = CFrame.new(1289, 150, -1442)
        VectorMon = Vector3.new(1289, 106, -1442)
    
        CFrameQuest = CFrame.new(1386, 87, -1297)
        VectorQuest = Vector3.new(1386, 87, -1297)
    elseif LevelFarm == 15 then -- Chief Petty Officer
        Name = "Chief Petty Officer"
        QuestName = "MarineQuest2"
    
        LevelQuest = 1
        NameMon = "Chief Petty Officer"
    
        CFrameMon = CFrame.new(-4855, 23, 4308)
        VectorMon = Vector3.new(-4855, 23, 4308)
    
        CFrameQuest = CFrame.new(-5036, 29, 4325)
        VectorQuest = Vector3.new(-5036, 29, 4325)
    elseif LevelFarm == 17 then -- Sky Bandit
        Name = "Sky Bandit"
        QuestName = "SkyQuest"
    
        LevelQuest = 1
        NameMon = "Sky Bandit"
    
        CFrameMon = CFrame.new(-4981, 278, -2830)
        VectorMon = Vector3.new(-4981, 278, -2830)
    
        CFrameQuest = CFrame.new(-4842, 718, -2623)
        VectorQuest = Vector3.new(-4842, 718, -2623)
    elseif LevelFarm == 18 then -- Dark Master
        Name = "Dark Master"
        QuestName = "SkyQuest"
    
        LevelQuest = 2
        NameMon = "Dark Master"
    
        CFrameMon = CFrame.new(-5250, 389, -2272)
        VectorMon = Vector3.new(-5250, 389, -2272)
    
        CFrameQuest = CFrame.new(-4842, 718, -2623)
        VectorQuest = Vector3.new(-4842, 718, -2623)
    elseif LevelFarm == 20 then -- Dark Master
        Name = "Prisoner"
        QuestName = "PrisonerQuest"
    
        LevelQuest = 1
        NameMon = "Prisoner"
    
        CFrameMon = CFrame.new(5411, 96, 690)
        VectorMon = Vector3.new(5411, 96, 690)
    
        CFrameQuest = CFrame.new(5308, 2, 474)
        VectorQuest = Vector3.new(5308, 2, 474)
    elseif LevelFarm == 21 then -- Dark Master
        Name = "Dangerous Prisoner"
        QuestName = "PrisonerQuest"
    
        LevelQuest = 2
        NameMon = "Dangerous Prisoner"
    
        CFrameMon = CFrame.new(5411, 96, 690)
        VectorMon = Vector3.new(5411, 96, 690)
    
        CFrameQuest = CFrame.new(5308, 2, 474)
        VectorQuest = Vector3.new(5308, 2, 474)
    elseif LevelFarm == 23 then -- Toga Warrior
        Name = "Toga Warrior"
        QuestName = "ColosseumQuest"
    
        LevelQuest = 1
        NameMon = "Toga Warrior"
    
        CFrameMon = CFrame.new(-1770, 8, -2777)
        VectorMon = Vector3.new(-1770, 8, -2777)
    
        CFrameQuest = CFrame.new(-1576, 8, -2985)
        VectorQuest = Vector3.new(-1576, 8, -2985)
    elseif LevelFarm == 25 then -- Military Soldier
        Name = "Military Soldier"
        QuestName = "MagmaQuest"
    
        LevelQuest = 1
        NameMon = "Military Soldier"
    
        CFrameMon = CFrame.new(-5555.064453125, 16.73392105102539, 8377.623046875)
        VectorMon = Vector3.new(-5555.064453125, 16.73392105102539, 8377.623046875)
    
        CFrameQuest = CFrame.new(-5316, 12, 8517)
        VectorQuest = Vector3.new(-5316, 12, 8517)
    elseif LevelFarm == 26 then -- Military Spy
        Name = "Military Spy"
        QuestName = "MagmaQuest"
    
        LevelQuest = 2
        NameMon = "Military Spy"
    
        CFrameMon = CFrame.new(-5806.056640625, 99.96672058105469, 8777.8447265625)
        VectorMon = Vector3.new(-5806.056640625, 99.96672058105469, 8777.8447265625)
    
        CFrameQuest = CFrame.new(-5316, 12, 8517)
        VectorQuest = Vector3.new(-5316, 12, 8517)
    elseif LevelFarm == 28 then -- Fishman Warrior
        Name = "Fishman Warrior"
        QuestName = "FishmanQuest"
    
        LevelQuest = 1
        NameMon = "Fishman Warrior"
    
        CFrameMon = CFrame.new(60859, 19, 1501)
        VectorMon = Vector3.new(60859, 19, 1501)
    
        CFrameQuest = CFrame.new(61123, 19, 1569)
        VectorQuest = Vector3.new(61123, 19, 1569)
    elseif LevelFarm == 29 then -- Fishman Commando
        Name = "Fishman Commando"
        QuestName = "FishmanQuest"
    
        LevelQuest = 2
        NameMon = "Fishman Commando"
    
        CFrameMon = CFrame.new(61891, 19, 1470)
        VectorMon = Vector3.new(61891, 19, 1470)
    
        CFrameQuest = CFrame.new(61123, 19, 1569)
        VectorQuest = Vector3.new(61123, 19, 1569)
    elseif LevelFarm == 31 then -- God's Guards
        Name = "God's Guard"
        QuestName = "SkyExp1Quest"
    
        LevelQuest = 1
        NameMon = "God's Guards"
    
        CFrameMon = CFrame.new(-4698, 845, -1912)
        VectorMon = Vector3.new(-4698, 845, -1912)
    
        CFrameQuest = CFrame.new(-4722, 845, -1954)
        VectorQuest = Vector3.new(-4722, 846, -1954)
    elseif LevelFarm == 33 then -- Shandas
        Name = "Shanda"
        QuestName = "SkyExp1Quest"
    
        LevelQuest = 2
        NameMon = "Shandas"
    
        CFrameMon = CFrame.new(-7685, 5567, -502)
        VectorMon = Vector3.new(-7685, 5567, -502)
    
        CFrameQuest = CFrame.new(-7862, 5546, -380)
        VectorQuest = Vector3.new(-7862, 5546, -380)
    elseif LevelFarm == 34 then -- Royal Squad
        Name = "Royal Squad"
        QuestName = "SkyExp2Quest"
    
        LevelQuest = 1
        NameMon = "Royal Squad"
    
        CFrameMon = CFrame.new(-7670, 5607, -1460)
        VectorMon = Vector3.new(-7670, 5607, -1460)
    
        CFrameQuest = CFrame.new(-7904, 5636, -1412)
        VectorQuest = Vector3.new(-7904, 5636, -1412)
    elseif LevelFarm == 35 then -- Royal Soldier
        Name = "Royal Soldier"
        QuestName = "SkyExp2Quest"
    
        LevelQuest = 2
        NameMon = "Royal Soldier"
    
        CFrameMon = CFrame.new(-7828, 5607, -1744)
        VectorMon = Vector3.new(-7828, 5607, -1744)
    
        CFrameQuest = CFrame.new(-7904, 5636, -1412)
        VectorQuest = Vector3.new(-7904, 5636, -1412)
    elseif LevelFarm == 37 then -- Galley Pirate
        Name = "Galley Pirate"
        QuestName = "FountainQuest"
    
        LevelQuest = 1
        NameMon = "Galley Pirate"
    
        CFrameMon = CFrame.new(5589, 45, 3996)
        VectorMon = Vector3.new(5589, 45, 3996)
    
        CFrameQuest = CFrame.new(5256, 39, 4050)
        VectorQuest = Vector3.new(5256, 39, 4050)
    elseif LevelFarm == 38 then -- Galley Captain
        Name = "Galley Captain"
        QuestName = "FountainQuest"
    
        LevelQuest = 2
        NameMon = "Galley Captain"
    
        CFrameMon = CFrame.new(5649, 39, 4936)
        VectorMon = Vector3.new(5649, 39, 4936)
    
        CFrameQuest = CFrame.new(5256, 39, 4050)
        VectorQuest = Vector3.new(5256, 39, 4050)
    end
    end
    if World2 then
    if LevelFarm == 1 then -- Raider [Lv. 700]
        Name = "Raider"
        QuestName = "Area1Quest"
    
        LevelQuest = 1
        NameMon = "Raider"
    
        CFrameQuest = CFrame.new(-425, 73, 1837)
        VectorQuest = Vector3.new(-425, 73, 1837)
    
        CFrameMon = CFrame.new(-746, 39, 2390)
        VectorMon = Vector3.new(-746, 39, 2389)
    elseif LevelFarm == 2 then -- Mercenary [Lv. 725]
        Name = "Mercenary"
        QuestName = "Area1Quest"
    
        LevelQuest = 2
        NameMon = "Mercenary"
    
        CFrameQuest = CFrame.new(-425, 73, 1837)
        VectorQuest = Vector3.new(-425, 73, 1837)
    
        CFrameMon = CFrame.new(-874, 141, 1312)
        VectorMon = Vector3.new(-874, 141, 1312)
    elseif LevelFarm == 3 then -- Swan Pirate [Lv. 775]
        Name = "Swan Pirate"
        QuestName = "Area2Quest"
    
        LevelQuest = 1
        NameMon = "Swan Pirate"
    
        CFrameQuest = CFrame.new(634, 73, 918)
        VectorQuest = Vector3.new(634, 73, 918)
    
        CFrameMon = CFrame.new(878, 122, 1235)
        VectorMon = Vector3.new(878, 122, 1235)
    elseif LevelFarm == 4 then -- Factory Staff [Lv. 800]
        Name = "Factory Staff"
        QuestName = "Area2Quest"
    
        LevelQuest = 2
        NameMon = "Factory Staff"
    
        CFrameQuest = CFrame.new(634, 73, 918)
        VectorQuest = Vector3.new(634, 73, 918)
    
        CFrameMon = CFrame.new(295, 73, -56)
        VectorMon = Vector3.new(295, 73, -56)
    elseif LevelFarm == 6 then -- Marine Lieutenant [Lv. 875]
        Name = "Marine Lieutenant"
        QuestName = "MarineQuest3"
    
        LevelQuest = 1
        NameMon = "Marine Lieutenant"
    
        CFrameMon = CFrame.new(-2806, 73, -3038)
        VectorMon = Vector3.new(-2806, 73, -3038)
    
        CFrameQuest = CFrame.new(-2443, 73, -3219)
        VectorQuest = Vector3.new(-2443, 73, -3219)
    elseif LevelFarm == 7 then -- Marine Captain [Lv. 900]
        Name = "Marine Captain"
        QuestName = "MarineQuest3"
    
        LevelQuest = 2
        NameMon = "Marine Captain"
    
        CFrameMon = CFrame.new(-1869, 73, -3320)
        VectorMon = Vector3.new(-1869, 73, -3320)
    
        CFrameQuest = CFrame.new(-2443, 73, -3219)
        VectorQuest = Vector3.new(-2443, 73, -3219)
    elseif LevelFarm == 9 then -- Zombie [Lv. 950]
        Name = "Zombie"
        QuestName = "ZombieQuest"
    
        LevelQuest = 1
        NameMon = "Zombie"
    
        CFrameMon = CFrame.new(-5736, 126, -728)
        VectorMon = Vector3.new(-5736, 126, -728)
    
        CFrameQuest = CFrame.new(-5494, 49, -795)
        VectorQuest = Vector3.new(-5494, 49, -794)
    elseif LevelFarm == 10 then -- Vampire [Lv. 975]
        Name = "Vampire"
        QuestName = "ZombieQuest"
    
        LevelQuest = 2
        NameMon = "Vampire"
    
        CFrameMon = CFrame.new(-6033, 7, -1317)
        VectorMon = Vector3.new(-6033, 7, -1317)
    
        CFrameQuest = CFrame.new(-5494, 49, -795)
        VectorQuest = Vector3.new(-5494, 49, -795)
    elseif LevelFarm == 12 then -- Snow Trooper [Lv. 1000] **
        Name = "Snow Trooper"
        QuestName = "SnowMountainQuest"
    
        LevelQuest = 1
        NameMon = "Snow Trooper"
    
        CFrameMon = CFrame.new(478, 402, -5362)
        VectorMon = Vector3.new(478, 402, -5362)
    
        CFrameQuest = CFrame.new(605, 402, -5371)
        VectorQuest = Vector3.new(605, 402, -5371)
    elseif LevelFarm == 13 then -- Winter Warrior [Lv. 1050]
        Name = "Winter Warrior"
        QuestName = "SnowMountainQuest"
    
        LevelQuest = 2
        NameMon = "Winter Warrior"
    
        CFrameMon = CFrame.new(1157, 430, -5188)
        VectorMon = Vector3.new(1157, 430, -5188)
    
        CFrameQuest = CFrame.new(605, 402, -5371)
        VectorQuest = Vector3.new(605, 402, -5371)
    elseif LevelFarm == 16 then -- Lab Subordinate [Lv. 1100]
        Name = "Lab Subordinate"
        QuestName = "IceSideQuest"
    
        LevelQuest = 1
        NameMon = "Lab Subordinate"
    
        CFrameMon = CFrame.new(-5782, 42, -4484)
        VectorMon = Vector3.new(-5782, 42, -4484)
    
        CFrameQuest = CFrame.new(-6060, 16, -4905)
        VectorQuest = Vector3.new(-6060, 16, -4905)
    elseif LevelFarm == 17 then -- Horned Warrior [Lv. 1125]
        Name = "Horned Warrior"
        QuestName = "IceSideQuest"
    
        LevelQuest = 2
        NameMon = "Horned Warrior"
    
        CFrameMon = CFrame.new(-6406, 24, -5805)
        VectorMon = Vector3.new(-6406, 24, -5805)
    
        CFrameQuest = CFrame.new(-6060, 16, -4905)
        VectorQuest = Vector3.new(-6060, 16, -4905)
    elseif LevelFarm == 18 then -- Magma Ninja [Lv. 1175]
        Name = "Magma Ninja"
        QuestName = "FireSideQuest"
        LevelQuest = 1
        NameMon = "Magma Ninja"
    
        CFrameMon = CFrame.new(-5428, 78, -5959)
        VectorMon = Vector3.new(-5428, 78, -5959)
    
        CFrameQuest = CFrame.new(-5430, 16, -5295)
        VectorQuest = Vector3.new(-5430, 16, -5296)
    elseif LevelFarm == 19 then -- Lava Pirate [Lv. 1200]
        Name = "Lava Pirate"
        QuestName = "FireSideQuest"
    
        LevelQuest = 2
        NameMon = "Lava Pirate"
    
        CFrameMon = CFrame.new(-5270, 42, -4800)
        VectorMon = Vector3.new(-5270, 42, -4800)
    
        CFrameQuest = CFrame.new(-5430, 16, -5295)
        VectorQuest = Vector3.new(-5430, 16, -5296)
    elseif LevelFarm == 21 then -- Ship Deckhand [Lv. 1250]
        Name = "Ship Deckhand"
        QuestName = "ShipQuest1"
    
        LevelQuest = 1
        NameMon = "Ship Deckhand"
    
        CFrameMon = CFrame.new(1198, 126, 33031)
        VectorMon = Vector3.new(1198, 126, 33031)
    
        CFrameQuest = CFrame.new(1038, 125, 32913)
        VectorQuest = Vector3.new(1038, 125, 32913)
    elseif LevelFarm == 22 then -- Ship Engineer [Lv. 1275]
        Name = "Ship Engineer"
        QuestName = "ShipQuest1"
    
        LevelQuest = 2
        NameMon = "Ship Engineer"
    
        CFrameMon = CFrame.new(918, 44, 32787)
        VectorMon = Vector3.new(918, 44, 32787)
    
        CFrameQuest = CFrame.new(1038, 125, 32913)
        VectorQuest = Vector3.new(1038, 125, 32913)
    elseif LevelFarm == 23 then -- Ship Steward [Lv. 1300]
        Name = "Ship Steward"
        QuestName = "ShipQuest2"
    
        LevelQuest = 1
        NameMon = "Ship Steward"
    
        CFrameMon = CFrame.new(915, 130, 33419)
        VectorMon = Vector3.new(915, 130, 33419)
    
        CFrameQuest = CFrame.new(969, 125, 33245)
        VectorQuest = Vector3.new(969, 125, 33245)
    elseif LevelFarm == 24 then -- Ship Officer [Lv. 1325]
        Name = "Ship Officer"
        QuestName = "ShipQuest2"
    
        LevelQuest = 2
        NameMon = "Ship Officer"
    
        CFrameMon = CFrame.new(916, 181, 33335)
        VectorMon = Vector3.new(916, 181, 33335)
    
        CFrameQuest = CFrame.new(969, 125, 33245)
        VectorQuest = Vector3.new(969, 125, 33245)
    elseif LevelFarm == 26 then -- Arctic Warrior [Lv. 1350]
        Name = "Arctic Warrior"
        QuestName = "FrostQuest"
    
        LevelQuest = 1
        NameMon = "Arctic Warrior"
    
        CFrameMon = CFrame.new(6038, 29, -6231)
        VectorMon = Vector3.new(6038, 29, -6231)
    
        VectorQuest = Vector3.new(5669, 28, -6482)
        CFrameQuest = CFrame.new(5669, 28, -6482)
    elseif LevelFarm == 27 then -- Snow Lurker [Lv. 1375]
        Name = "Snow Lurker"
        QuestName = "FrostQuest"
    
        LevelQuest = 2
        NameMon = "Snow Lurker"
    
        CFrameMon = CFrame.new(5560, 42, -6826)
        VectorMon = Vector3.new(5560, 42, -6826)
    
        VectorQuest = Vector3.new(5669, 28, -6482)
        CFrameQuest = CFrame.new(5669, 28, -6482)
    elseif LevelFarm == 29 then -- Sea Soldier [Lv. 1425]
        Name = "Sea Soldier"
        QuestName = "ForgottenQuest"
    
        LevelQuest = 1
        NameMon = "Sea Soldier"
    
        CFrameMon = CFrame.new(-3022, 16, -9722)
        VectorMon = Vector3.new(-3022, 16, -9722)
    
        CFrameQuest = CFrame.new(-3054, 237, -10148)
        VectorQuest = Vector3.new(-3054, 237, -10148)
    elseif LevelFarm == 30 then -- Water Fighter [Lv. 1450]
        Name = "Water Fighter"
        QuestName = "ForgottenQuest"
    
        LevelQuest = 2
        NameMon = "Water Fighter"
    
        CFrameMon = CFrame.new(-3385, 239, -10542)
        VectorMon = Vector3.new(-3385, 239, -10542)
    
        CFrameQuest = CFrame.new(-3054, 237, -10148)
        VectorQuest = Vector3.new(-3054, 237, -10148)
    end
    end
    if World3 then
    if LevelFarm == 1 then
        Name = "Pirate Millionaire"
        QuestName = "PiratePortQuest"
    
        LevelQuest = 1
        NameMon = "Pirate"
    
        CFrameMon = CFrame.new(-373, 75, 5550)
        VectorMon = Vector3.new(-373, 75, 5550)
    
        CFrameQuest = CFrame.new(-288, 44, 5576)
        VectorQuest = Vector3.new(-288, 44, 5576)
    elseif LevelFarm == 2 then
        Name = "Pistol Billionaire"
        QuestName = "PiratePortQuest"
    
        LevelQuest = 2
        NameMon = "Pistol"
    
        CFrameMon = CFrame.new(-469, 74, 5904)
        VectorMon = Vector3.new(-469, 74, 5904)
    
        CFrameQuest = CFrame.new(-288, 44, 5576)
        VectorQuest = Vector3.new(-288, 44, 5576)
    elseif LevelFarm == 4 then
        Name = "Dragon Crew Warrior"
        QuestName = "AmazonQuest"
    
        LevelQuest = 1
        NameMon = "Warrior"
    
        CFrameMon = CFrame.new(6339, 52, -1213)
        VectorMon = Vector3.new(6338, 52, -1213)
    
        CFrameQuest = CFrame.new(5835, 52, -1105)
        VectorQuest = Vector3.new(5835, 52, -1105)
    elseif LevelFarm == 5 then
        Name = "Dragon Crew Archer"
        QuestName = "AmazonQuest"
    
        LevelQuest = 2
        NameMon = "Archer"
    
        CFrameMon = CFrame.new(6594, 383, 139)
        VectorMon = Vector3.new(6594, 383, 139)
    
        CFrameQuest = CFrame.new(5835, 52, -1105)
        VectorQuest = Vector3.new(5835, 52, -1105)
    elseif LevelFarm == 6 then
        Name = "Female Islander"
        QuestName = "AmazonQuest2"
    
        LevelQuest = 1
        NameMon = "Female"
    
        CFrameMon = CFrame.new(5308, 819, 1047)
        VectorMon = Vector3.new(5308, 819, 1047)
    
        CFrameQuest = CFrame.new(5443, 602, 751)
        VectorQuest = Vector3.new(5443, 602, 751)
    elseif LevelFarm == 7 then
        Name = "Giant Islander"
        QuestName = "AmazonQuest2"
    
        LevelQuest = 2
        NameMon = "Giant Islanders"
    
        CFrameMon = CFrame.new(4951, 602, -68)
        VectorMon = Vector3.new(4951, 602, -68)
    
        CFrameQuest = CFrame.new(5443, 602, 751)
        VectorQuest = Vector3.new(5443, 602, 751)
    elseif LevelFarm == 9 then
        Name = "Marine Commodore"
        QuestName = "MarineTreeIsland"
    
        LevelQuest = 1
        NameMon = "Marine Commodore"
    
        CFrameMon = CFrame.new(2447, 73, -7470)
        VectorMon = Vector3.new(2447, 73, -7470)
    
        CFrameQuest = CFrame.new(2180, 29, -6737)
        VectorQuest = Vector3.new(2180, 29, -6737)
    elseif LevelFarm == 10 then
        Name = "Marine Rear Admiral"
        QuestName = "MarineTreeIsland"
    
        LevelQuest = 2
        NameMon = "Marine Rear Admiral"
    
        CFrameMon = CFrame.new(3671, 161, -6932)
        VectorMon = Vector3.new(3671, 161, -6932)
    
        CFrameQuest = CFrame.new(2180, 29, -6737)
        VectorQuest = Vector3.new(2180, 29, -6737)
    elseif LevelFarm == 12 then
        Name = "Fishman Raider"
        QuestName = "DeepForestIsland3"
    
        LevelQuest = 1
        NameMon = "Fishman Raider"
    
        CFrameMon = CFrame.new(-10560, 332, -8466)
        VectorMon = Vector3.new(-10560, 332, -8466)
    
        CFrameQuest = CFrame.new(-10584, 332, -8758)
        VectorQuest = Vector3.new(-10584, 332, -8758)
    elseif LevelFarm == 13 then
        Name = "Fishman Captain"
        QuestName = "DeepForestIsland3"
    
        LevelQuest = 2
        NameMon = "Fishman Captain"
    
        CFrameMon = CFrame.new(-10993, 332, -8940)
        VectorMon = Vector3.new(-10993, 332, -8940)
    
        CFrameQuest = CFrame.new(-10584, 332, -8758)
        VectorQuest = Vector3.new(-10584, 332, -8758)
    elseif LevelFarm == 14 then
        Name = "Forest Pirate"
        QuestName = "DeepForestIsland"
    
        LevelQuest = 1
        NameMon = "Forest Pirate"
    
        CFrameMon = CFrame.new(-13479, 333, -7905)
        VectorMon = Vector3.new(-13479, 333, -7905)
    
        CFrameQuest = CFrame.new(-13232, 333, -7627)
        VectorQuest = Vector3.new(-13232, 333, -7627)
    elseif LevelFarm == 15 then
        Name = "Mythological Pirate"
        QuestName = "DeepForestIsland"
    
        LevelQuest = 2
        NameMon = "Mythological Pirate"
    
        CFrameMon = CFrame.new(-13545, 470, -6917)
        VectorMon = Vector3.new(-13545, 470, -6917)
    
        CFrameQuest = CFrame.new(-13232, 333, -7627)
        VectorQuest = Vector3.new(-13232, 333, -7627)
    elseif LevelFarm == 16 then
        Name = "Jungle Pirate"
        QuestName = "DeepForestIsland2"
    
        LevelQuest = 1
        NameMon = "Jungle Pirate"
    
        CFrameMon = CFrame.new(-12107, 332, -10549)
        VectorMon = Vector3.new(-12106, 332, -10549)
    
        CFrameQuest = CFrame.new(-12684, 391, -9902)
        VectorQuest = Vector3.new(-12684, 391, -9902)
    elseif LevelFarm == 17 then
        Name = "Musketeer Pirate"
        QuestName = "DeepForestIsland2"
    
        LevelQuest = 2
        NameMon = "Musketeer Pirate"
    
        CFrameMon = CFrame.new(-13286, 392, -9769)
        VectorMon = Vector3.new(-13286, 392, -9768)
    
        CFrameQuest = CFrame.new(-12684, 391, -9902)
        VectorQuest = Vector3.new(-12684, 391, -9902)
    elseif LevelFarm == 19 then
        Name = "Reborn Skeleton"
        QuestName = "HauntedQuest1"
    
        LevelQuest = 1
        NameMon = "Reborn Skeleton"
    
        CFrameMon = CFrame.new(-8760, 142, 6039)
        VectorMon = Vector3.new(-8760, 142, 6039)
    
        CFrameQuest = CFrame.new(-9482, 142, 5567)
        VectorQuest = Vector3.new(-9482, 142, 5567)
    elseif LevelFarm == 20 then
        Name = "Living Zombie"
        QuestName = "HauntedQuest1"
    
        LevelQuest = 2
        NameMon = "Living Zombie"
    
        CFrameMon = CFrame.new(-10144, 140, 5932)
        VectorMon = Vector3.new(-10144, 140, 5932)
    
        CFrameQuest = CFrame.new(-9482, 142, 5567)
        VectorQuest = Vector3.new(-9482, 142, 5567)
    elseif LevelFarm == 21 then
        Name = "Demonic Soul"
        QuestName = "HauntedQuest2"
    
        LevelQuest = 1
        NameMon = "Demonic Soul"
    
        CFrameMon = CFrame.new(-9507, 172, 6158)
        VectorMon = Vector3.new(-9506, 172, 6158)
    
        CFrameQuest = CFrame.new(-9513, 172, 6079)
        VectorQuest = Vector3.new(-9513, 172, 6079)
    elseif LevelFarm == 22 then
        Name = "Posessed Mummy"
        QuestName = "HauntedQuest2"
    
        LevelQuest = 2
        NameMon = "Posessed Mummy"
    
        CFrameMon = CFrame.new(-9577, 6, 6223)
        VectorMon = Vector3.new(-9577, 6, 6223)
    
        CFrameQuest = CFrame.new(-9513, 172, 6079)
        VectorQuest = Vector3.new(-9513, 172, 6079)
    elseif LevelFarm == 24 then
        Name = "Peanut Scout"
        QuestName = "NutsIslandQuest"
    
        LevelQuest = 1
        NameMon = "Peanut Scout"
    
        CFrameMon = CFrame.new(-2124, 123, -10435)
        VectorMon = Vector3.new(-2124, 123, -10435)
    
        CFrameQuest = CFrame.new(-2104, 38, -10192)
        VectorQuest = Vector3.new(-2104, 38, -10192)
    elseif LevelFarm == 25 then
        Name = "Peanut President"
        QuestName = "NutsIslandQuest"
    
        LevelQuest = 2
        NameMon = "Peanut President"
    
        CFrameMon = CFrame.new(-2124, 123, -10435)
        VectorMon = Vector3.new(-2124, 123, -10435)
    
        CFrameQuest = CFrame.new(-2104, 38, -10192)
        VectorQuest = Vector3.new(-2104, 38, -10192)
    elseif LevelFarm == 26 then
        Name = "Ice Cream Chef"
        QuestName = "IceCreamIslandQuest"
    
        LevelQuest = 1
        NameMon = "Ice Cream Chef"
    
        CFrameMon = CFrame.new(-641, 127, -11062)
        VectorMon = Vector3.new(-641, 127, -11062)
    
        CFrameQuest = CFrame.new(-822, 66, -10965)
        VectorQuest = Vector3.new(-822, 66, -10965)
    elseif LevelFarm == 27 then
        Name = "Ice Cream Commander"
        QuestName = "IceCreamIslandQuest"
    
        LevelQuest = 2
        NameMon = "Ice Cream Commander"
    
        CFrameMon = CFrame.new(-641, 127, -11062)
        VectorMon = Vector3.new(-641, 127, -11062)
    
        CFrameQuest = CFrame.new(-822, 66, -10965)
        VectorQuest = Vector3.new(-822, 66, -10965)
        ---------------------------------------------------------------
    elseif LevelFarm == 29 then
        Name = "Cookie Crafter"
        QuestName = "CakeQuest1"
    
        LevelQuest = 1
        NameMon = "Cookie Crafter"
    
        CFrameMon = CFrame.new(-2365, 38, -12099)
        VectorMon = Vector3.new(-2365, 38, -12099)
    
        CFrameQuest = CFrame.new(-2020, 38, -12025)
        VectorQuest = Vector3.new(-2020, 38, -12025)
    elseif LevelFarm == 30 then
        Name = "Cake Guard"
        QuestName = "CakeQuest1"
    
        LevelQuest = 2
        NameMon = "Cake Guard"
    
        CFrameMon = CFrame.new(-1651, 38, -12308)
        VectorMon = Vector3.new(-1651, 38, -12308)
    
        CFrameQuest = CFrame.new(-2020, 38, -12025)
        VectorQuest = Vector3.new(-2020, 38, -12025)
    elseif LevelFarm == 31 then
        Name = "Baking Staff"
        QuestName = "CakeQuest2"
    
        LevelQuest = 1
        NameMon = "Baking Staff"
    
        CFrameMon = CFrame.new(-1870, 38, -12938)
        VectorMon = Vector3.new(-1870, 38, -12938)
    
        CFrameQuest = CFrame.new(-1926, 38, -12850)
        VectorQuest = Vector3.new(-1926, 38, -12850)
    elseif LevelFarm == 32 then
        Name = "Head Baker"
        QuestName = "CakeQuest2"
    
        LevelQuest = 2
        NameMon = "Head Baker"
    
        CFrameMon = CFrame.new(-1926, 88, -12850)
        VectorMon = CFrame.new(-1870, 38, -12938)
    
        CFrameQuest = CFrame.new(-1926, 38, -12850)
        VectorQuest = Vector3.new(-1926, 38, -12850)
        ---------------------------------------------------------------
    elseif LevelFarm == 34 then
        Name = "Cocoa Warrior"
        QuestName = "ChocQuest1"
    
        LevelQuest = 1
        NameMon = "Cocoa Warrior"
    
        CFrameMon = CFrame.new(231, 23, -12194)
        VectorMon = CFrame.new(231, 23, -12194)
    
        CFrameQuest = CFrame.new(231, 23, -12194)
        VectorQuest = Vector3.new(231, 23, -12194)
    elseif LevelFarm == 35 then
        Name = "Chocolate Bar Battler"
        QuestName = "ChocQuest1"
    
        LevelQuest = 2
        NameMon = "Chocolate Bar Battler"
    
        CFrameMon = CFrame.new(231, 23, -12194)
        VectorMon = CFrame.new(231, 23, -12194)
    
        CFrameQuest = CFrame.new(231, 23, -12194)
        VectorQuest = Vector3.new(231, 23, -12194)
    elseif LevelFarm == 36 then
        Name = "Sweet Thief"
        QuestName = "ChocQuest2"
    
        LevelQuest = 1
        NameMon = "Sweet Thief"
    
        CFrameMon = CFrame.new(71, 77, -12632)
        VectorMon = CFrame.new(71, 77, -12632)
    
        CFrameQuest = CFrame.new(151, 23, -12774)
        VectorQuest = Vector3.new(151, 23, -12774)
    elseif LevelFarm == 37 then
        Name = "Candy Rebel"
        QuestName = "ChocQuest2"
    
        LevelQuest = 2
        NameMon = "Candy Rebel"
    
        CFrameMon = CFrame.new(134, 77, -12882)
        VectorMon = CFrame.new(134, 77, -12882)
    
        CFrameQuest = CFrame.new(151, 23, -12774)
        VectorQuest = Vector3.new(151, 23, -12774)
    elseif LevelFarm == 39 then
        Name = "Candy Pirate"
        QuestName = "CandyQuest1"
    
        LevelQuest = 1
        NameMon = "Candy Pirates"
    
        CFrameMon = CFrame.new(-1396.145751953125, 111.61504364013672, -14338.55078125)
        VectorMon = CFrame.new(-1396.145751953125, 111.61504364013672, -14338.55078125)
    
        CFrameQuest = CFrame.new(-1147.5802001953125, 14.133035659790039, -14445.3037109375)
        VectorQuest = Vector3.new(-1147.5802001953125, 14.133035659790039, -14445.3037109375)
    elseif LevelFarm == 40 then
        Name = "Snow Demon"
        QuestName = "CandyQuest1"
    
        LevelQuest = 2
        NameMon = "Snow Demons"
    
        CFrameMon = CFrame.new(-827.6851196289062, 88.83011627197266, -14275.3115234375)
        VectorMon = CFrame.new(-827.6851196289062, 88.83011627197266, -14275.3115234375)
    
        CFrameQuest = CFrame.new(-1147.5802001953125, 14.133035659790039, -14445.3037109375)
        VectorQuest = Vector3.new(-1147.5802001953125, 14.133035659790039, -14445.3037109375)
    
    elseif LevelFarm == 42 then
    
        Name = "Isle Outlaw"
        QuestName = "TikiQuest1"
    
        LevelQuest = 1
        NameMon = "Isle Outlaw"
    
        CFrameMon = CFrame.new(-16299.3252, 94.0675659, -172.353226, 0.99993372, 1.59262612e-08, -0.0115144337, -1.50289505e-08, 1, 7.80157237e-08, 0.0115144337, -7.78375053e-08, 0.99993372)
        VectorMon = CFrame.new(-16299.3252, 94.0675659, -172.353226, 0.99993372, 1.59262612e-08, -0.0115144337, -1.50289505e-08, 1, 7.80157237e-08, 0.0115144337, -7.78375053e-08, 0.99993372)
    
        CFrameQuest = CFrame.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
        VectorQuest = Vector3.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
    
    elseif LevelFarm == 43 then
    
        Name = "Island Boy"
        QuestName = "TikiQuest1"
    
        LevelQuest = 2
        NameMon = "Island Boy"
    
        CFrameMon = CFrame.new(-16853.3887, 192.103561, -152.378189, 0.705479085, -8.49727329e-08, 0.708730757, 5.86954414e-08, 1, 6.14680928e-08, -0.708730757, -1.76518711e-09, 0.705479085)
        VectorMon = CFrame.new(-16853.3887, 192.103561, -152.378189, 0.705479085, -8.49727329e-08, 0.708730757, 5.86954414e-08, 1, 6.14680928e-08, -0.708730757, -1.76518711e-09, 0.705479085)
    
        CFrameQuest = CFrame.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
        VectorQuest = Vector3.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
    
    elseif LevelFarm == 44 then
    
        Name = "Sun-kissed Warrior"
        QuestName = "TikiQuest2"
    
        LevelQuest = 1
        NameMon = "Warrior"
    
        CFrameMon = CFrame.new(-16202.3496, 75.2711868, 1096.79834, -0.996208549, 7.38022621e-08, -0.08699698, 7.80033815e-08, 1, -4.48908821e-08, 0.08699698, -5.1506742e-08, -0.996208549)
        VectorMon = CFrame.new(-16202.3496, 75.2711868, 1096.79834, -0.996208549, 7.38022621e-08, -0.08699698, 7.80033815e-08, 1, -4.48908821e-08, 0.08699698, -5.1506742e-08, -0.996208549)
    
        CFrameQuest = CFrame.new(-16780.2383, 82.1389999, 1033.18713, -0.906431854, 1.29724e-08, 0.422352165, 1.32806277e-09, 1, -2.7864429e-08, -0.422352165, -2.46962948e-08, -0.906431854)
        VectorQuest = Vector3.new(-16780.2383, 82.1389999, 1033.18713, -0.906431854, 1.29724e-08, 0.422352165, 1.32806277e-09, 1, -2.7864429e-08, -0.422352165, -2.46962948e-08, -0.906431854)
    
    elseif LevelFarm == 45 then
    
        Name = "Isle Champion"
        QuestName = "TikiQuest2"
    
        LevelQuest = 2
        NameMon = "Isle Champion"
    
        CFrameMon = CFrame.new(-16780.2383, 82.1389999, 1033.18713, -0.906431854, 1.29724e-08, 0.422352165, 1.32806277e-09, 1, -2.7864429e-08, -0.422352165, -2.46962948e-08, -0.906431854)
        VectorMon = CFrame.new(-16780.2383, 82.1389999, 1033.18713, -0.906431854, 1.29724e-08, 0.422352165, 1.32806277e-09, 1, -2.7864429e-08, -0.422352165, -2.46962948e-08, -0.906431854)
    
        CFrameQuest = CFrame.new(-16541.0215, 54.770813, 1051.46118, 0.0410757065, -0, -0.999156058, 0, 1, -0, 0.999156058, 0, 0.0410757065)
        VectorQuest = Vector3.new(-16541.0215, 54.770813, 1051.46118, 0.0410757065, -0, -0.999156058, 0, 1, -0, 0.999156058, 0, 0.0410757065)  
             end
        end
    end

	
	function CheckBossQuest()
		if _G.Settings.Select_Boss == "Saber Expert" then 
			MsBoss = "Saber Expert"
			NameBoss = "Saber Expert"
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		elseif _G.Settings.Select_Boss == "The Saw" then 
			MsBoss = "The Saw"
			NameBoss = "The Saw"
			CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		elseif _G.Settings.Select_Boss == "Greybeard" then
			MsBoss = "Greybeard"
			NameBoss = "Greybeard"
			CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
		elseif _G.Settings.Select_Boss == "The Gorilla King" then
			MsBoss = "The Gorilla King"
			NameBoss = "The Gorilla King"
			NameQuestBoss = "JungleQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		elseif _G.Settings.Select_Boss == "Bobby" then
			MsBoss = "Bobby"
			NameBoss = "Bobby"
			NameQuestBoss = "BuggyQuest1"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
		elseif _G.Settings.Select_Boss == "Yeti" then
			MsBoss = "Yeti"
			NameBoss = "Yeti"
			NameQuestBoss = "SnowQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
			CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
		elseif _G.Settings.Select_Boss == "Mob Leader" then
			MsBoss = "Mob Leader"
			NameBoss = "Mob Leader"
			CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
		elseif _G.Settings.Select_Boss == "Vice Admiral" then
			MsBoss = "Vice Admiral"
			NameBoss = "Vice Admiral"
			NameQuestBoss = "MarineQuest2"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
			CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
		elseif _G.Settings.Select_Boss == "Warden" then
			MsBoss = "Warden"
			NameBoss = "Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 1
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Chief Warden" then
			MsBoss = "Chief Warden"
			NameBoss = "Chief Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Swan" then
			MsBoss = "Swan"
			NameBoss = "Swan"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Magma Admiral" then
			MsBoss = "Magma Admiral"
			NameBoss = "Magma Admiral"
			NameQuestBoss = "MagmaQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
			CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
		elseif _G.Settings.Select_Boss == "Fishman Lord" then
			MsBoss = "Fishman Lord"
			NameBoss = "Fishman Lord"
			NameQuestBoss = "FishmanQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
			CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
		elseif _G.Settings.Select_Boss == "Wysper" then
			MsBoss = "Wysper"
			NameBoss = "Wysper"
			NameQuestBoss = "SkyExp1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
			CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
		elseif _G.Settings.Select_Boss == "Thunder God" then
			MsBoss = "Thunder God"
			NameBoss = "Thunder God"
			NameQuestBoss = "SkyExp2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
			CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
		elseif _G.Settings.Select_Boss == "Cyborg" then
			MsBoss = "Cyborg"
			NameBoss = "Cyborg"
			NameQuestBoss = "FountainQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
			CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
			-- New World
		elseif _G.Settings.Select_Boss == "Diamond" then
			MsBoss = "Diamond"
			NameBoss = "Diamond"
			NameQuestBoss = "Area1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
		elseif _G.Settings.Select_Boss == "Jeremy" then
			MsBoss = "Jeremy"
			NameBoss = "Jeremy"
			NameQuestBoss = "Area2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
		elseif _G.Settings.Select_Boss == "Fajita" then
			MsBoss = "Fajita"
			NameBoss = "Fajita"
			NameQuestBoss = "MarineQuest3"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
		elseif _G.Settings.Select_Boss == "Don Swan" then
			MsBoss = "Don Swan"
			NameBoss = "Don Swan"
			CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
		elseif _G.Settings.Select_Boss == "Smoke Admiral" then
			MsBoss = "Smoke Admiral"
			NameBoss = "Smoke Admiral"
			NameQuestBoss = "IceSideQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
			CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
		elseif _G.Settings.Select_Boss == "Cursed Captain" then
			MsBoss = "Cursed Captain"
			NameBoss = "Cursed Captain"
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		elseif _G.Settings.Select_Boss == "Darkbeard" then
			MsBoss = "Darkbeard"
			NameBoss = "Darkbeard"
			CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		elseif _G.Settings.Select_Boss == "Order" then
			MsBoss = "Order"
			NameBoss = "Order"
			CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		elseif _G.Settings.Select_Boss == "Awakened Ice Admiral" then
			MsBoss = "Awakened Ice Admiral"
			NameBoss = "Awakened Ice Admiral"
			NameQuestBoss = "FrostQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
			CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
		elseif _G.Settings.Select_Boss == "Tide Keeper" then
			MsBoss = "Tide Keeper"
			NameBoss = "Tide Keeper"
			NameQuestBoss = "ForgottenQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
			CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
			-- Thire World
		elseif _G.Settings.Select_Boss == "Stone" then
			MsBoss = "Stone"
			NameBoss = "Stone"
			NameQuestBoss = "PiratePortQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-290, 44, 5577)
			CFrameBoss = CFrame.new(-1085, 40, 6779)
		elseif _G.Settings.Select_Boss == "Island Empress" then
			MsBoss = "Island Empress"
			NameBoss = "Island Empress"
			NameQuestBoss = "AmazonQuest2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5443, 602, 752)
			CFrameBoss = CFrame.new(5659, 602, 244)
		elseif _G.Settings.Select_Boss == "Kilo Admiral" then
			MsBoss = "Kilo Admiral"
			NameBoss = "Kilo Admiral"
			NameQuestBoss = "MarineTreeIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(2178, 29, -6737)
			CFrameBoss =CFrame.new(2846, 433, -7100)
		elseif _G.Settings.Select_Boss == "Captain Elephant" then
			MsBoss = "Captain Elephant"
			NameBoss = "Captain Elephant"
			NameQuestBoss = "DeepForestIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
			CFrameBoss = CFrame.new(-13221, 325, -8405)
		elseif _G.Settings.Select_Boss == "Beautiful Pirate" then
			MsBoss = "Beautiful Pirate"
			NameBoss = "Beautiful Pirate"
			NameQuestBoss = "DeepForestIsland2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
			CFrameBoss = CFrame.new(5182, 23, -20)
		elseif _G.Settings.Select_Boss == "Cake Queen" then
			MsBoss = "Cake Queen"
			NameBoss = "Cake Queen"
			NameQuestBoss = "IceCreamIslandQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-716, 382, -11010)
			CFrameBoss = CFrame.new(-821, 66, -10965)
		elseif _G.Settings.Select_Boss == "rip_indra True Form" then
			MsBoss = "rip_indra True Form"
			NameBoss = "rip_indra True Form"
			CFrameBoss = CFrame.new(-5359, 424, -2735)
		elseif _G.Settings.Select_Boss == "Longma" then
			MsBoss = "Longma"
			NameBoss = "Longma"
			CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
		elseif _G.Settings.Select_Boss == "Soul Reaper" then
			MsBoss = "Soul Reaper"
			NameBoss = "Soul Reaper"
			CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
		end
	end
	
	function AutoHaki()
		if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
		end
	end

    function ClickCamera()
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):ClickButton1(Vector2.new(851,158),game:GetService("Workspace").Camera.CFrame)
        end
        
    function Click()
        game:GetService('VirtualUser'):CaptureController()
        game:GetService('VirtualUser'):Button1Down(Vector2.new(851, 158))
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
	
	function UnEquipWeapon(Weapon)
		if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
			_G.NotAutoEquip = true
			wait(.5)
			game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
			wait(.1)
			_G.NotAutoEquip = false
		end
	end
	
	function Com(com,...)
		local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
		if Remote:IsA("RemoteEvent") then
			Remote:FireServer(...)
		elseif Remote:IsA("RemoteFunction") then
			Remote:InvokeServer(...)
		end
	end
	
	-- [Tween Functions]
	
	local function GetIsLand(...)
		local RealtargetPos = {...}
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
			RealTarget = targetPos
		elseif type(targetPos) == "userdata" then
			RealTarget = targetPos.Position
		elseif type(targetPos) == "number" then
			RealTarget = CFrame.new(unpack(RealtargetPos))
			RealTarget = RealTarget.p
		end
	
		local ReturnValue
		local CheckInOut = math.huge;
		if game.Players.LocalPlayer.Team then
			for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
				local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
				if ReMagnitude < CheckInOut then
					CheckInOut = ReMagnitude;
					ReturnValue = v.Name
				end
			end
			if ReturnValue then
				return ReturnValue
			end 
		end
	end

SPEED = 20 
SMOOTHNESS = 0.1 
local function SmoothMove(destination)
    local distance = (destination - game.Players.LocalPlayer.Character.Humanoid.RootPart.Position).Magnitude
    local time = distance / SPEED
    for t = 0, 1, SMOOTHNESS do
        game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Humanoid.RootPart.Position:lerp(destination, t))
        wait(SMOOTHNESS)
    end
    game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(destination)
end
	local function toTarget(...)
		local RealtargetPos = { ... }
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
		elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
		elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		end
		
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
		if tween then tween:Cancel() end
		repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2)
		end
		
		local tweenfunc = {}
		local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
		if Distance < 50 then
			Speed = 650
		elseif Distance < 250 then
			Speed = 590
		elseif Distance < 500 then
			Speed = 500
		elseif Distance < 750 then
			Speed = 400
		elseif Distance >= 1000 then
			Speed = 350
		end
		if _G.BypassTP then
		if Distance > 3000 and not AutoFarmMaterial and not _G.AutoGodHumanand and not _G.AutoRaids and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
			repeat wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997))  until (CFrame.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
				pcall(function()
				tween:Cancel()
				fkwarp = false
		
				if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					wait(.1)
					Com("F_", "TeleportToSpawn")
				elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					wait(0.1)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				else
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						if fkwarp == false then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
						end
						fkwarp = true
					end
					wait(.08)
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					wait(.1)
					Com("F_", "SetSpawnPoint")
				end
				wait(0.2)
		
				return
			end)
		end
		end
		local tween_s = game:service "TweenService"
		local info = TweenInfo.new(
		(RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
		.Magnitude / Speed, Enum.EasingStyle.Linear)
		local tweenw, err = pcall(function()
				if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
					local Highlight = Instance.new("Highlight")
					Highlight.FillColor = Color3.new(0, 0, 0)
					Highlight.OutlineColor = Color3.new(0,0,0)
					Highlight.Parent = game.Players.LocalPlayer.Character
				end
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = RealTarget })
		tween:Play()
		end)
		
		function tweenfunc:Stop()
		tween:Cancel()
		end
		
		function tweenfunc:Wait()
		tween.Completed:Wait()
		end
		
		return tweenfunc
		end

		TweeSpeed = 300
		getgenv().ToTarget = function(Point)
			TweenPlay = (Point.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			if LocalPlayer.Character.Humanoid.Sit == true then 
				LocalPlayer.Character.Humanoid.Sit = false 
			end
			pcall(function() 
				tot = game:GetService("TweenService"):Create(LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenPlay/TweeSpeed, Enum.EasingStyle.Linear),{CFrame = Point})
			end)
		
			if _G.StopTween == true then
				tot:Cancel()
				_G.Clip = false
			end
	
			if TweenPlay > 2000 and _G.Bypass_TP then
				repeat wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997))  until (CFrame.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
				pcall(function() 
					pcall(function()
						tot:Cancel()
						fkwarp = false
		
						if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(Point)) then 
							wait(.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TeleportToSpawn")
						elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(Point)) then
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
							wait(0.1)
							repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
						else
							if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
								if fkwarp == false then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
								end
								fkwarp = true
							end
							wait(.08)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
							repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
							wait(.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						end
						wait(0.2)
						return
					end)
				end)
			end
		
			tot:Play()
			if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
				local Highlight = Instance.new("Highlight")
				Highlight.FillColor = Color3.new(0, 0, 0)
				Highlight.OutlineColor = Color3.new(0,0,0)
				Highlight.Parent = game.Players.LocalPlayer.Character
			end
			if TweenPlay < 50 then
				TweeSpeed = 650
			elseif TweenPlay < 250 then
				TweeSpeed = 590
			elseif TweenPlay < 500 then
				TweeSpeed = 500
			elseif TweenPlay < 750 then
				TweeSpeed = 400
			elseif TweenPlay >= 1000 then
				TweeSpeed = 350
			end
			if _G.StopTween then
				tot:Cancel()
				BringMobFarm = false
				UseSkillGun = false
				_G.UseSkill = false
			elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				tot:Play()
			end
		end

	local function tweenModel(model, goToCFrame)
		local owner = model:FindFirstChild("Owner")
		if owner and owner:IsA("ObjectValue") and owner.Value then
			local ownerName = owner.Value.Name
			if ownerName == game.Players.LocalPlayer.Name then
				for _, part in pairs(model:GetDescendants()) do
					if part:IsA("BasePart") then
						local TweenService = game:GetService("TweenService")
						local info = TweenInfo.new((part.Position - goToCFrame.Position).Magnitude / 200, Enum.EasingStyle.Linear)
						local tween = TweenService:Create(part, info, { CFrame = goToCFrame })
						tween:Play()
                        if _G.stpboat then
                            tween:Cancel()
                        end
                        function StopBoatF()
                            tween:Cancel()
                        end
					end
				end
			end
		end
	end

	local function GetIsLand(...)
		local RealtargetPos = {...}
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
			RealTarget = targetPos
		elseif type(targetPos) == "userdata" then
			RealTarget = targetPos.Position
		elseif type(targetPos) == "number" then
			RealTarget = CFrame.new(unpack(RealtargetPos))
			RealTarget = RealTarget.p
		end
	
		local ReturnValue
		local CheckInOut = math.huge;
		if game.Players.LocalPlayer.Team then
			for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
				local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
				if ReMagnitude < CheckInOut then
					CheckInOut = ReMagnitude;
					ReturnValue = v.Name
				end
			end
			if ReturnValue then
				return ReturnValue
			end 
		end
	end
	
	function StopTween(target)
		if not target then
			tot:Cancel()
			_G.StopTween = true
			_G.UseSkill = false
			--game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
			if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			end
			wait(0.2)
			_G.StopTween = false
			_G.Clip = false
		end
		if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
			game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
		end
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
	
	function SkyJumpNoCoolDown()
		if _G.Infinit_SkyJump then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Geppo then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not _G.Infinit_SkyJump
							end
						end
					end
				end
			end
		end
	end
	
	function InfAbility()
		if _G.Infinit_Ability then
			if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
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

				inf.Size = NumberSequence.new(0.50,0.20)
				inf.RotSpeed = NumberRange.new(999, 9999)
				inf.Rotation = NumberRange.new(0, 0)
				inf.Speed = NumberRange.new(35, 35)
				inf.SpreadAngle = Vector2.new(360,360)
				inf.Texture = "rbxassetid://14300572370"
				inf.VelocityInheritance = 0
				inf.ZOffset = 2
				inf.Transparency = NumberSequence.new(0)
				inf.Color = ColorSequence.new(Color3.fromRGB(128, 0, 255),Color3.fromRGB(128, 0, 255))
				inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			end
		else
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
				game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
			end
		end
	end
	
	_G.Dodge_No_CoolDown = false
	function DodgeNoCoolDown()
		if _G.Dodge_No_CoolDown then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Dodge then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0.4" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not _G.Dodge_No_CoolDown
							end
						end
					end
				end
			end
		end
	end
	
	local LocalPlayer = game:GetService'Players'.LocalPlayer
	local originalstam = LocalPlayer.Character.Energy.Value
	function InfinitEnergy()
		game:GetService'Players'.LocalPlayer.Character.Energy.Changed:connect(function()
			if _G.Infinit_Energy then
				LocalPlayer.Character.Energy.Value = originalstam
			end 
		end)
	end
	
	function RemoveSpaces(str)
		return str:gsub(" Fruit", "")
	end
	
	local function formatNumber(number)
		local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
		return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
	end

	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	
---------------------------------------------------------------
function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
task.spawn(function()
    while task.wait() do
    for i, v in pairs(game:GetService 'Players':GetChildren()) do
        pcall(function()
            if not isnil(v.Character) then
                if ESPPlayer then
                    if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Character.Head)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Character.Head
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M')
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Team == game.Players.LocalPlayer.Team then
                            name.TextColor3 = Color3.new(255, 0, 0)
                        else
                            name.TextColor3 = Color3.new(0, 0, 255)
                        end
                    else
                        v.Character.Head['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' | ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M\nHealth : ' .. round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) .. '%')
                    end
                else
                    if v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        v.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end
end)
task.spawn(function()
    while task.wait() do
    for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
        pcall(function()
            if SeaBeastsESP then
                if v.Name ~= "SeaBeast" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui', v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
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
end)
task.spawn(function()
    while task.wait() do
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui', v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(67, 186, 28)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
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
end)
task.spawn(function()
    while task.wait() do
    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if string.find(v.Name, "Chest") then
                if ChestESP then
                    if string.find(v.Name, "Chest") then
                        if not v:FindFirstChild('NameEsp' .. Number) then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp' .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(186, 186, 28)
                            if v.Name == "Chest1" then
                                name.Text = ("Chest 1" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                            end
                            if v.Name == "Chest2" then
                                name.Text = ("Chest 2" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                            end
                            if v.Name == "Chest3" then
                                name.Text = ("Chest 3" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                            end
                        else
                            v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp' .. Number) then
                        v:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end
end)

task.spawn(function()
    while task.wait() do
    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v.Name, "Fruit") then
                    if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Handle)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                    else
                        v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                    end
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
end)
task.spawn(function()
    while task.wait() do
    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if v.Name == "Flower2" or v.Name == "Flower1" then
                if FlowerESP then
                    if not v:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        if v.Name == "Flower1" then
                            name.Text = ("Blue Flower" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                            name.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if v.Name == "Flower2" then
                            name.Text = ("Red Flower" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    else
                        v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                    end
                else
                    if v:FindFirstChild('NameEsp' .. Number) then
                        v:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end
end)
task.spawn(function()
    while task.wait() do
    for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name = 'NameEsp' .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel', bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                else
                    v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end
    end
    for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name = 'NameEsp' .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel', bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 174, 0)
                    name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                else
                    v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end
    end

    for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name = 'NameEsp' .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel', bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(251, 255, 0)
                    name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                else
                    v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end
    end
end
end)

task.spawn(function()
    while task.wait() do
    for i, v in pairs(game:GetService 'Players':GetChildren()) do
        pcall(function()
            if not isnil(v.Character) then
                if ESPPlayer then
                    if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Character.Head)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Character.Head
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M')
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Team == game.Players.LocalPlayer.Team then
                            name.TextColor3 = Color3.new(255, 0, 0)
                        else
                            name.TextColor3 = Color3.new(0, 0, 255)
                        end
                    else
                        v.Character.Head['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' | ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M\nHealth : ' .. round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) .. '%')
                    end
                else
                    if v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        v.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end
end)

if identifyexecutor():find("Fluxus") then
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
end

	spawn(function()
		pcall(function() 
			game:GetService("RunService").Stepped:Connect(function()
				if _G.GetAzureEmber or _G.Auto_Farm_Level or _G.Auto_Cursed_Dual_Katana or _G.AutoObservation or _G.TPNPCDF or _G.Auto_Kill_Player or AutoFarmMaterial or _G.AutoBuddySwords or _G.AutoCavander or _G.Bboat or _G.TPTOBOAT or _G.AutoEvent or _G.QRepairBoat or _G.QRepairBoat2 or _G.WoodPlank or _G.AutoMirageIsland or _G.Auto_Gear or _G.TptoKisuneIsland  or _G.NeareastFarm or _G.TptoKisuneshrine or _G.AutoFarmBossHallow or _G.Auto_Yama or _G.Auto_Sea_King or _G.Auto_Dack_Coat or _G.Auto_Rip_Indar or _G.Auto_Farm_Mastery_Gun or _G.Auto_Farm_All_Sword or _G.Auto_Awakening_One_Quest or _G.Auto_Lever_UnLock or _G.Auto_Complete_Trial or _G.Auto_Farm_Mastery_Fruit or Auto_Mirage_Island or Auto_Gear or _G.Auto_Farm_All_Boss or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Castle_Raid or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law or _G.AutoKillTerrorshark or _G.AutoKillPiranha or _G.AutoKillShark or _G.AutoKillFishCrewMember then
					if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						local Noclip = Instance.new("BodyVelocity")
						Noclip.Name = "BodyClip"
						Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
						Noclip.MaxForce = Vector3.new(100000,100000,100000)
						Noclip.Velocity = Vector3.new(0,0,0)
					end
				else	
					if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end
			end)
		end)
	end)

	spawn(function()
		pcall(function()
			game:GetService("RunService").Stepped:Connect(function()
				if _G.GetAzureEmber or _G.Auto_Farm_Level or _G.Auto_Cursed_Dual_Katana or _G.AutoObservation or _G.TPNPCDF or _G.Auto_Kill_Player or AutoFarmMaterial or _G.AutoBuddySwords or _G.Bboat or _G.TPTOBOAT or _G.AutoEvent or _G.QRepairBoat or _G.QRepairBoat2 or _G.WoodPlank or _G.AutoCavander or _G.TPNPCDF or _G.AutoMirageIsland or _G.Auto_Gear or _G.TptoKisuneIsland or _G.NeareastFarm or _G.TptoKisuneshrine or _G.AutoFarmBossHallow or _G.Auto_Yama or _G.Auto_Sea_King or _G.Auto_Dack_Coat or _G.Auto_Rip_Indar or _G.Auto_Farm_Mastery_Gun or _G.Auto_Farm_All_Sword or _G.Auto_Awakening_One_Quest or _G.Auto_Farm_Mastery_Fruit or _G.Auto_Lever_UnLock or _G.Auto_Complete_Trial or Auto_Mirage_Island or Auto_Gear or _G.Auto_Farm_All_Boss or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Castle_Raid or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law or _G.AutoKillTerrorshark or _G.AutoKillPiranha or _G.AutoKillShark or _G.AutoKillFishCrewMember then
					for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") then
						v.CanCollide = false    
					end
				end
			end
		end)
	end)
end)

local function Bypass(Position)
		local CFramePos = Position
		_G.StopTween =  true
		if W3 then
			if (CFramePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 4000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997))
			end
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111111,111111,111111)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		game.Players.LocalPlayer.Character.Head:Destroy()
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111111,111111,111111)
		wait()
		game.Players.LocalPlayer.Character.Head:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
		wait()
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
		wait()
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait(0.5)
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		game.Players.LocalPlayer.Character.Head:Destroy()
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		_G.StopTween = false
		return
	end

	function Notification_ZekromHubX(text)
		game.ReplicatedStorage.Notification.new(text).Duration = 5
		game.ReplicatedStorage.Notification.new(text):Display()
	end
	
	function TPPlayer(Point)
		TweeSpeed = 300
		local LocalPlayer = game.Players.LocalPlayer 
		TweenPlay = (Point.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		pcall(function() 
				tot = game:GetService("TweenService"):Create(LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenPlay/TweeSpeed, Enum.EasingStyle.Linear),{CFrame = Point})
		end);tot:Play()
		if TweenPlay >= 1200 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
			wait(.2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
			wait(.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			wait(.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
			wait(0.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			_G.Clip = false
		elseif TweenPlay <= 300 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
		end
		if _G.StopTween == true then tot:Cancel();_G.Clip = false end
		if _G.StopTween then
			tot:Cancel()
			BringMobFarm = false
			UseSkillGun = false
			_G.UseSkill = false
		elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
			tot:Play()
		end
	end	
	
	function Check_Sword(Sword_Name)
		for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventory")) do
			if (v.Type == "Sword") then
				if v.Name == Sword_Name then
					return true
				end
			end
		end
	end

Main:AddParagraph({"Config", ""})

WeaponList = {"Melee","Sword","Devil Fruit" }

Main:AddDropdown({
    Name = "Select Weapon",
    Options = WeaponList,
    Default = {"Melee"},
    MultSelect = false,
    Callback = function(value)
        SelectWeapon = value
        _G.Settings.SelectWeapon = value
    end
  })

task.spawn(function()
    while task.wait() do
        pcall(function()
            if SelectWeapon == "Melee" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.Select_Weapon = v.Name
                        end
                    end
                end
            elseif SelectWeapon == "Sword" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.Select_Weapon = v.Name
                        end
                    end
                end
            elseif SelectWeapon == "Devil Fruit" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.Select_Weapon = v.Name
                        end
                    end
                end
            else
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.Select_Weapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)
_G.BringNorma = true
Main:AddDropdown({
Name = "Select Method",
Options = {"Upper","Behind","Below"},
Default = {"Upper"},
MultSelect = false,
Callback = function(value)
    _G.Method = value
    _G.Settings.Method = value
    end
})

_G.DistanceAutoFarm = 30

task.spawn(function()
     while task.wait(0) do
        pcall(function()
            if _G.Method == "Behind" then
                MethodFarm = CFrame.new(0, 0,  _G.DistanceAutoFarm)
            elseif _G.Method == "Below" then
                MethodFarm = CFrame.new(0, - _G.DistanceAutoFarm, 0) * CFrame.Angles(math.rad(90), 0, 0)
            elseif _G.Method == "Upper" then
                MethodFarm = CFrame.new(0,  _G.DistanceAutoFarm, 0) * CFrame.Angles(math.rad(0), 0, 0)
            else
                MethodFarm = CFrame.new(0,  _G.DistanceAutoFarm, 0)
            end
        end)
    end
end)

Main:AddDropdown({
Name = "Select Attack",
Options = {"Slow","Fast","Extreme"},
Default = {"Fast"},
MultSelect = false,
Callback = function(value)
	SelectSpeedFast = value
	if SelectSpeedFast == "Slow" then
		_G.Fast_Delay = 0.150
	elseif SelectSpeedFast == "Fast" then
		_G.Fast_Delay = 0.029
	elseif SelectSpeedFast == "Extreme" then
		_G.Fast_Delay = 0
	end
end
})

Main:AddToggle({
Name = "Fast Attack",
Default = true,
Callback = function(value)
    _G.FastAttack = value
end
})

task.spawn(function()
	pcall(function()
	while task.wait(_G.Fast_Delay) do
		if FastAttack or _G.FastAttack then
			AttackFunction()
		   end
		end
	end)
end)

Main:AddParagraph({"Farming", ""})

Main:AddToggle({
    Name = "Auto Start Farm Level",
    Default = false,
    Callback = function(value)
        _G.Auto_Farm_Level = value
        _G.Settings.Auto_Farm_Level = value
        _G.DoubleQuest = value
        getgenv().noclip = value
        if value == false then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end
})
task.spawn(function()
    while task.wait() do 
        if _G.Settings.Auto_Farm_Level then
            pcall(function()
            Click()
            end)
        end
    end
end)
posrandom = 0
randomposenelfastfarm = 0
function AutoFarmLevel()
GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
local MyLevel = game.Players.LocalPlayer.Data.Level.Value
if _G.FastAutoFarm and (MyLevel >= 15 and MyLevel <= 300) then
    if _G.AutoHaki then
        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    if MyLevel >= 15 and MyLevel <= 70 then
        if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)).Magnitude <= 3500 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == "Royal Squad" then
                        if v.Humanoid.Health > 0 then
                            if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                repeat task.wait()
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(16)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        StartMagnet = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
                                            wait()
                                            EquipWeapon(_G.Select_Weapon)
                                        end
                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                        end
                                        if _G.FastAttack then
                                            Click()
                                        end
                                        if game.Players.LocalPlayer.Data.Level.Value >= 20 and game.Players.LocalPlayer.Data.Level.Value <= 90 then
                                            _G.FastType = "Slow"
                                        else
                                            _G.FastType = "Fast"
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                until v.Humanoid.Health <= 0 or not _G.Settings.Auto_Farm_Level or not _G.FastAutoFarm
                                StartMagnet = false
                                FastAttack = false
                            end
                        end
                    end
                end
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad") then
                toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad").HumanoidRootPart.CFrame * MethodFarm)
            elseif game:GetService("Workspace").Enemies:FindFirstChild("Shanda") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == "Shanda" then
                        if v.Humanoid.Health > 0 then
                            if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                repeat task.wait()
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.Humanoid:ChangeState(11)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(16)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        StartMagnet = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        EquipWeapon(_G.Select_Weapon)
                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                        end
                                        if _G.FastAttack then
                                            Click()
                                        end
                                        if game.Players.LocalPlayer.Data.Level.Value >= 20 and game.Players.LocalPlayer.Data.Level.Value <= 90 then
                                            _G.FastType = "Slow"
                                        else
                                            _G.FastType = "Fast"
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                until v.Humanoid.Health <= 0 or not _G.Settings.Auto_Farm_Level or not _G.FastAutoFarm
                                StartMagnet = false
                                FastAttack = false
                            end
                        end
                    end
                end
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then
                toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame * MethodFarm)
            end
        else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))			
        end
    elseif MyLevel >= 70 and MyLevel <= 300 then
        if GetQuest.Visible == false then
            if not tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")):find("We heard some") then 
                Questtween = toTarget(CFrameQuest.Position,CFrameQuest)
                if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Questtween then Questtween:Stop() end wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Questtween then Questtween:Stop() end wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                elseif World1 and (Name == "God's Guard" or Name == "Sky Bandit" or Name == "Dark Master") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
                    if Questtween then Questtween:Stop() end wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
                elseif World1 and (Name == "Shanda" or Name == "Royal Squad"or Name == "Royal Soldier") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 8000 then
                    if Questtween then Questtween:Stop() end wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Questtween then Questtween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Questtween then Questtween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                    if Questtween then Questtween:Stop() end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                    wait(0.9)
                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                        if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", QuestName, LevelQuest)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                        end
                    else
                        toTarget(CFrameQuest)
                    end
                end
            end
        elseif GetQuest.Visible == true then
            local AllPlayersTableSkipFarm = {}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
            for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                table.insert(AllPlayersTableSkipFarm,v.Name)
            end
            if table.find(AllPlayersTableSkipFarm,GetQuestTitle.Text:split(" ")[2]) then
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
                        if _G.Settings.Auto_Farm_Level and _G.FastAutoFarm and v.Name == GetQuestTitle.Text:split(" ")[2] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat wait()
                                if World1 and (Vector3.new(61163.8515625, 11.6796875, 1819.7841796875) - v.HumanoidRootPart.Position).magnitude < 5000 then
                                    if FarmtoTarget then FarmtoTarget:Stop() end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
                                    FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame)
                                elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                    if FarmtoTarget then FarmtoTarget:Stop() end
                                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled.Visible == true then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                    end
                                    if _G.AutoHaki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,5,0)
                                    EquipWeapon(_G.Select_Weapon)
                                    AttackPlayers()
                                    wait(.1)
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                    wait(.1)
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end
                            until not _G.Settings.Auto_Farm_Level or not _G.FastAutoFarm  or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                        end
                    end
                end
            else
                if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.Settings.Auto_Farm_Level and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if string.find(GetQuestTitle.Text, QuestName) then
                                repeat wait()
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
                                        FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                        if FarmtoTarget then FarmtoTarget:Stop() end
                                        StartMagnet = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(16)
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        if not _G.FastAttack then
                                            Click()
                                        end

                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                        FastAttack = true
                                        EquipWeapon(_G.Select_Weapon)
                                    end
                                until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Auto_Farm_Level or not string.find(GetQuestTitle.Text, QuestName) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                                FastAttack = false
                                StartMagnet = false
                            else
                                Com("F_","AbandonQuest");
                            end
                        end
                    end
                else
                    StartMagnet = false
                    FastAttack = false
                    if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest"); end
                    Modstween = toTarget(CFrameMon.Position,CFrameMon)
                    if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                        if Modstween then Modstween:Stop() end wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                    elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                        if Modstween then Modstween:Stop() end wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                    elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                        if Modstween then Modstween:Stop() end wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                        if Modstween then Modstween:Stop() end wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                    elseif (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude <= 250 then
                        if Modstween then 
                            Modstween:Stop()
                            spawn(function()
                                if posrandom <= 1 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                                    posrandom = posrandom + 0.1
                                elseif posrandom >= 1 and posrandom <= 2 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                    posrandom = posrandom + 0.1
                                elseif posrandom >= 2 and posrandom <= 3 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                                    posrandom = posrandom + 0.1
                                elseif posrandom >= 3 and posrandom <= 4  then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                                    posrandom = posrandom + 0.1
                            elseif posrandom >=4 and posrandom <= 5 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                posrandom = 0
                            end
                        end)
                    end
                       -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                    end 
                end
            end
        end
    else
        if not string.find(GetQuestTitle.Text, NameMon) then game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest"); end
        if GetQuest.Visible == false then
            StartMagnet = false
            FastAttack = false
            Questtween = toTarget(CFrameQuest.Position,CFrameQuest)
            if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Questtween then Questtween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Questtween then Questtween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
            elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Questtween then Questtween:Stop() end
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Questtween then Questtween:Stop() end
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                if Questtween then Questtween:Stop() end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                wait(1)
                if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                    Com("F_","StartQuest", QuestName, LevelQuest)
                    Com("F_","SetSpawnPoint")
                end
            end
        elseif GetQuest.Visible == true then
            if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.Settings.Auto_Farm_Level and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        if string.find(GetQuestTitle.Text, NameMon) then
                            repeat task.wait()
                                FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                    if FarmtoTarget then FarmtoTarget:Stop() end
                                    if _G.AutoHaki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
                                        EquipWeapon(_G.Select_Weapon)
                                    end
                                    StartMagnet = true
                                    FastAttack = true
                                    if game.Players.LocalPlayer.Data.Level.Value >= 20 and game.Players.LocalPlayer.Data.Level.Value <= 90 then
                                        _G.FastType = "Slow"
                                    else
                                        _G.FastType = "Fast"
                                    end
                                    if not _G.FastAttack then
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(16)
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                end
                            until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Auto_Farm_Level or not string.find(GetQuestTitle.Text, NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                            StartMagnet = false
                            FastAttack = false
                        else
                            Com("F_","AbandonQuest");
                        end
                    end
                end
            else
                StartMagnet = false
                FastAttack = false
                if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest"); end
                Modstween = toTarget(CFrameMon.Position,CFrameMon)
            if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
            elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            elseif (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude <= 250 then
                if Modstween then 
                    Modstween:Stop()
                    spawn(function()
                        if posrandom <= 1 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 1 and posrandom <= 2 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 2 and posrandom <= 3 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 3 and posrandom <= 4  then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                            posrandom = posrandom + 0.1
                    elseif posrandom >=4 and posrandom <= 5 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                        posrandom = 0
                    end
                end)
            end
               -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                end 
            end
        end
    end
else
    if not string.find(GetQuestTitle.Text, NameMon) then game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest"); end
    if GetQuest.Visible == false then
        StartMagnet = false
        FastAttack = false
        Questtween = toTarget(CFrameQuest.Position,CFrameQuest)
        if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
            if Questtween then Questtween:Stop() end wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
            if Questtween then Questtween:Stop() end wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
        elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
            if Questtween then Questtween:Stop() end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
            if Questtween then Questtween:Stop() end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
        elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
            if Questtween then Questtween:Stop() end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
            wait(1)
            if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                Com("F_","StartQuest", QuestName, LevelQuest)
                Com("F_","SetSpawnPoint")
            end
        end
    elseif GetQuest.Visible == true then
        if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Settings.Auto_Farm_Level and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    if string.find(GetQuestTitle.Text, NameMon) then
                        repeat wait()
                            FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                if FarmtoTarget then FarmtoTarget:Stop() end
                                if _G.AutoHaki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
                                    wait()
                                    EquipWeapon(_G.Select_Weapon)
                                end
                                StartMagnet = true
                                FastAttack = true
                                if game.Players.LocalPlayer.Data.Level.Value >= 20 and game.Players.LocalPlayer.Data.Level.Value <= 90 then
                                    _G.FastType = "Slow"
                                else
                                    _G.FastType = "Fast"
                                end
                                if not _G.FastAttack then
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                v.Humanoid:ChangeState(16)
                                PosMon = v.HumanoidRootPart.CFrame
                                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                            end
                        until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Auto_Farm_Level or not string.find(GetQuestTitle.Text, NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                        StartMagnet = false
                        FastAttack = false
                    else
                        Com("F_","AbandonQuest");
                    end
                end
            end
        else
            StartMagnet = false
            FastAttack = false
            if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest"); end
            Modstween = toTarget(CFrameMon.Position,CFrameMon)
            if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
            elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            elseif (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude <= 250 then
                if Modstween then 
                    Modstween:Stop()
                    spawn(function()
                        if posrandom <= 1 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 1 and posrandom <= 2 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 2 and posrandom <= 3 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 3 and posrandom <= 4  then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                            posrandom = posrandom + 0.1
                    elseif posrandom >=4 and posrandom <= 5 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                        posrandom = 0
                    end
                end)
            end
              --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            end 
        end
    end
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

local NoLoopDuplicate = false
local SubQuest = false
local oldmob = Name
local oldcheckquest = NameMon


task.spawn(function()
while task.wait() do
pcall(function()
    if _G.Settings.Auto_Farm_Level then
        if _G.DoubleQuest then
            if SubQuest == true then
                if LevelFarm then
                    if tonumber(LevelFarm - 1) ~= 0 then
                        CheckOldQuest(tonumber(LevelFarm - 1))
                    end
                end
            else
                CheckQuest()
                oldmob = Name
                oldcheckquest = NameMon
                spawn(function()
                    pcall(function()
                        if NoLoopDuplicate == false then
                            if CheckNotifyComplete() and _G.Auto_Farm_Level then
                                NoLoopDuplicate = true
                                while task.wait() do
                                    SubQuest = true
                                    if CheckNotifyComplete() or _G.Auto_Farm_Level == false then
                                        break;
                                    end
                                end
                                SubQuest = false
                                NoLoopDuplicate = false
                            end
                        end
                    end)
                end)
                if SubQuest == true then
                    if LevelFarm then
                        if tonumber(LevelFarm - 1) ~= 0 then
                            CheckOldQuest(tonumber(LevelFarm - 1))
                        end
                    end
                end
            end
        else
            CheckQuest()
        end
        AutoFarmLevel()
    end
end)
end
end)

spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if _G.Settings.Auto_Farm_Level then
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
end)
end)


spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
            if _G.BringNormal then
				pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.Auto_Farm_Level and BringMobFarm and v.Name == Mon and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                end
            end)
        end
    end) 
end)
Main:AddToggle({
    Name = "Auto Start Neareast Mob",
    Default = false,
    Callback = function(value)
        _G.NeareastFarm = value
    end
})
spawn(function()
    while task.wait() do
        if _G.NeareastFarm then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 2000 and v.Humanoid.Health > 0 then
                            repeat
                               wait() 
                                EquipWeapon(_G.Select_Weapon)
                                PosMon = v.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.CanCollide = false 
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                StartMagnet = true
                                FastAttack = true
                                Click()
                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                if not FastAttack then
                                game:GetService 'VirtualUser':CaptureController()
                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end 
                            until not _G.NeareastFarm or not v.Parent or v.Humanoid.Health <= 0 
                        end
                end
            end)
        end
    end
end)
    Main:AddToggle({
        Name = "Auto Chest Farm [Bypass]",
        Default = false,
        Callback = function(value)
            highChestOnly = value
            AllowRunService = value
        end
    })
    Main:AddToggle({
        Name = "Auto Chest Farm [Tween]",
        Default = false,
        Callback = function(value)
            _G.AutoFarmChest = value
        end
    })
    spawn(function() 
        while wait() do 
            if _G.AutoFarmChest then
                for _, child in ipairs(Workspace:GetChildren()) do
                    if string.find(child.Name, "Chest") then
                        toTarget(child.CFrame * CFrame.new(0,0,0))
                        if (child.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                            UnEquipWeapon(_G.Select_Weapon)
                        else
                            EquipWeapon(_G.Select_Weapon)
                        end
                        end
                    end
                end
            end
        end)
    task.spawn(function()
        while true and task.wait(.5) do
            if AllowRunService == true then
                local ohString1 = "SetTeam"
                local ohString2 = "Marines"
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
            end
        end
    end)
    
    task.spawn(function()
        while task.wait() do
            if AllowRunService then
                if highChestOnly then
                    local hasChar = game.Players.LocalPlayer:FindFirstChild("Character")
                    if not game.Players.LocalPlayer.Character then
            
                    else
                        local hasCrewTag = game.Players.LocalPlayer.Character:FindFirstChild("CrewBBG",true)
                        if hasCrewTag then hasCrewTag:Destroy() end
                        local hasHumanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                        if hasHumanoid then
                            local Chest = game.Workspace:FindFirstChild("Chest4") or game.Workspace:FindFirstChild("Chest3") or game.Workspace:FindFirstChild("Chest2") or game.Workspace:FindFirstChild("Chest1") or game.Workspace:FindFirstChild("Chest")
                            
                            if Chest then
                                game.Players.LocalPlayer.Character:PivotTo(Chest:GetPivot())
                                firesignal(Chest.Touched,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            else
                                
                                break
                            end
                        end 
                    end
                elseif highChestOnly then
                    local hasChar = game.Players.LocalPlayer:FindFirstChild("Character")
                    if not game.Players.LocalPlayer.Character then
                    else
                        local hasCrewTag = game.Players.LocalPlayer.Character:FindFirstChild("CrewBBG",true)
                        if hasCrewTag then hasCrewTag:Destroy() end
                        local hasHumanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                        if hasHumanoid then
                            local Chest = game.Workspace:FindFirstChild("Chest4") or game.Workspace:FindFirstChild("Chest3") or game.Workspace:FindFirstChild("Chest2")
                            if Chest then
                                game.Players.LocalPlayer.Character:PivotTo(Chest:GetPivot())
                                firesignal(Chest.Touched,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            else
                                break
                            end
                        end 
                    end
                end
            end
        end
    end)
    
    task.spawn(function()
        while task.wait() do
            task.spawn(function()
                if godsChalicSniper then
                    if stuff then
                        AllowRunService = false
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait(12) do
        if AllowRunService then
            game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
            end
        end
    end)
    Main:AddToggle({
        Name = "Auto Pirate Sea",
        Default = false,
        Callback = function(value)
            _G.Auto_Castle_Raid = value
            _G.Settings.Auto_Castle_Raid = value
        end
    })
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.Auto_Castle_Raid then
                    if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
                                repeat wait()
                                    PosMon = v.HumanoidRootPart.CFrame
                                    EquipWeapon(_G.Select_Weapon)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                    BringMobFarm = true
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.FastAttack = true
                                    end
                                until not _G.Auto_Castle_Raid or not v.Parent or v.Humanoid.Health <= 0
                                BringMobFarm = false
                            end
                        end
                    else
                        if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                            for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                end
                            end
                        end
                        getgenv().ToTarget(CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125))
                    end
                end
            end)
        end
    end)
    Main:AddParagraph({"Mastery Farm", ""})
    Main:AddToggle({
        Name = "Auto Mastery Fruit",
        Default = false,
        Callback = function(value)
            _G.Auto_Farm_Mastery_Fruit = value    
            _G.Settings.Auto_Farm_Mastery_Fruit = value
        end
    })
    Main:AddToggle({
        Name = "Auto Mastery Gun",
        Default = false,
        Callback = function(value)
            _G.Auto_Farm_Mastery_Gun = value
            _G.Settings.Auto_Farm_Mastery_Gun = value
        end
    })
    Main:AddSlider({
        Name = "Kill At (%)",
        MinValue = 1,
        MaxValue = 100,
        Default = 30,
        Increase = 1,
        Callback = function(value)
            _G.MobHealth = value
            _G.Settings.HealthMs = value
        end
      })
Main:AddParagraph({"Setting Skill", ""})

    Main:AddToggle({Name = "Skill Z", Default = true, Callback = function(value)
        _G.SkillZ = value
        _G.Settings.SkillZ = value
        end
      })
      Main:AddToggle({Name = "Skill X", Default = false, Callback = function(value)
        _G.SkillX = value
        _G.Settings.SkillX = value
        end
      })
      Main:AddToggle({Name = "Skill C", Default = false, Callback = function(value)
        _G.SkillC = value
        _G.Settings.SkillC = value
        end
      })
      Main:AddToggle({Name = "Skill V", Default = false, Callback = function(value)
        _G.SkillV = value
        _G.Settings.SkillV = value
        end
      })

      task.spawn(function()
        while task.wait() do
        if _G.Auto_Farm_Mastery_Gun  then
            CheckQuest()
        end
        end
        end)
        if _G.Auto_Farm_Mastery_Gun or _G.Auto_Farm_Mastery_Fruit then
            SelectSpeedFast = "Slow"
        else
            SelectSpeedFast = "Fast"
        end
        task.spawn(function()
        while task.wait() do
        if _G.Auto_Farm_Mastery_Fruit then
            CheckQuest()
        end
        end
    end)

    function GetAllMeleeFarm()
        if SupComplete == false then
        local args = {
            [1] = "BuySuperhuman"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        if CheckMasteryWeapon("Superhuman", 400) == "true UpTo" then
            SupComplete = true
        end
        end
        wait(.5)
        if EClawComplete == false then
        local string_1 = "BuyElectricClaw";
        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
        Target:InvokeServer(string_1);
        
        if CheckMasteryWeapon("Electric Claw", 400) == "true UpTo" then
            EClawComplete = true
        end
        end
        wait(.5)
        if TalComplete == false then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
        
        if CheckMasteryWeapon("Dragon Talon", 400) == "true UpTo" then
            TalComplete = true
        end
        end
        wait(.5)
        if SharkComplete == false then
        local args = {
            [1] = "BuySharkmanKarate"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        
        if CheckMasteryWeapon("Sharkman Karate", 400) == "true UpTo" then
            SharkComplete = true
        end
        end
        wait(.5)
        if DeathComplete == false then
        local args = {
            [1] = "BuyDeathStep"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        
        if CheckMasteryWeapon("Death Step", 400) == "true UpTo" then
            DeathComplete = true
        end
        end
        if GodComplete == false then
        local args = {
            [1] = "BuyGodhuman"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        
        if CheckMasteryWeapon("Godhuman", 350) == "true UpTo" then
            GodComplete = true
        end
        end
        end
        
        spawn(function()
            local gg = getrawmetatable(game)
            local old = gg.__namecall
            setreadonly(gg, false)
            gg.__namecall = newcclosure(function(...)
                local method = getnamecallmethod()
                local args = { ... }
                if tostring(method) == "FireServer" then
                    if tostring(args[1]) == "RemoteEvent" then
                        if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                            if UseSkillMasteryDevilFruit and _G.Auto_Farm_Mastery_Fruit then
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
                return old(...)
            end)
        end)
        
        spawn(function()
            local gt = getrawmetatable(game)
            local old = gt.__namecall
            setreadonly(gt, false)
            gt.__namecall = newcclosure(function(...)
                local args = { ... }
                if getnamecallmethod() == "InvokeServer" then
                    if _G.SelectWeaponGun then
                        if _G.SelectWeaponGun == "Soul Guitar" then
                            if tostring(args[2]) == "TAP" then
                                if _G.Auto_Farm_Mastery_Gun and UseSkillMasteryGun then
                                    args[3] = PositionSkillMasteryGun
                                end
                            end
                        end
                    end
                end
                return old(unpack(args))
            end)
            setreadonly(gt, true)
        end)
        
        task.spawn(function()
            while wait() do
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then
                            _G.SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end)
        
        spawn(function()
            local gt = getrawmetatable(game)
            local old = gt.__namecall
            setreadonly(gt,false)
            gt.__namecall = newcclosure(function(...)
                local args = {...}
                if getnamecallmethod() == "InvokeServer" then 
                    if _G.SelectWeaponGun then
                        if _G.SelectWeaponGun == "Soul Guitar" then
                            if tostring(args[2]) == "TAP" then
                                if  _G.Auto_Farm_Mastery_Gun and _G.UseSkillMasteryGun then
                                    args[3] = PositionSkillMasteryGun
                                end
                            end
                        end
                    end
                end
                return old(unpack(args))
            end) 
            setreadonly(gt,true)
        end)
        spawn(function()
            while wait() do
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v.ToolTip == "Gun" then
                            _G.SelectWeaponGun = v.Name
                        end
                    end
                end
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v.ToolTip == "Gun" then
                            _G.SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end)
        spawn(function()
            while wait() do
            pcall(function()
            if _G.Settings.Auto_Farm_Mastery_Gun then
          if  game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                StartMagnet = false
                 -- FastAttack = false
                Questtween = toTarget(CFrameQuest.Position, CFrameQuest)
                if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Questtween then Questtween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Questtween then Questtween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Questtween then Questtween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Questtween then Questtween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                    if Questtween then Questtween:Stop() end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                    wait(1)
                    if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                        Com("F_", "StartQuest", QuestName, LevelQuest)
                    end
                end
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
            if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                    if _G.Auto_Farm_Mastery_Gun and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        PosMon = v.HumanoidRootPart.CFrame
                        MonHumanoidRootPart = v.HumanoidRootPart
                        PositionSkillMasteryGun = v.HumanoidRootPart.Position
                        repeat
                            task.wait()
                            FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                if FarmtoTarget then FarmtoTarget:Stop() end
                                StartMagnet = true
                                PosMon = v.HumanoidRootPart.CFrame
                                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                end
                                HealthMin = v.Humanoid.MaxHealth * _G.MobHealth / 100
                                PositionSkillMasteryGun = v.HumanoidRootPart.Position
                                if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    EquipWeapon(_G.SelectWeaponGun)
                                    UseSkillMasteryGun = true
                                   v.HumanoidRootPart.CanCollide = false
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectWeaponGun) and game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectWeaponGun):FindFirstChild("RemoteFunctionShoot") then
                                       mouse1click()
                                        local args = {
                                            [1] = v.HumanoidRootPart.Position,
                                            [2] = v.HumanoidRootPart
                                        }
                                        game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                    end
                                else
                                    UseSkillMasteryGun = false
                                    EquipWeapon(_G.SelectWeapon)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                end
                            end
                        until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Auto_Farm_Mastery_Gun or v.Humanoid.Health <= 0 or not v.Parent
                        UseSkillMasteryGun = false
                        StartMagnet = false
                    end
                end
            else
                StartMagnet = false
                Modstween = toTarget(CFrameMon)
                if OldWorld and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Modstween then Modstween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif OldWorld and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Modstween then Modstween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                elseif OldWorld and (Name == "God's Guard" or Name == "Sky Bandit" or Name == "Dark Master") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
                    if Modstween then Modstween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
                elseif OldWorld and (Name == "Shanda" or Name == "Royal Squad" or Name == "Royal Soldier") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
                    if Modstween then Modstween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif NewWorld and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Modstween then Modstween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif NewWorld and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Modstween then Modstween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                    if Modstween then 
                        Modstween:Stop()
                        spawn(function()
                            if posrandom <= 1 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                                posrandom = posrandom + 0.1
                            elseif posrandom >= 1 and posrandom <= 2 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                posrandom = posrandom + 0.1
                            elseif posrandom >= 2 and posrandom <= 3 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                                posrandom = posrandom + 0.1
                            elseif posrandom >= 3 and posrandom <= 4  then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                                posrandom = posrandom + 0.1
                        elseif posrandom >=4 and posrandom <= 5 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                            posrandom = 0
                        end
                    end)
                end
                   -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                end
            end
        end
        end
        end)
        end
        end)
        
        
        local Cam = workspace.CurrentCamera
            local hotkey = true
            function lookAt(target, eye)
                Cam.CFrame = CFrame.new(target, eye)
            end
            function CheckMonFF(trg_part)
                local nearest = nil
                local last = math.huge
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == QuestCheck()[3] then
                        local ePos, vissss = workspace.CurrentCamera:WorldToViewportPoint(v[trg_part].Position)
                        local AccPos = Vector2.new(ePos.x, ePos.y)
                        local mousePos = Vector2.new(workspace.CurrentCamera.ViewportSize.x / 2, workspace.CurrentCamera.ViewportSize.y / 2)
                        local distance = (AccPos - mousePos).magnitude
                        if distance < last and vissss and hotkey == true and distance < 1500 then
                            last = distance
                            nearest = v
                        end
                    end
                end
                return nearest
            end
            spawn(function()
                while wait() do
                    if _G.Auto_Farm_Mastery_Gun  and _G.UseSkillMasteryGun == true then
                        local closest = CheckMonFF("HumanoidRootPart")
                        lookAt(Cam.CFrame.p, closest:FindFirstChild("HumanoidRootPart").Position)
                        local args = {
                            [1] = PositionSkillMasteryGun
                        }
                        
                        game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteEvent:FireServer(unpack(args))
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                    end
                end
            end)
            spawn(function()
                while wait() do
                    if _G.Auto_Farm_Mastery_Gun  and _G.UseSkillMasteryGun == true then
                        local args = {
                            [1] = PositionSkillMasteryGun,
                            [2] = MonHumanoidRootPart
                        }
                        game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                    end
                end
            end)
        
            spawn(function()
                while wait() do
                    pcall(function()
                        if _G.Settings.Auto_Farm_Mastery_Fruit then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                StartMagnet = false
                FastAttack = false
                Questtween = toTarget(CFrameQuest.Position, CFrameQuest)
                if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Questtween then Questtween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Questtween then Questtween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Questtween then Questtween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Questtween then Questtween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                    if Questtween then Questtween:Stop() end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                    wait(1)
                    if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                        Com("F_", "StartQuest", QuestName, LevelQuest)
                    end
                end
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.Auto_Farm_Mastery_Fruit and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        repeat
                            task.wait()
                            FarmtoTarget = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame * MethodFarm) 
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                if FarmtoTarget then FarmtoTarget:Stop() end
                                StartMagnet = true
                                PosMon = v.HumanoidRootPart.CFrame
                                HealthMin = v.Humanoid.MaxHealth * _G.MobHealth / 100
                                if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                        PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                        UseSkillMasteryDevilFruit = true
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                            MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
                                            DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                            MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
                                            DevilFruitMastery = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                                        end
                                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                            if _G.SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                            end
                                            if Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                            end
                                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                                            if _G.SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                            else
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                            end
                                            if _G.SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                            end
                                            if _G.SkillC and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                                            end
                                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
                                            if _G.SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                            end
                                            if _G.SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                            end
                                            if _G.SkillC and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                                            end
                                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
                
                                            if _G.SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                            end
                                            if _G.SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                            end
                                            if _G.SkillC and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                                            end
                                            if _G.SkilV and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                                            if _G.SkillF and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.F then
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
                                            end
                                            end
                                        end
                                    end
                                else
                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158),game:GetService("Workspace").Camera.CFrame)
                                    UseSkillMasteryDevilFruit = false
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                end
                            end
                        until v.Humanoid.Health <= 0 or not _G.Auto_Farm_Mastery_Fruit
                        StartMagnet = false
                    end
                end
                else
                StartMagnet = false
                Modstween = toTarget(CFrameMon.Position, CFrameMon)
                if OldWorld and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Modstween then Modstween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif OldWorld and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Modstween then Modstween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                elseif OldWorld and (Name == "God's Guard" or Name == "Sky Bandit" or Name == "Dark Master") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
                    if Modstween then Modstween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
                elseif OldWorld and (Name == "Shanda" or Name == "Royal Squad" or Name == "Royal Soldier") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
                    if Modstween then Modstween:Stop() end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif NewWorld and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Modstween then Modstween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif NewWorld and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Modstween then Modstween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                    if Modstween then 
                        Modstween:Stop()
                        spawn(function()
                            if posrandom <= 1 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                                posrandom = posrandom + 0.1
                            elseif posrandom >= 1 and posrandom <= 2 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                posrandom = posrandom + 0.1
                            elseif posrandom >= 2 and posrandom <= 3 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                                posrandom = posrandom + 0.1
                            elseif posrandom >= 3 and posrandom <= 4  then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                                posrandom = posrandom + 0.1
                        elseif posrandom >=4 and posrandom <= 5 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                            posrandom = 0
                        end
                    end)
                end
                  --  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                end
                end
                end
                end
                end)
                end
                end)
        
        function CheckMasteryWeapon(NameWe, MasNum)
        if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
        if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
            return "true DownTo"
        elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
            return "true UpTo"
        end
        end
        if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
        if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
            return "true DownTo"
        elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
            return "true UpTo"
        end
        end
        return "else"
        end
        
        function CheckMasteryWeapon(NameWe,MasNum)
            if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
                if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
                    return "true DownTo"
                elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
                    return "true UpTo"
                end
            end
            if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
                if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
                    return "true DownTo"
                elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
                    return "true UpTo"
                end
            end
            return "else"
        end
        
        local function inmyself(name)
            return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name);
        end

Main:AddParagraph({"Bosses", ""})

if World1 then
    tableBoss = {"DauCoGhe Raid Boss [Lv. 7000]","The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
elseif World2 then
    tableBoss = {"DauCoGhe Raid Boss [Lv. 8000]","Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
elseif World3 then
    tableBoss = {"DauCoGhe Raid Boss [Lv. 9000]","Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
end

Main:AddDropdown({
    Name = "Select Boss",
    Options = tableBoss,
    Default = {""},
    MultSelect = false,
    Callback = function(value)
        _G.Settings.Select_Boss = value
    end
  })

  Main:AddDropdown({
    Name = "Select Mode Boss",
    Options = {"Farm On Select Boss", "Quest Boss", "All Boss"},
    Default = {"Farm On Select Boss"},
    MultSelect = false,
    Callback = function(value)
        _G.SelectModeFarm = value
    end
  })

  Main:AddToggle({Name = "Eanble Farm Boss", Default = false, Callback = function(value)
	_G.Auto_Farm_Boss = value
	_G.Settings.Auto_Farm_Boss = value
    _G.Auto_Quest_Boss = value
	_G.Settings.Auto_Quest_Boss = value
    _G.Auto_Farm_All_Boss = value
	_G.Settings.Auto_Farm_All_Boss = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
    end
  })

  spawn(function()
	while wait() do
		if _G.Auto_Farm_All_Boss and _G.SelectModeFarm == "All Boss" then
			pcall(function()
				for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
					if string.find(v.Name,"Boss") then
						repeat task.wait()
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
								getgenv().ToTarget(v.HumanoidRootPart.CFrame)
							elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
								AutoHaki()
								EquipWeapon(_G.Select_Weapon)
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(80,80,80)
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						until v.Humanoid.Health <= 0 or _G.Auto_Farm_All_Boss == false or not v.Parent
					end
				end
			end)
		end
	end
end)

  spawn(function()
	while wait() do
		if _G.Auto_Farm_Boss and _G.SelectModeFarm == "Quest Boss" then
			pcall(function()
				CheckBossQuest()
				if MsBoss == "Soul Reaper" or MsBoss == "Longma" or MsBoss == "Don Swan" or MsBoss == "Cursed Captain" or MsBoss == "Order" or MsBoss == "rip_indra True Form" then
					if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == MsBoss then
								repeat wait()
									EquipWeapon(_G.Select_Weapon)
									AutoHaki()
									getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					else
						getgenv().ToTarget(CFrameBoss)
					end
				else
					if _G.Auto_Quest_Boss and _G.SelectModeFarm == "All Boss" then
						CheckBossQuest()
						if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat wait() getgenv().ToTarget(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Boss
							if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											EquipWeapon(_G.Select_Weapon)
											AutoHaki()
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))									
										until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								getgenv().ToTarget(CFrameBoss)
							end
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										EquipWeapon(_G.Select_Weapon)
										AutoHaki()
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))										
									until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							getgenv().ToTarget(CFrameBoss)
						end
					end
				end
			end)
		end
	end
end)
Main:AddToggle({Name = "Auto Rip Indra [Boss]", Default = false, Callback = function(value)
	_G.Auto_Rip_Indar = value
	_G.Settings.Auto_Rip_Indar = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
    end
  })
  local Rip_Indar_All_Mon = {
	["Mon Quest"] = {"Diablo","Deandre","Urban"},
	["Boss"] = "rip_indra True Form",
	["Mon"] = {"Diablo","Deandre","Urban"},
	["Item"] = "God's Chalice",
}
spawn(function()
	while wait() do
			if _G.Auto_Rip_Indar then
				pcall(function()
				local QuestUI = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
				for _,_l1 in next,Rip_Indar_All_Mon["Mon Quest"] do
					for _,l in next,Rip_Indar_All_Mon["Mon"] do
						if game:GetService("Workspace").Enemies:FindFirstChild(Rip_Indar_All_Mon["Boss"]) or game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]) then
							for _,_v3 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if _v3.Name == Rip_Indar_All_Mon["Boss"] then
									if _v3:FindFirstChild("Humanoid") and _v3:FindFirstChild("HumanoidRootPart") and _v3.Humanoid.Health > 0 then
										repeat wait()
											EquipWeapon(_G.Select_Weapon)
											_v3.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
											getgenv().ToTarget(_v3.HumanoidRootPart.CFrame * MethodFarm)
											if (_v3.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
												_G.FastAttack = true
											end
										until not _G.Auto_Rip_Indar or _v3.Humanoid.Health <= 0 or not _v3.Parent or _v3.Humanoid.Health <= 0
									end
								else
									if game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]) then
										getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]).HumanoidRootPart.CFrame * MethodFarm)
									else
										EquipWeapon(Rip_Indar_All_Mon["Item"])
										getgenv().ToTarget(CFrame.new(-5561.09033, 314.179657, -2663.16919, -0.347872645, -0.00166249205, 0.937540352, -0.000768713537, 0.999998569, 0.00148801634, -0.937541485, -0.000203059797, -0.34787342))
									end
								end
							end
						else
							if game.Players.LocalPlayer.Backpack:FindFirstChild(Rip_Indar_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Rip_Indar_All_Mon["Item"]) then
								for _, _v_1 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
									if _v_1:IsA("Part") then
										if _v_1.Color == Color3.fromRGB(187, 187, 187) then
											_v_1.Name = "W1"
										elseif _v_1.Color == Color3.fromRGB(255, 0, 0) then
											_v_1.Name = "R2"
										elseif _v_1.Color == Color3.fromRGB(255, 0, 191) then
											_v_1.Name = "P3"
										end
									end
								end
								for _, _v2 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
									if _v2:IsA("Part") then
										if _v2.Name == "W1" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
											wait(0.5)
											repeat wait()
												getgenv().ToTarget(_v2.CFrame)
											until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
											wait(0.5)
										elseif _v2.Name == "R2" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
											wait(0.5)
											repeat wait()
												getgenv().ToTarget(_v2.CFrame)
											until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
											wait(0.5)
										elseif _v2.Name == "P3" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
											wait(0.5)
											repeat wait()
												getgenv().ToTarget(_v2.CFrame)
											until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
											wait(0.5)
										else
											for _, _v2 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
												if _v2:IsA("Part") then
													if _v2.Name == "W1" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
														_G.Part1 = false
													else
														_G.Part1 = true
													end
													if _v2.Name == "R2" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
														_G.Part2 = false
													else
														_G.Part2 = true
													end
													if _v2.Name == "P3" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
														_G.Part3 = false
													else
														_G.Part3 = true
													end
												end
											end
										end
									end
								end
							else
								if QuestUI.Visible == true then
									if game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
										for _,_1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if _1.Name == _l1 then
												if _1:FindFirstChild("Humanoid") and _1:FindFirstChild("HumanoidRootPart") and _1.Humanoid.Health > 0 then
													repeat wait()
														EquipWeapon(_G.Select_Weapon)
														_1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
														getgenv().ToTarget(_1.HumanoidRootPart.CFrame * MethodFarm)
														if (_1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
															_G.FastAttack = true
														end
													until _1.Humanoid.Health <= 0 or not _1.Parent or not game:GetService("Workspace").Enemies:FindFirstChild(l) or not game:GetService("ReplicatedStorage"):FindFirstChild(l) or not _G.Auto_Rip_Indar
												end
											else
												if _G.Bypass_TP then
													if (game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
														repeat wait()
															Bypass(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
														until not _G.Auto_Rip_Indar
													end
												end
												if game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
													getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
												end
											end
										end
									end
								else
									if game.Players.LocalPlayer.Backpack:FindFirstChild(Rip_Indar_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Rip_Indar_All_Mon["Item"]) then
										return
									else
										if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." and not ( game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) ) then
											_G.Rejoin = false
											wait(0.5)
											Hop()
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
										end
									end
								end
							end
						end
					end
				end
			end)
		end
	end
end)

Main:AddParagraph({"Material", ""})

Main:AddDropdown({
    Name = "Select Material",
    Options = AllMaterial,
    Default = {""},
    MultSelect = false,
    Callback = function(value)
        SelectModeMaterial = value
    end
  })
  Main:AddToggle({Name = "Auto Material", Default = false, Callback = function(x)
	AutoFarmMaterial = x
	if x == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end
})
task.spawn(function()
	while task.wait() do
		if AutoFarmMaterial then
			xpcall(function()
				if (SelectModeMaterial ~= "") then
					CheckMaterial(SelectModeMaterial);
					if CustomFindFirstChild(MaterialMob) then
						for v0, v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (AutoFarmMaterial and table.find(MaterialMob, v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health > 0)) then
								repeat
									task.wait();
									FarmtoTarget = toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
									if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150)) then
										if FarmtoTarget then FarmtoTarget:Stop(); end
										FastAttack = true;
										EquipWeapon(_G.Select_Weapon);
										spawn(function()
											for v4, v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if (v5.Name == v1.Name) then
													spawn(function()
														if InMyNetWork(v5.HumanoidRootPart) then
															v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame;
															v5.Humanoid.JumpPower = 0;
															v5.Humanoid.WalkSpeed = 0;
															v5.HumanoidRootPart.CanCollide = false;
															v5.Humanoid:ChangeState(14);
															v5.Humanoid:ChangeState(16);
															v5.Humanoid:ChangeState(11);
															v5.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
														end
													end);
												end
											end
										end);
										if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
											game:service("VirtualInputManager"):SendKeyEvent(true, "V", false,game);
											game:service("VirtualInputManager"):SendKeyEvent(false, "V",false, game);
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
									end
								until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health <= 0) or not v1.Parent
								FastAttack = false;
							end
						end
					else
						FastAttack = false;
						Modstween = toTarget(CFrameMon);
						if (World1 and (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
							if Modstween then Modstween:Stop(); end wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
						elseif (World1 and not (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
							if Modstween then Modstween:Stop(); end wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875));
						elseif (World1 and (table.find(MaterialMob, "God's Guard")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
							if Modstween then Modstween:Stop(); end wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656));
						elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
							if Modstween then 
								Modstween:Stop()
								spawn(function()
									if posrandom <= 1 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
										posrandom = posrandom + 0.1
									elseif posrandom >= 1 and posrandom <= 2 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
										posrandom = posrandom + 0.1
									elseif posrandom >= 2 and posrandom <= 3 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
										posrandom = posrandom + 0.1
									elseif posrandom >= 3 and posrandom <= 4  then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
										posrandom = posrandom + 0.1
								elseif posrandom >=4 and posrandom <= 5 then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
									posrandom = 0
								end
							end)
						end
						end
					end
				end
			end, function(x)
			end)
		else
			break;
		end
	end
end)
if World1 then
    Main:AddParagraph({"World 1", ""})
    Main:AddToggle({Name = "Auto New World", Default = false, Callback = function(value)
		_G.Auto_New_World = value
		_G.Settings.Auto_New_World = value
    end
})
spawn(function()
    while wait() do
        if _G.Auto_New_World then
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 700 and W1 then
                    _G.Auto_Farm_Level = false
                    if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                        repeat wait() getgenv().ToTarget(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        EquipWeapon("Key")
                        local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                        repeat wait() getgenv().ToTarget(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
                        wait(3)
                    elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.Select_Weapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.HumanoidRootPart.Transparency = 1
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
                                    until v.Humanoid.Health <= 0 or not v.Parent or not _G.Auto_New_World
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                end
                            end
                        else
                            getgenv().ToTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                end
            end)
        end
    end
end)
elseif World2 then
    Main:AddParagraph({"World 2", ""})
    Main:AddToggle({Name = "Auto New World Third", Default = false, Callback = function(value)
		_G.Auto_Third_World = value
		_G.Settings.Auto_Third_World = value
    end
})
spawn(function()
    while wait() do
        if _G.Auto_Third_World and W2 then
            pcall(function()
                local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then							
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "rip_indra" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.Transparency = 1
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                AutoHaki()
                                                if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                                    _G.FastAttack = true
                                                end
                                            until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 
                                            repeat wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou") until LOL == "LOLOL"
                                        end
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") or game.ReplicatedStorage:FindFirstChild("Don Swan") then
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Don Swan" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    EquipWeapon(_G.Select_Weapon)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    AutoHaki()
                                                    if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                                        _G.FastAttack = true
                                                    end
                                                until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 
                                            else
                                                getgenv().ToTarget(2207.38672, 15.1333914, 883.866394, 0.931175113, 3.09244754e-08, -0.364572287, 1.20643637e-08, 1, 1.15638279e-07, 0.364572287, -1.12077821e-07, 0.931175113)
                                            end
                                        end
                                    else
                                        getgenv().ToTarget(2207.38672, 15.1333914, 883.866394, 0.931175113, 3.09244754e-08, -0.364572287, 1.20643637e-08, 1, 1.15638279e-07, 0.364572287, -1.12077821e-07, 0.931175113)
                                    end
                                end
                            end
                        else
                            for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
                                if v.Price >= 1000000 then  
                                    table.insert(FruitPrice,v.Name)
                                end
                            end
                            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
                                for _,x in pairs(v) do
                                    if _ == "Name" then 
                                        table.insert(FruitStore,x)
                                    end
                                end
                            end
                            function CheckFruit()
                                local player = game.Players.LocalPlayer
                                for _, tool in pairs(player.Backpack:GetDescendants()) do
                                    if tool:FindFirstChild("Fruit") then
                                        return tool
                                    end
                                end
                            end
                            function AddToNpc()
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(CheckFruit())) then
                                    wait(1.5)
                                    EquipWeapon(tostring(CheckFruit()))
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
                                end
                            end
                            for _,y in pairs(FruitPrice) do
                                for _,z in pairs(FruitStore) do
                                    if y == z and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                        local args = {
                                            [1] = "LoadFruit",
                                            [2] = tostring(y)
                                        }
                            
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        AddToNpc()
                                    end
                                end 
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                            _G.Auto_Farm_Level = false
                            if QuestC.Visible == true then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Swan Pirate" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                                repeat task.wait()
                                                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate") then
                                                        --game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                    else
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Head.CanCollide = false
                                                        BringMobFarm = true
                                                        EquipWeapon(_G.Select_Weapon)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
        
                                                        if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
                                                            _G.FastAttack = true
                                                        end
                                                    end
                                                until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                                            end
                                        end
                                    end
                                else
                                    BringMobFarm = false
                                    for i,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
                                        if v.Name == "Swan Pirate" then local CFrameEnemySpawns = v.CFrame  wait(0.5)
                                            getgenv().ToTarget(CFrameEnemySpawns * MethodFarm)
                                        end
                                    end
                                end
                            else
                                repeat wait() getgenv().ToTarget(CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312)) until (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Bartilo_Quest
                                if (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                                    BringMobFarm = false
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
                                end
                            end
                        elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                            _G.Auto_Farm_Level = false
                            if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Jeremy" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            repeat task.wait()
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                BringMobFarm = true
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.Transparency = 1
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
        
                                                if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
                                                    _G.FastAttack = true
                                                end
                                            until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                                        end
                                    end
                                end
                            else
                                getgenv().ToTarget(CFrame.new(2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-09, -0.656645238, -4.47752875e-08, 1, 4.50709301e-08, 0.656645238, 6.3393955e-08, -0.754199564))
                            end
                        elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                            repeat wait() getgenv().ToTarget(CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456)) until (CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or _G.Auto_Third_World == false
                            wait(0.7)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
                            wait(0.7)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
                            wait(0.7)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
                            wait(0.7)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
                            wait(0.7)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
                            wait(0.7)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
                            wait(0.7)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
                            wait(0.7)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
                        end
                    end
                end
            end)
        end
    end
end)
end    

local Item = Window:MakeTab({Name = "Item/Quest", Icon = "swords"})
-----Item
Item:AddParagraph({"Saber", ""})
Item:AddToggle({Name = "Auto Saber", Default = false, Callback = function(value)
	_G.Auto_Saber = value
	_G.Settings.Auto_Saber = value
end
})
Item:AddToggle({Name = "Auto Saber [Hop]", Default = false, Callback = function(value)
	_G.Auto_Saber_Hop = value
end
})
spawn(function()
	while task.wait() do
			if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and Check_Sword("Saber") == nil and W1 then
				_G.Auto_Farm_Level = false
				pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
					if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
						if (CFrame.new(-1480.06018, 47.9773636, 4.53454018, -0.386713833, 1.11673025e-07, 0.922199786, 7.96717785e-08, 1, -8.76847395e-08, -0.922199786, 3.95643944e-08, -0.386713833).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
							task.wait(1) 
						end
					local CFrameSaber = CFrame.new(-1480.06018, 47.9773636, 4.53454018, -0.386713833, 1.11673025e-07, 0.922199786, 7.96717785e-08, 1, -8.76847395e-08, -0.922199786, 3.95643944e-08, -0.386713833)
					if _G.Auto_Farm_Level and _G.Auto_Saber and (CFrameSaber.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						getgenv().ToTarget(CFrameSaber)
					end
					getgenv().ToTarget(CFrameSaber)
				else
					if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
							EquipWeapon("Torch")
							getgenv().ToTarget(CFrame.new(1113.7229, 5.04679585, 4350.33691, -0.541527212, 5.27007726e-09, 0.840683222, 8.74004868e-08, 1, 5.00303372e-08, -0.840683222, 1.00568911e-07, -0.541527212))
							UnEquipWeapon("Torch")
							EquipWeapon("Torch")
							task.wait(0.5)
						else
							getgenv().ToTarget(CFrame.new(-1610.56824, 12.1773882, 162.830322, -0.907543361, -2.88120088e-08, -0.419958383, -4.66550922e-08, 1, 3.22163096e-08, 0.419958383, 4.88308949e-08, -0.907543361))                 
						end
					else
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
							task.wait(0.5)
							EquipWeapon("Cup")
							task.wait(0.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
							task.wait(0)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
							elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Mob Leader" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait()
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(100,100,100)
													v.HumanoidRootPart.Transparency = 1
													EquipWeapon(_G.Select_Weapon)
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO or _G.SuperFastAttack then game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) end
												until v.Humanoid.Health <= 0 or _G.AutoSaber == false
											end
										end
									end
									for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
										if v.Name == "Mob Leader" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											end
										else
											if _G.Auto_Saber_Hop then
												wait(2.5)
												Hop()
											end
										end
									end		
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
								task.wait(0.5)
								EquipWeapon("Relic")
								task.wait(0.5)
								getgenv().ToTarget(CFrame.new(-1406.37512, 29.9773273, 4.45027685, 0.877344251, -3.82776442e-08, 0.479861468, 4.93218133e-09, 1, 7.07504668e-08, -0.479861468, -5.9705755e-08, 0.877344251))
							end
						end
					end
				end
				else
					if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Saber Expert" then
								repeat task.wait()
									EquipWeapon(_G.Select_Weapon)
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO or _G.SuperFastAttack then game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) end
								until v.Humanoid.Health <= 0 or _G.AutoSaber == false
								_G.Auto_Saber = false
								if _G.Settings.Auto_Farm_Level then
									_G.Auto_Farm_Level = true
								end
								if v.Humanoid.Health <= 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
								end
							end
						end
					else 
						if _G.Auto_Saber_Hop then
							wait(3)
							Hop()
						end
					end
				end
			end)
		end
	end
end)
Item:AddToggle({Name = "Auto Pole", Default = false, Callback = function(value)
	_G.Auto_Pole = value
	_G.Settings.Auto_Pole = value
end
})
Item:AddToggle({Name = "Auto Pole [Hop]", Default = false, Callback = function(value)
	_G.Auto_Pole_Hop = value
end
})
spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Pole and game.ReplicatedStorage:FindFirstChild("Thunder God") or game.Workspace.Enemies:FindFirstChild("Thunder God") then
				if game.Workspace.Enemies:FindFirstChild("Thunder God") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Auto_Pole and v.Name == "Thunder God" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat wait()  
								AutoHaki()
								EquipWeapon(_G.Select_Weapon)
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Auto_Pole or v.Humanoid.Health <= 0 or not v.Parent
						end
					end
				else
					if _G.Auto_Pole_Hop then
						wait(2.5)
						Hop()
					end
					getgenv().ToTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436))
				end
			else
				if _G.Auto_Pole_Hop then
					wait(3)
					Hop()
				end
			end
		end)
	end
end)
Item:AddParagraph({"Factory", ""})
Item:AddToggle({Name = "Auto Factory Farm", Default = false, Callback = function(value)
    _G.Auto_Factory_Farm = value
    _G.Settings.Auto_Factory_Farm = value
end
})
spawn(function()
    while wait() do
        if _G.Auto_Factory_Farm then
            pcall(function()
                if game.Workspace.Enemies:FindFirstChild("Core") then
                    _G.FactoryCore = true
                    _G.Auto_Farm_Level = false
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if _G.FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
                            repeat wait()
                                AutoHaki()
                                EquipWeapon(_G.Select_Weapon)
                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.FactoryCore or v.Humanoid.Health <= 0 or _G.Auto_Factory_Farm == false
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild("Core") and game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
                    getgenv().ToTarget(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
                end
            end)
        end
    end
end)
Item:AddParagraph({"Hallow Sycthe World", ""})
Item:AddToggle({Name = "Auto Hallow Sycthe", Default = false, Callback = function(value)
	_G.AutoFarmBossHallow = value
	_G.Settings.AutoFarmBossHallow = value
end
})
task.spawn(function()
	while task.wait() do
			if _G.AutoFarmBossHallow then
				pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name , "Soul Reaper") then
							repeat task.wait()
								StartMagnet = true
								FastAttack = true
								if _G.AutoHaki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								EquipWeapon(_G.Select_Weapon)
								PosMon = v.HumanoidRootPart.CFrame
								if not _G.FastAttack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.CanCollide = false
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							until v.Humanoid.Health <= 0 or not _G.AutoFarmBossHallow
							StartMagnet = false
							FastAttack = false
						end
					end
				else
					getgenv().ToTarget(CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813))
				end
			end)
		end
	end
end)
Item:AddParagraph({"Ectoplasm", ""})
Item:AddToggle({Name = "Auto Ectoplasm", Default = false, Callback = function(value)
	_G.Auto_Farm_Ectoplasm = value
	_G.Settings.Auto_Farm_Ectoplasm = value
end
})
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Ectoplasm and MagnetEctoplasm and string.find(v.Name, "Ship") and (v.HumanoidRootPart.Position - PosMonEctoplasm.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonEctoplasm
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
		if _G.Auto_Farm_Ectoplasm then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name, "Ship") then
							repeat wait()
								AutoHaki()
								EquipWeapon(_G.Select_Weapon)
								PosMonEctoplasm = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								MagnetEctoplasm = true
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until _G.Auto_Farm_Ectoplasm == false or not v.Parent or v.Humanoid.Health <= 0
							MagnetEctoplasm = false
						else
							MagnetEctoplasm = false
							getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
						end
					end
				else 
					MagnetEctoplasm = false
					local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					if Distance > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
					getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
				end
			end)
		end
	end
end)
Item:AddParagraph({"Dark Coat", ""})
Item:AddToggle({Name = "Auto Dark Coat", Default = false, Callback = function(value)
	_G.Auto_Dack_Coat = value
	_G.Settings.Auto_Dack_Coat = value
end
})
task.spawn(function()
	while task.wait() do
		pcall(function()
				if _G.Auto_Dack_Coat then
					if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Darkbeard" or v.Name == "Darkbeard") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart")
							 then
								repeat
									task.wait()
									StartMagnet = true
									FastAttack = true
									if _G.AutoHaki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
										task.wait()
										EquipWeapon(_G.Select_Weapon)
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not _G.FastAttack then
										game:GetService "VirtualUser":CaptureController()
										game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
									v.HumanoidRootPart.CanCollide = false
									toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								until _G.Auto_Dack_Coat == false or v.Humanoid.Health <= 0
								StartMagnet = false
								FastAttack = false
							end
						end
					else
						toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
					end
				end
			end)
		end
    end)
    Item:AddParagraph({"Sea Beast", ""})
    Item:AddToggle({Name = "Auto Sea Beast", Default = false, Callback = function(value)
		_G.Auto_Sea_King = value
		_G.Settings.Auto_Sea_King = value
    end
    })
    local Sea_king_CFrame = {
		[1] = CFrame.new(210.99585, 12.9606171, 4158.57959, -0.917689145, 7.58163254e-11, -0.39729917, 1.20923558e-11, 1, 1.62898153e-10, 0.39729917, 1.44685583e-10, -0.917689145),
		[2] = ""
	}
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Auto_Sea_King then
					if workspace.SeaBeasts:FindFirstChild("SeaBeast1") then

						getgenv().ToTarget(workspace.SeaBeasts:FindFirstChild("SeaBeast1").HumanoidRootPart.CFrame * CFrame.new(0,460,0))
						for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v.ToolTip == "Sword" then
								if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
									EquipWeapon(v.Name)
								end
							end
						end
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
						wait(0.2)
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
						for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v.ToolTip == "Blox Fruit" then
								if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
									EquipWeapon(v.Name)
								end
							end
						end
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
						wait(0.2)
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
						wait(0.2)
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
						wait(0.2)
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
					wait(0.2)
				end
			end
		end)
	end
end)
Item:AddParagraph({"Swan Glasses", ""})
Item:AddToggle({Name = "Auto Swan Glasses", Default = false, Callback = function(value)
	_G.Auto_Swan_Glasses = value
	_G.Settings.Auto_Swan_Glasses = value
end
})
Item:AddToggle({Name = "Auto Swan Glasses [Hop]", Default = false, Callback = function(value)
	_G.Auto_Swan_Glasses_Hop = value
	_G.Settings.Auto_Swan_Glasses_Hop = value
end
})
spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Swan_Glasses and game.ReplicatedStorage:FindFirstChild("Don Swan") or game.Workspace.Enemies:FindFirstChild("Don Swan") then
				if game.Workspace.Enemies:FindFirstChild("Don Swan") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Auto_Swan_Glasses and v.Name == "Don Swan" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat wait()  
								EquipWeapon(_G.Select_Weapon)
								AutoHaki()
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Auto_Swan_Glasses or v.Humanoid.Health <= 0 or not v.Parent
						end
					end
				else
					getgenv().ToTarget(CFrame.new(2289.47900390625, 15.152046203613281, 739.512939453125))
				end
			else
				if _G.Auto_Swan_Glasses_Hop then
					Hop()
				end
			end
		end)
	end
end)
Item:AddParagraph({"Rainbow Haki", ""})
Item:AddToggle({Name = "Auto Rainbow Haki", Default = false, Callback = function(value)
	_G.Auto_Rainbow_Haki = value
	_G.Settings.Auto_Rainbow_Haki = value
end
})
Item:AddToggle({Name = "Auto Rainbow Haki [Hop]", Default = false, Callback = function(value)
	_G.Auto_Rainbow_Haki_Hop = value
	_G.Settings.Auto_Rainbow_Haki_Hop = value
end
})
spawn(function()
    while wait() do
        if _G.Auto_Rainbow_Haki then
            pcall(function()
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Stone") or game.Workspace.Enemies:FindFirstChild("Stone") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Stone" then
                                OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                repeat wait()
                                    AutoHaki()
                                    EquipWeapon(_G.Select_Weapon)
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        getgenv().ToTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                    end
                else
                    if _G.Auto_Rainbow_Haki_Hop then
                        wait(5)
                        Hop()
                    end
                end
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Island Empress") or game.Workspace.Enemies:FindFirstChild("Island Empress") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Island Empress" then
                                OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                repeat wait()
                                    AutoHaki()
                                    EquipWeapon(_G.Select_Weapon)
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        getgenv().ToTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                    end
                else
                    if _G.Auto_Rainbow_Haki_Hop then
                        wait(5)
                        Hop()
                    end
                end
            elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Kilo Admiral") or game.Workspace.Enemies:FindFirstChild("Kilo Admiral") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Kilo Admiral" then
                                OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                repeat wait()
                                    AutoHaki()
                                    EquipWeapon(_G.Select_Weapon)
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        getgenv().ToTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                    end
                else
                    if _G.Auto_Rainbow_Haki_Hop then
                        wait(5)
                        Hop()
                    end
                end
            elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Captain Elephant") or game.Workspace.Enemies:FindFirstChild("Captain Elephant") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant" then
                                OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                repeat wait()
                                    AutoHaki()
                                    EquipWeapon(_G.Select_Weapon)
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        getgenv().ToTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                    end
                else 
                    if _G.Auto_Rainbow_Haki_Hop then
                        wait(5)
                        Hop()
                    end
                end
            elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Beautiful Pirate") or game.Workspace.Enemies:FindFirstChild("Beautiful Pirate") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate"then 
                                OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                repeat wait()
                                    AutoHaki()
                                    EquipWeapon(_G.Select_Weapon)
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    else
                        getgenv().ToTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                    end
                else 
                    if _G.Auto_Rainbow_Haki_Hop then
                        wait(5)
                        Hop()
                    end
                end
            else
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
            end
        end)
    end
end
end)
Item:AddParagraph({"Item", ""})
Item:AddToggle({Name = "Auto Bartilo", Default = false, Callback = function(value)
	_G.Auto_Bartilo_Quest = value
	_G.Settings.Auto_Bartilo_Quest = value
end
})
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringNormal and BringMobFarm then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						end
					end
				end
			end
		end)
	end
end)			
spawn(function()
	while wait() do
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
			if _G.Auto_Bartilo_Quest and MyLevel >= 850 then
				pcall(function()
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
					_G.Auto_Farm_Level = false
					if QuestC.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Swan Pirate" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
										repeat task.wait()
											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											else
												PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Head.CanCollide = false
												BringMobFarm = true
												EquipWeapon(_G.Select_Weapon)
												v.HumanoidRootPart.Transparency = 1
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)

												if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
													_G.FastAttack = true
												end
											end
										until not _G.Auto_Bartilo_Quest or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
									end
								end
							end
						else
							BringMobFarm = false
							for i,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
								if v.Name == "Swan Pirate" then local CFrameEnemySpawns = v.CFrame  wait(0.5)
									getgenv().ToTarget(CFrameEnemySpawns * MethodFarm)
								end
							end
						end
					else
						repeat wait() getgenv().ToTarget(CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312)) until (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Bartilo_Quest
						if (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
							BringMobFarm = false
							game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
						end
					end
				elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
					_G.Auto_Farm_Level = false
					if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Jeremy" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat task.wait()
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false
										BringMobFarm = true
										EquipWeapon(_G.Select_Weapon)
										v.HumanoidRootPart.Transparency = 1
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)

										if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
											_G.FastAttack = true
										end
									until not _G.Auto_Bartilo_Quest or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
								end
							end
						end
					else
						getgenv().ToTarget(CFrame.new(2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-09, -0.656645238, -4.47752875e-08, 1, 4.50709301e-08, 0.656645238, 6.3393955e-08, -0.754199564))
					end
				elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
					repeat wait() getgenv().ToTarget(CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456)) until (CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or _G.Auto_Bartilo_Quest == false
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
					wait(2.5)
				end
			end)
		end
    end
end)
Item:AddToggle({Name = "Auto Evo Race", Default = false, Callback = function(value)
	_G.Auto_Evo_Race_V2 = value
	_G.Settings.Auto_Evo_Race_V2 = value
end
})
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Evo_Race_V2 and StartEvoMagnet and v.Name == "Swan Pirate" and (v.HumanoidRootPart.Position - PosMonEvo.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonEvo
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
			if _G.Auto_Evo_Race_V2 then
				pcall(function()
				if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
						getgenv().ToTarget(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
						if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
							wait(1.3)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
						pcall(function()
							if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
								getgenv().ToTarget(game:GetService("Workspace").Flower1.CFrame)
							elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
								getgenv().ToTarget(game:GetService("Workspace").Flower2.CFrame)
							elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Swan Pirate" then
											repeat wait()
												AutoHaki()
												EquipWeapon(_G.Select_Weapon)
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												PosMonEvo = v.HumanoidRootPart.CFrame
												StartEvoMagnet = true
											until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Evo_Race_V2 == false
											StartEvoMagnet = false
										end
									end
								else
									StartEvoMagnet = false
									getgenv().ToTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
								end
							end
						end)
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
					end
				end
			end)
		end
	end
end)
Item:AddToggle({Name = "Auto Rengoku Sword", Default = false, Callback = function(value)
	_G.Auto_Rengoku = value
	_G.Settings.Auto_Rengoku = value
end
})
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Rengoku and StartRengokuMagnet and (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and (v.HumanoidRootPart.Position - RengokuMon.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = RengokuMon
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
		if _G.Auto_Rengoku then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
					EquipWeapon("Hidden Key")
					getgenv().ToTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
				elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
							repeat wait()
								AutoHaki()
								EquipWeapon(_G.Select_Weapon)
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								RengokuMon = v.HumanoidRootPart.CFrame
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								StartRengokuMagnet = true
							until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Auto_Rengoku == false or not v.Parent or v.Humanoid.Health <= 0
							StartRengokuMagnet = false
						end
					end
				else
					StartRengokuMagnet = false
					getgenv().ToTarget(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
				end
			end)
		end
	end
end)
Item:AddToggle({Name = "Auto Legendary Sword", Default = false, Callback = function(value)
    _G.Auto_Buy_Legendary_Sword = value
    _G.Settings.Auto_Buy_Legendary_Sword = value
end
})
spawn(function()
    while wait() do
        if _G.Auto_Buy_Legendary_Sword then
            local args = {
                [1] = "LegendarySwordDealer",
                [2] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
Item:AddToggle({Name = "Auto Enchancement", Default = false, Callback = function(value)
    _G.Auto_Buy_Enchancement = value
    _G.Settings.Auto_Buy_Enchancement = value
end
})
spawn(function()
    while wait() do
        if _G.Auto_Buy_Enchancement then
            local args = {
                [1] = "ColorsDealer",
                [2] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end 
    end
end)
Item:AddToggle({Name = "Auto Musketeer", Default = false, Callback = function(value)
    _G.Auto_Musketeer_Hat = value
    _G.Settings.Auto_Musketeer_Hat = value
end
})
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Musketeer_Hat and StartMagnetMusketeerhat and v.Name == "Forest Pirate" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = MusketeerHatMon
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
            if _G.Auto_Musketeer_Hat then
                pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate" then
                                    repeat wait()
                                        pcall(function()
                                            AutoHaki()
                                            EquipWeapon(_G.Select_Weapon)
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            v.HumanoidRootPart.CanCollide = false
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            MusketeerHatMon = v.HumanoidRootPart.CFrame
                                            StartMagnetMusketeerhat = true
                                        end)
                                    until _G.Auto_Musketeer_Hat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    StartMagnetMusketeerhat = false
                                end
                            end
                        else
                            StartMagnetMusketeerhat = false
                            getgenv().ToTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                        end
                    else
                        getgenv().ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    OldCFrameElephant = v.HumanoidRootPart.CFrame
                                    repeat wait()
                                        pcall(function()
                                            AutoHaki()
                                            EquipWeapon(_G.Select_Weapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.CFrame = OldCFrameElephant
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        end)
                                    until _G.Auto_Musketeer_Hat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            getgenv().ToTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                        end
                    else
                        getgenv().ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                    getgenv().ToTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                end
            end)
        end
    end
end)
Item:AddToggle({Name = "Auto Holy Torch", Default = false, Callback = function(value)
    _G.Auto_Holy_Torch = value
    _G.Settings.Auto_Holy_Torch = value
end
})
spawn(function()
    while wait() do
        if _G.Auto_Holy_Torch then
            pcall(function()
                wait(1)
                repeat getgenv().ToTarget(CFrame.new(-10752, 417, -9366)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
                wait(1)
                repeat getgenv().ToTarget(CFrame.new(-11672, 334, -9474)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
                wait(1)
                repeat getgenv().ToTarget(CFrame.new(-12132, 521, -10655)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
                wait(1)
                repeat getgenv().ToTarget(CFrame.new(-13336, 486, -6985)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
                wait(1)
                repeat getgenv().ToTarget(CFrame.new(-13489, 332, -7925)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
            end)
        end
    end
end)
Item:AddToggle({Name = "Auto Yama", Default = false, Callback = function(value)
    _G.Auto_Yama = value
    _G.Settings.Auto_Yama = value
end
})
local Yama_All_Mon = {
    ["Mon Quest"] = {"Diablo","Deandre","Urban"},
    ["Mon"] = {"Diablo","Deandre","Urban"},
    ["Item"] = "God's Chalice",
}

spawn(function()
    while wait() do
        if _G.Auto_Yama then
            pcall(function()
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                else
                    local QuestUI = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                    for _,_l1 in ipairs(Yama_All_Mon["Mon Quest"]) do
                        for _,l in ipairs(Yama_All_Mon["Mon"]) do
                            if QuestUI.Visible == true and _G.Auto_Farm_Level ~= true then
                                if game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
                                    for _,_v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if _v1.Name == _l1 then
                                            if _v1:FindFirstChild("Humanoid") and _v1:FindFirstChild("HumanoidRootPart") and _v1.Humanoid.Health > 0 then
                                                repeat wait()
                                                    _v1.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    _v1.HumanoidRootPart.CanCollide = false
                                                    _v1.Head.CanCollide = false
                                                    BringMobFarm = true
                                                    EquipWeapon(_G.Select_Weapon)
                                                    _v1.HumanoidRootPart.Transparency = 1
                                                    getgenv().ToTarget(_v1.HumanoidRootPart.CFrame * MethodFarm)
                                                    AutoHaki()
                                                    if (_v1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                                        _G.FastAttack = true
                                                    end
                                                until not _G.Auto_Yama or _v1.Humanoid.Health <= 0 or not _v1.Parent
                                            end
                                        else
                                            if _G.Bypass_TP then
                                                if (game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                                    repeat wait()
                                                        Bypass(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
                                                    until not _G.Auto_Yama
                                                end
                                            end
                                            if game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
                                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
                                            end
                                        end
                                    end
                                end
                            else
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(Yama_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Yama_All_Mon["Item"]) then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                                    _G.Auto_Yama = false
                                    return
                                else
                                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." and not ( game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) ) then
                                        _G.Auto_Farm_Level = true
                                    else
                                        _G.Auto_Farm_Level = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

ObservationRange = Item:AddParagraph({"Observation", "Observation: "})

spawn(function()
	while wait() do
		ObservationRange:Set("Observation", "Observation Range Level : "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
	end
end)
Item:AddToggle({Name = "Auto Observation", Default = false, Callback = function(value)
	_G.AutoObservation = value 
	_G.Settings.AutoObservation = value
end
})
Item:AddToggle({Name = "Auto Observation [Hop]", Default = false, Callback = function(value)
	_G.AutoObservation_Hop = value 
	_G.Settings.AutoObservation_Hop = value
end
})
spawn(function()
	while wait() do
		pcall(function()
				if _G.Settings.AutoObservation then
					repeat
						task.wait()
						if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							local args = {
								[1] = "Ken",
								[2] = true
							}
						
							game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
						end
					until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
				end
			end)
		end
	end)

spawn(function()
			while wait() do
				if _G.Settings.AutoObservation then
					pcall(function()
					if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 6000 then
						Notification_ZekromHubX("<Color=Red>You Have Max Observation<Color=/>")
						wait(2)
					else
						if W2 then
							if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
								if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
									repeat
										task.wait()
										wait(1.5)
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
									until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								else
									repeat
										task.wait()
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
										if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
											wait(5)
											game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
										end
									until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								end
							else
								getgenv().ToTarget(CFrame.new(-5478.39209, 15.9775667, -5246.9126)) 
							end
						elseif W1 then
							if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
								if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
									repeat
										task.wait()
										wait(1.5)
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
									until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								else
									repeat
										task.wait()
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
										if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
											wait(5)
											game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
										end
									until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								end
							else
								getgenv().ToTarget(CFrame.new(5533.29785, 88.1079102, 4852.3916))
							end
						elseif W3 then
							if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
								if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
									repeat
										task.wait()
										wait(1.5)
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
									until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								else
									repeat
										task.wait()
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
										if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
											wait(5)
											game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
										end
									until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								end
							else
								getgenv().ToTarget(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
							end
						end
					end
				end)
			end
		end
	end)

    Item:AddParagraph({"Cursed Dual Katana", ""})

    Item:AddToggle({Name = "Auto Cursed Dual Katana", Default = false, Callback = function(value)
        _G.Auto_Cursed_Dual_Katana = value
    end
    })
    spawn(function()
        while wait() do
                if _G.Auto_Cursed_Dual_Katana then
                    pcall(function()
                    if GetWeaponInventory("Cursed Dual Katana") == true then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Cursed Dual Katana") or game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") then
        
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Cursed Dual Katana")
                        end
                    else
                        if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                    EquipWeapon("Tushita")
                                else
                                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                        if v.Name == "Tushita" and v:IsA("Tool") then
                                            if v.Level.Value >= 350 then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
                                                _G.Auto_Farm_Bone = false
                                            else
                                                _G.Select_Weapon = "Tushita"
                                                _G.Auto_Farm_Bone = true
                                            end
                                        end
                                    end
                                end
                            elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                    EquipWeapon("Yama")
                                else
                                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                        if v.Name == "Yama" and v:IsA("Tool") then
                                            if v.Level.Value >= 350 then
                                                Auto_CDK_Quest = true
                                                _G.Auto_Farm_Bone = false
                                            else
                                                _G.Select_Weapon = "Yama"
                                                _G.Auto_Farm_Bone = true
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
                        end      
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        while wait() do
                if Auto_CDK_Quest then
                    pcall(function()
                    if GetMaterial("Alucard Fragment") == 0 then
                        Auto_Quest_Yama_1 = true
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 1 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = true
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 2 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = true
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 3 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = true
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 4 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = true
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 5 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 6 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss") then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
                                        if v.Humanoid.Health > 0 then
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                    end
                                end
                            end
                        else
                            if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                                wait(1)
                                toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)
                                toTarget(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                            else
                                toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            end   
                        end
                    end
                end)
            end
        end
    end)
        
        spawn(function()
        while wait() do
            if Auto_Quest_Yama_1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mythological Pirate" then
                                repeat wait()
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                until not Auto_CDK_Quest or not _G.Auto_Cursed_Dual_Katana 
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                            end
                        end
                    else
                        toTarget(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                    end
                end)
            end
        end
        end)
        
        spawn(function()
        while wait() do
                if Auto_Quest_Yama_2 then
                    pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                end)
            end
        end
        end)
        
        spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonsEsp
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                            local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                            vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                            vc.Velocity = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end)
        
        spawn(function()
        while wait() do
            if Auto_Quest_Yama_2 then 
                pcall(function() 
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            repeat wait()
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    toTarget(v.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))
                                else
                                    StartMagnet = true
                                    FastAttack = true
                                    if _G.AutoHaki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChil(_G.Select_Weapon) then
                                        wait()
                                        EquipWeapon(_G.Select_Weapon)
                                    end
                                    PosMonsEsp = v.HumanoidRootPart.CFrame
                                    if not _G.FastAttack then
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))								
                                end      
                            until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                        else
                            for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if y:FindFirstChild("HazeESP") then
                                    if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                        toTarget(y.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
        
        spawn(function()
        while wait() do
            if Auto_Quest_Yama_3 then
                pcall(function()
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                        _G.Auto_Farm_Bone = false           
                        toTarget(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                    elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                StartMagnet = true
                                                FastAttack = true
                                                if _G.AutoHaki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChil(_G.Select_Weapon) then
                                                    wait()
                                                    EquipWeapon(_G.Select_Weapon)
                                                end
        
                                                PosMonsEsp = v.HumanoidRootPart.CFrame
                                                if not _G.FastAttack then
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                toTarget(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                toTarget(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                toTarget(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                toTarget(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                            end
                        until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Soul Reaper" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                            until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                        end
                                    end
                                end
                            else
                                toTarget(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                            end
                        else
                            _G.Auto_Farm_Bone = true
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                        end
                    end
                end)
            end
        end
        end)
        
        spawn(function() 
        while wait() do
            if Auto_Quest_Tushita_1 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
            end
        end
        end)
        
        spawn(function()
        while wait() do
            if Auto_Quest_Tushita_1 then
                toTarget(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
                wait(5)
                toTarget(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
                wait(5)
                toTarget(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
            end
        end
        end)
        
        spawn(function()
        while wait() do
            if Auto_Quest_Tushita_2 then
                pcall(function()
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat wait()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                                end
                            end
                        end
                    else
                        toTarget(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                    end
                end)
            end
        end
        end)
        
        spawn(function()
        while wait() do
            if Auto_Quest_Tushita_3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Queen" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChil(_G.Select_Weapon) then
                                                wait()
                                                EquipWeapon(_G.Select_Weapon)
                                            end
                                            if not _G.FastAttack then
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                        until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                    end
                                end
                            end
                        else
                            toTarget(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                        end
                    elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                if _G.AutoHaki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChil(_G.Select_Weapon) then
                                                    wait()
                                                    EquipWeapon(_G.Select_Weapon)
                                                end
                                                if not _G.FastAttack then
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                            end
                        until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or GetMaterial("Alucard Fragment") == 6
                    else
                        Hop()
                    end
                end)
            end
        end
    end)
    Item:AddToggle({Name = "Mob Aura", Default = false, Callback = function(value)
        MobAura = value
    end
    })
    task.spawn(function()
        while wait() do
                if MobAura then
                    pcall(function()
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if MobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
                            repeat wait()
                                StartMagnet = true
                                FastAttack = true
                                if _G.AutoHaki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
                                    wait()
                                    EquipWeapon(_G.Select_Weapon)
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not _G.FastAttack then
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                MagnetMobAura = true
                                if delay then
                                    delay(1,function()
                                        MagnetMobAura = true
                                    end)
                                end 
                            until not MobAura or not v.Parent or v.Humanoid.Health <= 0
                            MagnetMobAura = false
                            FastAttack = false
                            StartMagnet = false
                        end
                    end
                end)
            end
        end
    end)
    
    task.spawn(function()
        while wait() do
            pcall(function()
                local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                if MobAura then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if (v.HumanoidRootPart.Position-PosMonAura.Position).magnitude <= 350 then
                            v.HumanoidRootPart.CFrame = PosMonAura
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            v.Humanoid:ChangeState(11)
                        end
                    end
                end
            end)
        end
    end)
    _G.AutoSpawnCakePrince = true
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoSpawnCakePrince then
                pcall(function()
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
            end)
        end
        end
    end)
    end)
    Item:AddParagraph({"Bones", ""})
    Item:AddToggle({Name = "Auto Farm Bone", Default = false, Callback = function(value)
		_G.Auto_Farm_Bone = value
		_G.Auto_Farm_Bone = value
		_G.Settings.Auto_Farm_Bone = value
    end
    })
    Item:AddToggle({Name = "Auto Trade Bone", Default = false, Callback = function(value)
		_G.Auto_Trade_Bone = value
		_G.Settings.Auto_Trade_Bone = value
    end
    })
    local Number2 = 1
	local BoneTabel = {
		["Mon"] = {"Reborn Skeleton","Demonic Soul","Living Zombie","Posessed Mummy"},
		["Boss"] = {"Soul Reaper"},
		["Item"] = "Hallow Essence",
	}
	local SetCFarmeBone = 1
	function GetBone_CFrame_Mon()
		local matchingCFrames = {}
		for _, Mon in ipairs(BoneTabel["Mon"]) do
			local result = Mon:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")
			for _, v in ipairs(game.workspace.EnemySpawns:GetChildren()) do
				if v.Name == result then
					table.insert(matchingCFrames, v.CFrame)
				end
			end
		end
		return matchingCFrames
	end
	spawn(function()
		while wait() do
				if _G.Auto_Farm_Bone then
					pcall(function()
					for _, _Boss in ipairs(BoneTabel["Boss"]) do
						local _Item = BoneTabel["Item"]
						if game:GetService("Workspace").Enemies:FindFirstChild(_Boss) or game:GetService("ReplicatedStorage"):FindFirstChild(_Boss) then
							for _, _v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if string.find(_v1.Name, _Boss) then
									if _v1:FindFirstChild("Humanoid") and _v1:FindFirstChild("HumanoidRootPart") and _v1.Humanoid.Health > 0 then
										repeat wait()
											EquipWeapon(_G.Select_Weapon)
											_v1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
											BringMobFarm = true
											getgenv().ToTarget(_v1.HumanoidRootPart.CFrame * MethodFarm)
											if (_v1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
												_G.FastAttack = true
											end
										until not _G.Auto_Farm_Bone or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
										BringMobFarm = false
									end
								end
							end
						else
							if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_Item) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(_Item) then
								EquipWeapon(_Item)
								getgenv().ToTarget(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)
							else
								for _, _Mon in next, BoneTabel["Mon"] do
									if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if string.find(v.Name, _Mon) then
												if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														PosMon = v.HumanoidRootPart.CFrame
														EquipWeapon(_G.Select_Weapon)
														v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
														BringMobFarm = true
														getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
														if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
															_G.FastAttack = true
														end
													until not _G.Auto_Farm_Bone or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
												else
													local CFrameMon = GetBone_CFrame_Mon()[1]
													repeat wait() getgenv().ToTarget(CFrameMon) until (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Farm_Bone
												end
											end
										end
									else
										if _G.Auto_CFrame then
											getgenv().ToTarget(GetBone_CFrame_Mon()[SetCFarmeBone] * MethodFarm)
											if (GetBone_CFrame_Mon()[SetCFarmeBone].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
												if SetCFarmeBone == nil or SetCFarmeBone == '' then
													SetCFarmeBone = 1
												elseif SetCFarmeBone >= #GetBone_CFrame_Mon() then
													SetCFarmeBone = 1
												end
												SetCFarmeBone =  SetCFarmeBone + 1
			
												wait(0.5)
											end
										else
											if AttackRandomType_MonCFrame == 1 then
												getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,20))
											elseif AttackRandomType_MonCFrame == 2 then
												getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,-20))
											elseif AttackRandomType_MonCFrame == 3 then
												getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(20,30,0))
											elseif AttackRandomType_MonCFrame == 4 then
												getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,-20))
											elseif AttackRandomType_MonCFrame == 5 then
												getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(-20,30,0))
											else
												getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,20))
											end
										end
									end
								end
							end
						end
					end
				end)
			end
		end
	end)
	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.BringNormal and _G.Auto_Farm_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 1000 then
						v.HumanoidRootPart.CFrame = PosMonBone
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
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
		while wait(.1) do
			if _G.Auto_Trade_Bone then
				local args = {
					[1] = "Bones",
					[2] = "Buy",
					[3] = 1,
					[4] = 1
				}
	
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		end
	end)
    Item:AddParagraph({"Cake Prince", ""})

    spawn(function()
        while wait() do
            pcall(function()
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    Mob_Kill_Cake_Prince:Set("Cake Prince","Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    Mob_Kill_Cake_Prince:Set("Cake Prince","Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    Mob_Kill_Cake_Prince:Set("Cake Prince","Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
                else
                    Mob_Kill_Cake_Prince:Set("Boss Is Found")
                end
            end)
        end
    end)
    Item:AddToggle({Name = "Auto Cake Prince", Default = false, Callback = function(value)
        _G.Auto_Cake_Prince = value
        _G.Settings.Auto_Cake_Prince = value
    end
    })
    spawn(function()
        while wait() do
            if _G.Auto_Cake_Prince then
                pcall(function()
                    if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or  game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then   
                            if _G.BypassTP then
                            _G.BypassTP = false
                        end
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                            for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
                                if x.Name == "Cake Prince" or x.Name == "Dough King" then
                                    if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                        _G.BypassTP = false
                                        toTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                                        return
                                    end
                                end
                            end
                        end
    
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                            toTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                                            return
                                        end
                                        EquipWeapon(_G.Select_Weapon)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                        BringMob = true
                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                            _G.FastAttack = true
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.Auto_Cake_Prince or not v.Parent or v.Humanoid.Health <= 0
                                end
                            else
                                for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
                                    if x.Name == "Cake Prince" or x.Name == "Dough King" then
                                        if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                            toTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                                            return
                                        end
                                    end
                                end
                            end
                        end
                    else 
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Cake Prince") then
                            for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
                                if x.Name == "Cake Prince" or x.Name == "Dough King" then
                                    if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                        toTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                                        return
                                    end
                                end
                            end
                        else
                            if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                    if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            EquipWeapon(_G.Select_Weapon)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                            BringMob = true
                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                                _G.FastAttack = true
                                            end
                                        until _G.Auto_Cake_Prince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            else
                                BringMob = false
                                toTarget(GetCake_CFrame_Mon() * MethodFarm)
                                wait(0.5)
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.BringNormal and _G.Auto_Cake_Prince and StartCakeMagnet and (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
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
    StatusElite = Item:AddParagraph({"Elite Hunter", ""})
    spawn(function()
        while wait() do
            pcall(function()
                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                    StatusElite:Set("Elite Hunter", "Status : Found | Killed:  "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
                else
                    StatusElite:Set("Elite Hunter", "Status : Not Found | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
                end
            end)
        end
    end)
    Item:AddToggle({Name = "Auto Elite Hunter", Default = false, Callback = function(value)
        _G.Auto_Elite_Hunter = value
        _G.Settings.Auto_Elite_Hunter = value
    end
    })
    Item:AddToggle({Name = "Auto Elite Hunter [Hop]", Default = false, Callback = function(value)
        _G.Auto_Elite_Hunter_Hop = value 
        _G.Settings.Auto_Elite_Hunter_Hop = value
    end
    })
    local Elite_All_Mon = {
        ["Mon Quest"] = {"Diablo","Deandre","Urban"},
        ["Mon"] = {"Diablo","Deandre","Urban"},
        ["Item"] = "God's Chalice",
    }
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Elite_Hunter then
                    local QuestUI = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                    for _,_l1 in next,Elite_All_Mon["Mon Quest"] do
                        for _,l in next,Elite_All_Mon["Mon"] do
                            if QuestUI.Visible == true then
                                if game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
                                    for _,_1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if _1.Name == _l1 then
                                            if _1:FindFirstChild("Humanoid") and _1:FindFirstChild("HumanoidRootPart") and _1.Humanoid.Health > 0 then
                                                repeat wait()
                                                    EquipWeapon(_G.Select_Weapon)
                                                    _1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                                    getgenv().ToTarget(_1.HumanoidRootPart.CFrame * MethodFarm)
                                                    if (_1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                                        _G.FastAttack = true
                                                    end
                                                until _1.Humanoid.Health <= 0 or not _1.Parent or not game:GetService("Workspace").Enemies:FindFirstChild(l) or not game:GetService("ReplicatedStorage"):FindFirstChild(l) or not _G.Auto_Elite_Hunter
                                            end
                                        else
                                            if _G.Bypass_TP then
                                                if (game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                                    repeat wait()
                                                        Bypass(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
                                                    until not _G.Auto_Elite_Hunter
                                                end
                                            end
                                            if game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
                                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
                                            end
                                        end
                                    end
                                end
                            else
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(Elite_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Elite_All_Mon["Item"]) then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                                    _G.Auto_Elite_Hunter = false
                                    return
                                else
                                    if _G.Auto_Elite_Hunter_Hop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." and not ( game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) ) then
                                        _G.Rejoin = false
                                        wait(5)
                                        Hop()
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    local Stats = Window:MakeTab({Name = "Stats", Icon = "plus-circle"})

    Stats:AddSlider({
        Name = "Point",
        MinValue = 1,
        MaxValue = 100,
        Default = 1,
        Increase = 1,
        Callback = function(value)
          _G.StatsPoint = value
        end
      })

    Stats:AddToggle({Name = "Auto Melee", Default = false, Callback = function(value)
        AutoStatsMelee = value
    end
    })
    Stats:AddToggle({Name = "Auto Defense", Default = false, Callback = function(value)
        AutoStatsDefense = value
    end
    })
    Stats:AddToggle({Name = "Auto Sword", Default = false, Callback = function(value)
        AutoStatsSword = value
    end
    })
    Stats:AddToggle({Name = "Auto Gun", Default = false, Callback = function(value)
        AutoStatsGun = value
    end
    })
    Stats:AddToggle({Name = "Auto Devil Fruit", Default = false, Callback = function(value)
        AutoStatsDevilFruit = value
    end
    })


    spawn(function()
        while wait() do
            pcall(function()
                if AutoStatsMelee then
                    local args = {
                        [1] = "AddPoint",
                        [2] = "Melee",
                        [3] = _G.StatsPoint
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                elseif AutoStatsDefense then
                    local args = {
                        [1] = "AddPoint",
                        [2] = "Defense",
                        [3] = _G.StatsPoint
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                elseif AutoStatsSword then
                    local args = {
                        [1] = "AddPoint",
                        [2] = "Sword",
                        [3] = _G.StatsPoint
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                elseif AutoStatsGun then
                    local args = {
                        [1] = "AddPoint",
                        [2] = "Gun",
                        [3] = _G.StatsPoint
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                elseif AutoStatsDevilFruit then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Devil Fruit", _G.StatsPoint)
                end
            end)
        end
    end)

    local Shop = Window:MakeTab({Name = "Shop", Icon = "shopping-cart"})

    listShop =  {"Refund Stat [2,500F]","Reroll Race [3,000F]","Haki [25,00$]", "Geppo [10,000$]", "Soru [100,000$]", "KenHaki [750,000$]", "Black Leg [150,000$]", "Electro [500,000$]", "Fishman Karate [750,000$]", "Dragon Claw [1,500F]",
    "Superhuman [3,000,000]", "Death Step [2,500,000/5,000F]", "Sharkman Karate [2,500,000/5,000F]", "Electric Claw [3,000,000/5,000F]", "Dragon Talon [3,000,000/5,000F]", "Godhuman [5,000,000/5,000F]", "SanguineArt [5,000,000/5,000F]", "Katana [1,000]",
    "Cutlass [1,000]", "Duel Katana [12,000]", "Iron Mace [25,000]", "Pipe [100,000]", "Triple Katana [60,000]", "Dual-Headed Blade [400,000]", "Bisento [1,000,000]", "Soul Cane [750,000]", "Slingshot [5,000]", "Musket [8,000]", "Flintlock [10,500]", "Refined Flintlock [65,000]", "Cannon [100,000]", "Kabucha [1500F]",
    "Black Cape [50,000]", "Toemo Ring [500,000]", "Swordsman Hat [150,000]"}

    Shop:AddDropdown({
        Name = "Select Shop",
        Options = listShop,
        Default = {""},
        MultSelect = true,
        Callback = function(Value)
            _G.ListShopBuy = value
        end
      })

      Shop:AddButton({
        Name = "Buy On Shop List",
        Callback = function()
            if _G.ListShopBuy == "Refund Stat [2,500F]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")   
            elseif _G.ListShopBuy == "Reroll Race [3,000F]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
            elseif _G.ListShopBuy == "Haki [25,00$]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
            elseif _G.ListShopBuy == "Geppo [10,000$]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
            elseif _G.ListShopBuy == "Soru [100,000$]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
            elseif _G.ListShopBuy == "KenHaki [750,000$]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
            elseif _G.ListShopBuy == "Black Leg [150,000$]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
            elseif _G.ListShopBuy == "Electro [500,000$]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
            elseif _G.ListShopBuy == "Fishman Karate [750,000$]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
            elseif _G.ListShopBuy == "Dragon Claw [1,500F]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            elseif _G.ListShopBuy == "Superhuman [3,000,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
            elseif _G.ListShopBuy == "Death Step [2,500,000/5,000F]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
            elseif _G.ListShopBuy == "Sharkman Karate [2,500,000/5,000F]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
            elseif _G.ListShopBuy == "Electric Claw [3,000,000/5,000F]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
            elseif _G.ListShopBuy == "Dragon Talon [3,000,000/5,000F]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
            elseif _G.ListShopBuy == "Godhuman [5,000,000/5,000F]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
            elseif _G.ListShopBuy == "SanguineArt [5,000,000/5,000F]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
            elseif _G.ListShopBuy == "Katana [1,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
            elseif _G.ListShopBuy == "Cutlass [1,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
            elseif _G.ListShopBuy == "Duel Katana [12,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
            elseif _G.ListShopBuy == "Iron Mace [25,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
            elseif _G.ListShopBuy == "Pipe [100,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
            elseif _G.ListShopBuy == "Triple Katana [60,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
            elseif _G.ListShopBuy == "Dual-Headed Blade [400,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
            elseif _G.ListShopBuy == "Bisento [1,000,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
            elseif _G.ListShopBuy == "Soul Cane [750,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
            elseif _G.ListShopBuy == "Slingshot [5,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
            elseif _G.ListShopBuy == "Musket [8,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
            elseif _G.ListShopBuy == "Flintlock [10,500]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
            elseif _G.ListShopBuy == "Refined Flintlock [65,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
            elseif _G.ListShopBuy == "Cannon [100,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
            elseif _G.ListShopBuy == "Kabucha [1500F]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
            elseif _G.ListShopBuy == "Black Cape [50,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Black Cape")
            elseif _G.ListShopBuy == "Toemo Ring [500,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring")
            elseif _G.ListShopBuy == "Swordsman Hat [150,000]" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Swordsman Hat")
            end
        end
      })

local Island = Window:MakeTab({Name = "Island", Icon = "palmtree"})
if World1 then
    TeleportTable = {"StraterIsland", "Marine1", "Marine2", "Midle Town", "Jungle", "Pirate Village", "Desert",
    "Frozen Village", "Colosseum", "Prison", "Mob Leader", "Magma Village", "UnderWater Gate", "UnderWater City",
    "Fountain City", "Sky1", "Sky2", "Sky3" }
    elseif World2 then
    TeleportTable = { "Dock", "Mansion", "Kingdom Of Rose", "Cafe", "Sunflower Field", "Jeramy Mountain", "Colossuem",
    "Factory", "The Bridge", "Green Bit", "Graveyard", "Dark Area", "Snow Mountain", "Hot Island", "Cold Island",
    "Ice Castle", "Usopp's Island", "inscription Island", "Forgotten Island", "Ghost Ship" }
    elseif World3 then
    TeleportTable = { "Port Town", "Hydra Island", "Gaint Tree", "Mansion", "Castle on the Sea", "Haunted Castle",
    "Icecream Island", "Peanut Island", "Lab", "Cake Loaf", "TikiOutpost" }
end

Island:AddDropdown({
    Name = "Select Island",
    Options = TeleportTable,
    Default = {""},
    MultSelect = true,
    Callback = function(value)
        _G.SelectLocalTeleport = value
    end
  })

  Island:AddButton({
    Name = "Teleport To Island",
    Callback = function()
		if World1 then
			if _G.SelectLocalTeleport == "Jones Salad" then
				toTarget(CFrame.new(1042.1501464844, 16.299360275269, 1444.3442382813))
			end
			if _G.SelectLocalTeleport == "Marine1" then
				toTarget(CFrame.new(-2599.6655273438, 6.9146227836609, 2062.2216796875))
			end
			if _G.SelectLocalTeleport == "Marine2" then
				toTarget(CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188))
			end
			if _G.SelectLocalTeleport == "Midle Town" then
				toTarget(CFrame.new(-655.97088623047, 7.878026008606, 1573.7612304688))
			end
			if _G.SelectLocalTeleport == "Jungle" then
				toTarget(CFrame.new(-1499.9877929688, 22.877912521362, 353.87060546875))
			end
			if _G.SelectLocalTeleport == "Pirate Village" then
				toTarget(CFrame.new(-1163.3889160156, 44.777843475342, 3842.8276367188))
			end
			if _G.SelectLocalTeleport == "Desert" then
				toTarget(CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125))
			end
			if _G.SelectLocalTeleport == "Frozen Village" then
				toTarget(CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047))
			end
			if _G.SelectLocalTeleport == "Colosseum" then
				toTarget(CFrame.new(-1667.5869140625, 39.385631561279, -3135.5817871094))
			end
			if _G.SelectLocalTeleport == "Prison" then
				toTarget(CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422))
			end
			if _G.SelectLocalTeleport == "Mob Leader" then
				toTarget(CFrame.new(-2841.9604492188, 7.3560485839844, 5318.1040039063))
			end
			if _G.SelectLocalTeleport == "Magma Village" then
				toTarget(CFrame.new(-5328.8740234375, 8.6164798736572, 8427.3994140625))
			end
			if _G.SelectLocalTeleport == "UnderWater Gate" then
				toTarget(CFrame.new(3893.953125, 5.3989524841309, -1893.4851074219))
			end
			if _G.SelectLocalTeleport == "UnderWater City" then
				toTarget(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016))
			end
			if _G.SelectLocalTeleport == "Fountain City" then
				toTarget(CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969))
			end
			if _G.SelectLocalTeleport == "Sky1" then
				toTarget(CFrame.new(-4878.0415039063, 717.71246337891, -2637.7294921875))
			end
			if _G.SelectLocalTeleport == "Sky2" then
				toTarget(CFrame.new(-7899.6157226563, 5545.6030273438, -422.21798706055))
			end
			if _G.SelectLocalTeleport == "Sky3" then
				toTarget(CFrame.new(-7868.5288085938, 5638.205078125, -1482.5548095703))
			end
		elseif World2 then
			if _G.SelectLocalTeleport == "Dock" then
				toTarget(CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625))
			end
			if _G.SelectLocalTeleport == "Mansion" then
				toTarget(CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797))
			end
			if _G.SelectLocalTeleport == "Kingdom Of Rose" then
				toTarget(CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656))
			end
			if _G.SelectLocalTeleport == "Cafe" then
				toTarget(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
			end
			if _G.SelectLocalTeleport == "Sunflower Field" then
				toTarget(CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732))
			end
			if _G.SelectLocalTeleport == "Jeramy Mountain" then
				toTarget(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
			end
			if _G.SelectLocalTeleport == "Colossuem" then
				toTarget(CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719))
			end
			if _G.SelectLocalTeleport == "Factory" then
				toTarget(CFrame.new(349.53750610352, 74.446998596191, -355.62420654297))
			end
			if _G.SelectLocalTeleport == "The Bridge" then
				toTarget(CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578))
			end
			if _G.SelectLocalTeleport == "Green Bit" then
				toTarget(CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281))
			end
			if _G.SelectLocalTeleport == "Graveyard" then
				toTarget(CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125))
			end
			if _G.SelectLocalTeleport == "Dark Area" then
				toTarget(CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375))
			end
			if _G.SelectLocalTeleport == "Snow Mountain" then
				toTarget(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
			end
			if _G.SelectLocalTeleport == "Hot Island" then
				toTarget(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
			end
			if _G.SelectLocalTeleport == "Cold Island" then
				toTarget(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
			end
			if _G.SelectLocalTeleport == "Ice Castle" then
				toTarget(CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563))
			end
			if _G.SelectLocalTeleport == "Usopp's Island" then
				toTarget(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
			end
			if _G.SelectLocalTeleport == "inscription Island" then
				toTarget(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
			end
			if _G.SelectLocalTeleport == "Forgotten Island" then
				toTarget(CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188))
			end
			if _G.SelectLocalTeleport == "Ghost Ship" then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
					Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif World3 then
			if _G.SelectLocalTeleport == "Port Town" then
				toTarget(CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688))
			end
			if _G.SelectLocalTeleport == "Mansion" then
				local args = {
					[1] = "requestEntrance",
					[2] = Vector3.new(-12548.595703125, 337.17001342773, -7554.6103515625)
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
			if _G.SelectLocalTeleport == "Castle on the Sea" then
				local args = {
					[1] = "requestEntrance",
					[2] = Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875)
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
			if _G.SelectLocalTeleport == "Hydra Island" then
				toTarget(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))
			end
			if _G.SelectLocalTeleport == "Gaint Tree" then
				toTarget(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
			end
			if _G.SelectLocalTeleport == "Haunted Castle" then
				toTarget(CFrame.new(-9515.07324, 142.130615, 5537.58398))
			end
			if _G.SelectLocalTeleport == "Icecream Island" then
				toTarget(CFrame.new(-880.894531, 118.245354, -11030.7607, -0.867174983, 1.48501234e-09, 0.498003572,
					2.70457789e-08, 1, 4.41129586e-08, -0.498003572, 5.1722548e-08, -0.867174983))
			end
			if _G.SelectLocalTeleport == "Peanut Island" then
				toTarget(CFrame.new(-2124.06738, 44.0723495, -10179.8281, -0.623125494, -2.55908191e-07, -0.782121837,
					-1.40530574e-07, 1, -2.15235005e-07, 0.782121837, -2.42063933e-08, -0.623125494))
			end
			if _G.SelectLocalTeleport == "Lab" then
				toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
			end
			if _G.SelectLocalTeleport == "Cake Loaf" then
				toTarget(CFrame.new(-1977.36767578125, 251.509521484375, -12380.4189453125))
			end
			if _G.SelectLocalTeleport == "TikiOutpost" then
				toTarget(CFrame.new(-16753.5977, 189.528107, 451.797333, -0.777145505, 0, -0.629321039, 0, 1, 0, 0.629321039, 0, -0.777145505))
			end
			end
    end})

    Island:AddButton({
        Name = "Stop Teleport",
        Callback = function()
            toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
      })

    Island:AddParagraph({"Sea", ""})

    Island:AddButton({
        Name = "Teleport To Sea 1",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
      })
      Island:AddButton({
        Name = "Teleport To Sea 2",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
      })
      Island:AddButton({
        Name = "Teleport To Sea 3",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
      })

      Island:AddParagraph({"Other", ""})

      Island:AddButton({
        Name = "Teleport To Advanced Fruit Dealer",
        Callback = function()
            toTarget(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].Hair.Handle.Position))
        end
      })
      Island:AddButton({
        Name = "Teleport To Legendary Sword Dealer",
        Callback = function()
            toTarget(CFrame.new(game:GetService("Workspace").NPCs["Legendary Sword Dealer"].Hair.Handle.Position))
        end
      })
      Island:AddButton({
        Name = "Teleport To Master of Enhancement",
        Callback = function()
            toTarget(CFrame.new(game:GetService("Workspace").NPCs["Legendary Sword Dealer"].Hair.Handle.Position))
        end
      })

      --Sea Event

    local SeaEvent = Window:MakeTab({Name = "Sea Event", Icon = "rbxassetid://16175025368"})

    local ListBoat = {}
      for i,v in pairs(workspace.Boats:GetChildren()) do
        table.insert(ListBoat, v.Name)
    end

    local UpdateSBoat = SeaEvent:AddDropdown({
        Name = "Select Boat",
        Options = ListBoat,
        Default = {""},
        MultSelect = false,
        Callback = function(Value)
            _G.GetSelectBoat = Value
        end
      })
      spawn(function()
        while true do wait()
            UpdateSBoat:Set(ListBoat, true)
        end
      end)

      SeaEvent:AddButton({
        Name = "Bring Boat",
        Callback = function()
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Boats[_G.GetSelectBoat].Seat.CFrame
        end
      })

      
      SeaEvent:AddToggle({Name = "Teleport To Boat", Default = false, Callback = function(value)
        _G.TeleportToBoat = value
    end
    })

    SeaEvent:AddToggle({Name = "Spectate To Boat", Default = false, Callback = function(value)
        _G.SpectateBoat = value
    end
    })

    spawn(function()
        pcall(function()
            while wait() do
                if _G.SpectateBoat then
                    local plr1 = game.Players.LocalPlayer.Character.Humanoid
                    local plr2 = game:GetService("Workspace").Boats:FindFirstChild(_G.GetSelectBoat)
                    repeat wait(.1)
                    game.Workspace.Camera.CameraSubject = game:GetService("Workspace").Boats[_G.GetSelectBoat].VehicleSeat
                    until _G.SpectateBoat == false 
                    game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                end
            end
        end)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.TeleportToBoat then
                      Distance = (game:GetService("Workspace").Boats[_G.GetSelectBoat].VehicleSeat.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                      Speed = 220
                      tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                      tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace").Boats[_G.GetSelectBoat].VehicleSeat.CFrame})
                      tween:Play()
                      _G.Clip = true
                     wait(Distance/Speed)
                end
            end
        end)
    end)

      SeaEvent:AddSlider({
        Name = "Set Speed Boat",
        MinValue = 1,
        MaxValue = 800,
        Default = 400,
        Increase = 1,
        Callback = function(Value)
            SetSpeedBoat = Value
        end
      })

      SeaEvent:AddToggle({Name = "Speed Boat", Default = false, Callback = function(value)
        _G.SpeedBoat = value
    end
    })

    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.SpeedBoat then
            for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                    v:FindFirstChild("VehicleSeat").MaxSpeed = SetSpeedBoat
                end
            end
        end
    end)

    SeaEvent:AddToggle({Name = "No Clip Rock", Default = false, Callback = function(value)
        _G.Nocliprock = value
    end
    })
    spawn(function()
        while wait() do
            if _G.Nocliprock then
                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                    for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide == true then
                            v.CanCollide = false
                        end
                    end
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide == true then
                            v.CanCollide = false
                        end
                    end
                elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
                    for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide == false then
                            v.CanCollide = true
                        end
                    end
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide == false then
                            v.CanCollide = true
                        end
                    end
                end
            end
        end
    end)

    local UpdateSeaEvent = SeaEvent:AddParagraph({"Farm Sea", ""})

    task.spawn(function()
        while task.wait() do
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if string.find(v.Name, "Terror") then
                        StatusTerror = "Spawned"
                    else 
                        StatusTerror = "Not Spawned"
                    end
                end
                
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if string.find(v.Name, "Piranha") then
                        StatusSea = "Spawned"
                    else 
                        StatusSea = "Not Spawned"
                    end
                end
                
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if string.find(v.Name, "Shark") then
                        StatusSea1 = "Spawned"
                    else 
                        StatusSea1 = "Not Spawned"
                    end
                end
                
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if string.find(v.Name, "Fish Crew Member") then
                        StatusSea2 = "Spawned"
                    else 
                StatusSea2 = "Not Spawned"
            end
        end
     end)
    end
    end)

    task.spawn(function()
        while wait() do
            pcall(function()
                UpdateSeaEvent:Set("Farm Sea", "Terrorshark: "..StatusTerror.." | Piranha: "..StatusSea.." | Shark: "..StatusSea1.." | Fish Crew Member: "..StatusSea2) 
            end)
        end
    end)

    SeaEvent:AddToggle({Name = "Auto Kill Terrorshark", Default = false, Callback = function(value)
        _G.AutoKillTerrorshark = value
    end
    })
    spawn(function()
        while wait() do 
            if _G.AutoKillTerrorshark then 
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if string.find(v.Name , "Terror") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then 
                        if v.Humanoid.Health > 0 then 
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                EquipWeapon(_G.Select_Weapon)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                FastAttack = true
                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                if not FastAttack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                            until not _G.AutoKillTerrorshark or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) 
                        end
                    end
                end
            end
        end
    end)
    SeaEvent:AddToggle({Name = "Auto Kill Piranha", Default = false, Callback = function(value)
        _G.AutoKillPiranha = value
    end
    })
    spawn(function()
        while wait() do 
            if _G.AutoKillPiranha then 
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if string.find(v.Name , "Piranha") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then 
                        if v.Humanoid.Health > 0 then 
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                EquipWeapon(_G.Select_Weapon)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                FastAttack = true
                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                if not FastAttack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                            until not _G.AutoKillPiranha or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) 
                        end
                    end
                end
            end
        end
    end)
    SeaEvent:AddToggle({Name = "Auto Kill Shark", Default = false, Callback = function(value)
        _G.AutoKillShark = value
    end
    })
    spawn(function()
        while wait() do 
            if _G.AutoKillShark then 
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if string.find(v.Name , "Shark") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then 
                        if v.Humanoid.Health > 0 then 
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                EquipWeapon(_G.Select_Weapon)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                FastAttack = true
                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                if not FastAttack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                            until not _G.AutoKillShark or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) 
                        end
                    end
                end
            end
        end
    end)
    SeaEvent:AddToggle({Name = "Auto Kill Fish Crew Member", Default = false, Callback = function(value)
        _G.AutoKillFishCrewMember = value
    end
    })
    spawn(function()
        while wait() do 
            if _G.AutoKillFishCrewMember then 
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if string.find(v.Name , "Fish Crew Member") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then 
                        if v.Humanoid.Health > 0 then 
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                EquipWeapon(_G.Select_Weapon)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                FastAttack = true
                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                if not FastAttack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                            until not _G.AutoKillFishCrewMember or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) 
                        end
                    end
                end
            end
        end
    end)

local Checker = Window:MakeTab({Name = "Checker Server", Icon = "rbxassetid://16158113889"})

local SetUpdateMoon = Checker:AddLabel({"Image", "Checker Moon", "rbxassetid://"})

spawn(function()
    while true do wait()
        if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
            SetUpdateMoon:Set("Full Moon : 100%", "rbxassetid://16158139790")
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
            SetUpdateMoon:Set("Full Moon : 75%", "rbxassetid://16158178662")
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
            SetUpdateMoon:Set("Full Moon : 50%", "rbxassetid://16158196020")
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
            SetUpdateMoon:Set("Full Moon : 25%", "rbxassetid://16158212563")
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
            SetUpdateMoon:Set("Full Moon : 15%", "rbxassetid://16158236922")
        else
            SetUpdateMoon:Set("Full Moon : 0%", "rbxassetid://16158271479")
        end
    end
end)

local SetUpdateMirage = Checker:AddLabel({"Image", "Checker Mirage Island", "rbxassetid://"})

spawn(function()
    while true do wait()
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
            SetUpdateMirage:Set("Mirage Island Is Spawned", "rbxassetid://16158397674")
        else
            SetUpdateMirage:Set("Mirage Island Is Not Spawned", "rbxassetid://16158431039")
        end
    end
end)

Checker:AddToggle({Name = "Auto Teleport To Mirage Island", Default = false, Callback = function(value)
    _G.Mirage = value
    _G.Settings.Mirage = value
end
})
spawn(function()
    pcall(function()
        while task.wait() do
            if _G.Mirage then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    toTarget(workspace.Map.MysticIsland.PrimaryPart.CFrame * CFrame.new(0, 300, 0))
                end
            end
        end
    end)
end)
Checker:AddToggle({Name = "Auto Teleport To Gear", Default = false, Callback = function(value)
    _G.Auto_Gear = value
end
})
Checker:AddToggle({Name = "Auto Teleport To Blue Gear", Default = false, Callback = function(value)
    _G.AutoTPBlue = value
end
})
if _G.AutoTPBlue then
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        for r, v in pairs(game.workspace.Map.MysticIsland:GetChildren()) do
            if v:IsA("MeshPart") and v.MeshId == "rbxassetid://10153114969" then
                toTarget(v.CFrame)
            end
        end
    end
end
task.spawn(function()
    while task.wait(.01) do
        if _G.Auto_Gear then
            for i,v in pairs(game:GetService("Workspace").Map:FindFirstChild('MysticIsland'):GetChildren()) do
                if v.Name == "Part" then
                    if v.ClassName == "MeshPart" then
                        toTarget(v.CFrame)
                        v.Transparency = 0
                    end
                end
            end
        end
    end
end)
spawn(function()
    pcall(function()
        while task.wait() do
            if _G.Mirage then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    toTarget(workspace.Map.MysticIsland.PrimaryPart.CFrame * CFrame.new(0, 300, 0))
                end
            end
        end
    end)
end)

local SetUpdateKitsune = Checker:AddLabel({"Image", "Checker kitsune Island", "rbxassetid://"})

spawn(function()
    while true do wait()
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
            SetUpdateKitsune:Set("Kitsune Island Is Spawned", "rbxassetid://16176370113")
        else
            SetUpdateKitsune:Set("Kitsune Island Is Not Spawned", "rbxassetid://16176375230")
        end
    end
end)
Checker:AddToggle({Name = "Auto Teleport To Kitsune Island", Default = false, Callback = function(value)
    _G.TptoKisuneIsland = value
end
})
Checker:AddToggle({Name = "Auto Teleport To Kitsune Shrine", Default = false, Callback = function(value)
    _G.TptoKisuneshrine = value
end
})
spawn(function()
    while task.wait() do
        if _G.TptoKisuneshrine then
            toTarget(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,0,10))
        end
    end
end)
spawn(function()
    while task.wait() do
        if _G.TptoKisuneIsland then
            toTarget(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,100,0))
        end
    end
end)
Checker:AddToggle({Name = "Auto Collect Azure Ember", Default = false, Callback = function(value)
    _G.GetAzureEmber = value
end
})
spawn(function()
    while _G.GetAzureEmber do wait()
        pcall(function()
            if game.Workspace:FindFirstChild('EmberTemplate') then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.EmberTemplate.Part.CFrame
            end
        end)
    end
end)

local Dungeon = Window:MakeTab({Name = "Dungeon/ESP", Icon = "rbxassetid://11446957539"})
local SelectRaids = {
    "Flame",
    "Ice",
    "Quake",
    "Light",
    "Dark",
    "String",
    "Rumble",
    "Magma",
    "Human: Buddha",
    "Sand",
    "Bird: Phoenix",
    "Dough"
}
Dungeon:AddDropdown({
    Name = "Select Chips Dungeon",
    Options = SelectRaids,
    Default = {"Flame"},
    MultSelect = false,
    Callback = function(value)
        _G.Select_Dungeon = value
        _G.Settings.Select_Dungeon = value
    end
  })
  Dungeon:AddToggle({Name = "Auto Buy Chips Dungeon", Default = false, Callback = function(value)
    _G.Auto_Buy_Chips_Dungeon = value    
	_G.Settings.Auto_Buy_Chips_Dungeon = value
end
})
spawn(function()
	while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = _G.Select_Dungeon
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
	end
end)
Dungeon:AddToggle({Name = "Auto Start Dungeon", Default = false, Callback = function(value)
	_G.Auto_Start_Dungeon = value  
	_G.Settings.Auto_Start_Dungeon = value
end
})
spawn(function()
	while wait() do
		if _G.Auto_Start_Dungeon then
			pcall(function()
				if W2 then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then 
							fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						end
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						Notification_ZekromHubX("<Color=Yellow>The Dungeon Has Started<Color=/>") 
					end
				elseif W3 then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
							fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						Notification_ZekromHubX("<Color=Yellow>The Dungeon Has Started<Color=/>") 
					end
				end
			end)
		end
	end
end)
Dungeon:AddToggle({Name = "Kill Aura", Default = false, Callback = function(value)
	_G.Kill_Aura = value
	_G.Settings.Kill_Aura = value
end
})
spawn(function()
	while wait() do
		if _G.Kill_Aura then
			for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
				if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					pcall(function()
						repeat wait(.1)
							v.Humanoid.Health = 0
							v.HumanoidRootPart.CanCollide = false
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						until not _G.Kill_Aura  or not v.Parent or v.Humanoid.Health <= 0
					end)
				end
			end
		end
	end
end)
Dungeon:AddToggle({Name = "Auto Next Island", Default = false, Callback = function(value)
	_G.Auto_Next_Island = value  
	_G.Settings.Auto_Next_Island = value
end
})
spawn(function()
	while wait() do
		if _G.Auto_Next_Island then
			if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame * CFrame.new(4, 65, 10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame *  CFrame.new(4, 65, 10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame * CFrame.new(4, 65, 10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame * CFrame.new(4, 65, 10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame * CFrame.new(4, 65, 10))
				end
			end
		end
	end
end)
Dungeon:AddToggle({Name = "Auto Awakened", Default = false, Callback = function(value)
	_G.Auto_Awake = value 
	_G.Settings.Auto_Awake = value
end
})
spawn(function()
	while wait(.1) do
		if _G.Auto_Awake then
			pcall(function()
				local args = {
					[1] = "Awakener",
					[2] = "Check"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "Awakener",
					[2] = "Awaken"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
	end
end)
if W2 then
    Dungeon:AddParagraph({"Law Dungeon", ""})
    Dungeon:AddToggle({Name = "Auto Buy Law Chips", Default = false, Callback = function(value)
        _G.Auto_Buy_Law_Chip = value   
        _G.Settings.Auto_Buy_Law_Chip = value
    end
    })
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
    Dungeon:AddToggle({Name = "Auto Start Law Dungeon", Default = false, Callback = function(value)
        _G.Auto_Start_Law_Dungeon = value    
        _G.Settings.Auto_Start_Law_Dungeon = value
    end
    })
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
    Dungeon:AddToggle({Name = "Auto Kill Law", Default = false, Callback = function(value)
        _G.Auto_Kill_Law = value 
        _G.Settings.Auto_Kill_Law = value
    end
    })
    spawn(function()
        while wait() do
            if _G.Auto_Kill_Law then
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if _G.Auto_Kill_Law and v.Name == "Order" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.Select_Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until not _G.Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end
                    end 
                end)
            end
        end
    end)
end

Dungeon:AddParagraph({"ESP", ""})
Dungeon:AddToggle({Name = "ESP PLayer", Default = false, Callback = function(value)
    ESPPlayer = value
end
})
Dungeon:AddToggle({Name = "ESP Chest", Default = false, Callback = function(value)
    ChestESP = value
end
})
Dungeon:AddToggle({Name = "ESP Fruit Devil", Default = false, Callback = function(value)
	DevilFruitESP = value
end
})
Dungeon:AddToggle({Name = "ESP Flower", Default = false, Callback = function(value)
    FlowerESP = value
end
})
Dungeon:AddToggle({Name = "ESP Island", Default = false, Callback = function(value)
    IslandESP = value
end
})
Dungeon:AddToggle({Name = "ESP Sea Beast", Default = false, Callback = function(value)
    SeaBeastsESP = value
end
})

local PvP = Window:MakeTab({Name = "PvP", Icon = "rbxassetid://16053202595"})

local PlayerList = {}
for i,v in pairs(game.Players:GetChildren()) do  
    table.insert(PlayerList ,v.Name)
end
local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
  local method = getnamecallmethod()
  local args = {
	...
  }
  if tostring(method) == "FireServer" then
  if tostring(args[1]) == "RemoteEvent" then
  if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
  if AimbotSkill then
  args[2] = _G.AimBotSkillPosition
  return old(unpack(args))
  end
  end
  end
  end
  return old(...)
end)

spawn(function()
  pcall(function()
	while task.wait() do
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
	if v:IsA("Tool") then
	if v:FindFirstChild("RemoteFunctionShoot") then
	CurrentEquipGun = v.Name
	end
	end
	end
	end
	end)
end)

local UpdatePlayer = PvP:AddDropdown({
    Name = "Select Player",
    Options = PlayerList,
    Default = {""},
    MultSelect = false,
    Callback = function(value)
        SelectPly = value
    end
  })
  spawn(function()
    while true do wait()
        UpdatePlayer:Set(PlayerList, true)
    end
  end)
  PvP:AddToggle({Name = "Teleport To Player", Default = false, Callback = function(value)
    TeleportPlayer = value
    pcall(function()
        if TeleportPlayer then
            repeat task.wait()
                Tween(game:GetService("Players")[SelectPly].Character.HumanoidRootPart.CFrame) 
                wait() 
            until TeleportPlayer == false
        end
	end)
end
})
PvP:AddToggle({Name = "Spectate To Player", Default = false, Callback = function(value)
    SpectatePlayer = value
    pcall(function()
        repeat task.wait()
            game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(SelectPly).Character.Humanoid
        until SpectatePlayer == false
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    end)
end
})
PvP:AddToggle({Name = "Aimbot Skill", Default = false, Callback = function(value)
    AimbotSkill = value
	_G.AimBotSkillPosition = value
end
})
spawn(function()
    pcall(function()
        while task.wait() do
            if AimbotSkill and SelectPly ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                local args = {
                    [1] = game:GetService("Players"):FindFirstChild(SelectPly).Character.HumanoidRootPart.Position
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
            end
        end
    end)
end)
PvP:AddToggle({Name = "Aimbot Gun", Default = false, Callback = function(value)
    AimbotGun = value
end
})
game:GetService('Players').LocalPlayer:GetMouse().Button1Down:Connect(function()
    if AimbotGun and game.Players.LocalPlayer.Character:FindFirstChild(CurrentEquipGun) and game:GetService("Players"):FindFirstChild(SelectPly) then
        tool = game:GetService("Players").LocalPlayer.Character[CurrentEquipGun]
        GetAimbotGun = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(SelectPly).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
        game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(SelectPly).Character.HumanoidRootPart.Position, (game.ReplicatedStorage.Util.Other.hrpFromPart(GetAimbotGun)));
    end 
end)
PvP:AddToggle({Name = "Auto Kill Player", Default = false, Callback = function(value)
    _G.AutoKillPlayer = value
end
})
spawn(function()
    while task.wait() do
        if _G.AutoKillPlayer then
            pcall(function()
                if game.Players:FindFirstChild(SelectPly) then
                    for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if v.Name == SelectPly then
                            repeat task.wait()
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,30))
                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    EquipWeapon(_G.Select_Weapon)
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame)
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)                                 
                                end
                            until game.Players:FindFirstChild(SelectPly).Character.Humanoid.Health <= 0 or not _G.AutoKillPlayer or not game.Players:FindFirstChild(SelectPly)
                        end
                    end
                end
            end)
        end
    end
end)
PvP:AddParagraph({"PvP", ""})
PvP:AddToggle({Name = "Enable PvP", Default = false, Callback = function(value)
    _G.EnabledPvP = value
end
})
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
PvP:AddToggle({Name = "Safe Mode", Default = false, Callback = function(value)
    _G.Safe_Mode = value
end
})
spawn(function()
	pcall(function()
		while wait(.1) do
			if _G.Safe_Mode then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			end
		end
	end)
end)
PvP:AddButton({
    Name = "Respawn",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
    end
  })

  local RaceV4 = Window:MakeTab({Name = "Race V4", Icon = "rbxassetid://16053202595"})

  function LockMoon()
    local Lighting = game:GetService("Lighting")
    local Cam = game.Workspace.CurrentCamera
    local CFNew, CFAng = CFrame.new, CFrame.Angles
    local asin = math.asin
    
    local Camera = workspace.CurrentCamera
    local Player = game.Players.LocalPlayer
    local Character = Player.Character
    local Root = Character:WaitForChild("HumanoidRootPart")
    local Neck = Character:FindFirstChild("Neck", true)
    local YOffset = Neck.C0.Y
    game:GetService("RunService").RenderStepped:Connect(function()
    if _G.LockMoon then
        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
    
        local pos = Vector3.new(0, 0, 0)
        local lookAt = game:GetService("Lighting"):GetMoonDirection()
        local cameraCFrame = CFrame.new(pos, lookAt)
        workspace.CurrentCamera.CFrame = cameraCFrame
        local CameraDirection = Root.CFrame:toObjectSpace(cameraCFrame).lookVector.unit
        if Neck and Lock then
            Neck.C0 = CFNew(0, YOffset, 0) * CFAng(0, -asin(CameraDirection.x), 0) * CFAng(asin(CameraDirection.y), 0, 0)
        end
    else
        Cam.FieldOfView = 70
    end
    end)
end
LockMoon()
RaceV4:AddToggle({Name = "Auto Set Show Moon", Default = false, Callback = function(value)
    _G.LockMoon = value
end
})
RaceV4:AddButton({
    Name = "Teleport To Top Great Tree",
    Callback = function()
        toTarget(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625))
    end
  })
  RaceV4:AddButton({
    Name = "Teleport To Timple Of Time",
    Callback = function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875,14895.3017578125, 102.62469482421875)
    end
  })
  RaceV4:AddButton({
    Name = "Teleport To Lever Pull",
    Callback = function()
        toTarget(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
  })
  RaceV4:AddButton({
    Name = "Teleport To Acient One",
    Callback = function()
        toTarget(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
  })
  RaceV4:AddButton({
    Name = "Unlock Lever",
    Callback = function()
        if game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt") then
            game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt"):Remove()
        else
        end
        wait(0.1)
        local ProximityPrompt = Instance.new("ProximityPrompt")
        ProximityPrompt.Parent = game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt
        ProximityPrompt.MaxActivationDistance = 10
        ProximityPrompt.ActionText = "Secrets Beholds Inside"
        ProximityPrompt.ObjectText = "An unknown lever of time"
        function onProximity()
            local part = game:GetService("Workspace").Map["Temple of Time"].MainDoor1
            local TweenService = game:GetService("TweenService")
            local startPosition = part.Position
            local endPosition = startPosition + Vector3.new(0, -50, 0)
            local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
            local tween = TweenService:Create(part, tweenInfo, { Position = endPosition })
            tween:Play()
            local partnew = game:GetService("Workspace").Map["Temple of Time"].MainDoor2
            local TweenService = game:GetService("TweenService")
            local startPosition = partnew.Position
            local endPosition = startPosition + Vector3.new(0, -50, 0)
            local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
            local tween = TweenService:Create(partnew, tweenInfo, { Position = endPosition })
            tween:Play()
            local SoundSFX = Instance.new("Sound")
            SoundSFX.Parent = workspace
            SoundSFX.SoundId = "rbxassetid://1904813041"
            SoundSFX:Play()
            SoundSFX.Name = "POwfpxzxzfFfFF"
            game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt"):Remove()
            wait(5)
            workspace:FindFirstChild("POwfpxzxzfFfFF"):Remove()
            game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove()
            game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove()
            game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove()
        end
        ProximityPrompt.Triggered:Connect(onProximity)
    end
  })
  RaceV4:AddButton({
    Name = "Telepor To Cyborg Door",
    Callback = function()
        toTarget(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
    end
  })
  RaceV4:AddButton({
    Name = "Telepor To Fish Door",
    Callback = function()
        toTarget(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
    end
  })
  RaceV4:AddButton({
    Name = "Telepor To Ghoul Door",
    Callback = function()
        toTarget(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
    end
  })
  RaceV4:AddButton({
    Name = "Telepor To Human Door",
    Callback = function()
        toTarget(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
    end
  })
  RaceV4:AddButton({
    Name = "Telepor To Mink Door",
    Callback = function()
        toTarget(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
    end
  })
  RaceV4:AddButton({
    Name = "Telepor To Sky Door",
    Callback = function()
        toTarget(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
    end
  })

local Fruit = Window:MakeTab({Name = "Fruit", Icon = "apple"})

local FruitList = {}
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do  
    if v:IsA("Tool") and string.find(v.Name,"Fruit") then
    table.insert(FruitList ,v.Name)
    end
end

local UpdateFruitList = Fruit:AddDropdown({
    Name = "Select Fruit",
    Options = FruitList,
    Default = {""},
    MultSelect = false,
    Callback = function(value)
      _G.GetListFruit = value
    end
  })
  spawn(function()
    while true do wait() 
        UpdateFruitList:Set(FruitList, true)
    end
  end)
Fruit:AddToggle({Name = "Auto Eat Fruit", Default = false, Callback = function(value)
    _G.AutoEatFruit = value
end
})
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoEatFruit then
                game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.GetListFruit).EatRemote:InvokeServer()
            end
        end
    end)
end)
Fruit:AddToggle({Name = "Fruit Inventory", Default = false, Callback = function(value)
    _G.Get_Fruit = value
end
})
spawn(function()
    while wait(.5) do
        pcall(function()
            if _G.Get_Fruit then
                if Inventory_Fruit then
                    Inventory_Fruit = nil
                end
                fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
                for i,v in pairs(fruit) do
                    if v["Price"] < 10000000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                    end
                end
			else
				wait(2)
            end
        end)
    end
end)
Fruit:AddToggle({Name = "Auto Random Fruit", Default = false, Callback = function(value)
    _G.Random_Auto = value
end
})
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
    end)
end)

local function Get_Fruit(Fruit)
    if Fruit == "Rocket Fruit" then
      return "Rocket-Rocket"
    elseif Fruit == "Spin Fruit" then
      return "Spin-Spin"
    elseif Fruit == "Chop Fruit" then
      return "Chop-Chop"
    elseif Fruit == "Spring Fruit" then
      return "Spring-Spring"
    elseif Fruit == "Bomb Fruit" then
      return "Bomb-Bomb"
    elseif Fruit == "Smoke Fruit" then
      return "Smoke-Smoke"
    elseif Fruit == "Spike Fruit" then
      return "Spike-Spike"
    elseif Fruit == "Flame Fruit" then
      return "Flame-Flame"
    elseif Fruit == "Falcon Fruit" then
      return "Falcon-Falcon"
    elseif Fruit == "Ice Fruit" then
      return "Ice-Ice"
    elseif Fruit == "Sand Fruit" then
      return "Sand-Sand"
    elseif Fruit == "Dark Fruit" then
      return "Dark-Dark"
    elseif Fruit == "Ghost Fruit" then
      return "Ghost-Ghost"
    elseif Fruit == "Diamond Fruit" then
      return "Diamond-Diamond"
    elseif Fruit == "Light Fruit" then
      return "Light-Light"
    elseif Fruit == "Rubber Fruit" then
      return "Rubber-Rubber"
    elseif Fruit == "Barrier Fruit" then
      return "Barrier-Barrier"
    elseif Fruit == "Magma Fruit" then
      return "Magma-Magma"
    elseif Fruit == "Quake Fruit" then
      return "Quake-Quake"
    elseif Fruit == "Buddha Fruit" then
      return "Buddha-Buddha"
    elseif Fruit == "Love Fruit" then
      return "Love-Love"
    elseif Fruit == "Spider Fruit" then
      return "Spider-Spider"
    elseif Fruit == "Sound Fruit" then
      return "Sound-Sound"
    elseif Fruit == "Phoenix Fruit" then
      return "Phoenix-Phoenix"
    elseif Fruit == "Portal Fruit" then
      return "Portal-Portal"
    elseif Fruit == "Rumble Fruit" then
      return "Rumble-Rumble"
    elseif Fruit == "Pain Fruit" then
      return "Pain-Pain"
    elseif Fruit == "Blizzard Fruit" then
      return "Blizzard-Blizzard"
    elseif Fruit == "Gravity Fruit" then
      return "Gravity-Gravity"
    elseif Fruit == "Mammoth Fruit" then
      return "Mammoth-Mammoth"
    elseif Fruit == "Dough Fruit" then
      return "Dough-Dough"
    elseif Fruit == "Shadow Fruit" then
      return "Shadow-Shadow"
    elseif Fruit == "Venom Fruit" then
      return "Venom-Venom"
    elseif Fruit == "Control Fruit" then
      return "Control-Control"
    elseif Fruit == "Spirit Fruit" then
      return "Spirit-Spirit"
    elseif Fruit == "Dragon Fruit" then
      return "Dragon-Dragon"
    elseif Fruit == "Leopard Fruit" then
      return "Leopard-Leopard"
    end
  end

Fruit:AddToggle({Name = "Auto Store Fruit", Default = false, Callback = function(value)
    _G.AutoStoreFruits = value
end
})
task.spawn(function()
  while _G.AutoStoreFruits do task.wait()
    pcall(function()
      for _,Fruit in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Get_Fruit(Fruit.Name), Fruit)
        end
      end
      for _,Fruit in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Get_Fruit(Fruit.Name), Fruit)
        end
      end
    end)
  end
end)
Fruit:AddButton({
    Name = "Rain Fruit",
    Callback = function()
        for i, v in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
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
  })

  local Misc = Window:MakeTab({Name = "Misc", Icon = "rbxassetid://11447063791"})

  Misc:AddButton({
    Name = "Hop Server",
    Callback = function()
        Teleport()
    end
  })
  Misc:AddButton({
    Name = "Hop Low Player Server",
    Callback = function()
        Hop()
    end
  })
  Misc:AddButton({
    Name = "Rejoin",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
  })
  Misc:AddParagraph({"Team", ""})

  Misc:AddButton({
    Name = "Join Pirates [Team]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
    end
  })
  Misc:AddButton({
    Name = "Join Marines [Team]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
    end
  })
  Misc:AddParagraph({"Misc", ""})
  Misc:AddButton({
    Name = "Devil Shop",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
  })
  Misc:AddButton({
    Name = "Color Haki",
    Callback = function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end
  })
  Misc:AddButton({
    Name = "Color Haki",
    Callback = function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end
  })
  Misc:AddButton({
    Name = "Title Name",
    Callback = function()
        local args = {
            [1] = "getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end
  })
  Misc:AddButton({
    Name = "Awakening",
    Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
    end
  })
  Misc:AddButton({
    Name = "Remove Fog",
    Callback = function()
        game:GetService("Lighting").LightingLayers:Destroy()
	    game:GetService("Lighting").Sky:Destroy()
    end
  })
  Misc:AddToggle({Name = "ClockTime Day", Default = false, Callback = function(value)
    _G.ClockTime = value
end
})
spawn(function()
    while wait() do
        if _G.ClockTime then
            pcall(function()
                game:GetService("RunService").Heartbeat:wait() do
                game:GetService("Lighting").ClockTime = 12
                end
            end)
        end
    end
end)
Misc:AddToggle({Name = "Walk On Water", Default = true, Callback = function(value)
    _G.WalkWater = value
end
})
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
function InfAbility()
    if _G.InfAbility then
        if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0, 0, 0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0.2, 0.2)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(1, 4),
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(999, 9999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(360, 360)
            inf.Texture = "rbxassetid://243098098"
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0, 255, 255), Color3.fromRGB(0, 255, 255))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end

function DodgeNoCoolDown()
    if _G.NoDashCooldown then
        for i, v in next, getgc() do
            if game.Players.LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                    for i2, v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.4" then
                            repeat
                                wait(.1)
                                setupvalue(v, i2, 0)
                            until not _G.NoDashCooldown
                        end
                    end
                end
            end
        end
    end
end
function SkyJumpNoCoolDown()
    if _G.InfinitiesSkyJump then
        for i, v in next, getgc() do
            if game.Players.LocalPlayer.Character.Geppo then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
                    for i2, v2 in next, getupvalues(v) do
                        if tostring(v2) == "0" then
                            repeat
                                wait(.1)
                                setupvalue(v, i2, 0)
                            until not _G.InfinitiesSkyJump
                        end
                    end
                end
            end
        end
    end
end

Misc:AddToggle({Name = "infinity Ability", Default = false, Callback = function(value)
    _G.InfAbility = value
	InfAbility()
end
})
Misc:AddToggle({Name = "Dash No CoolDown", Default = false, Callback = function(value)
    _G.NoDashCooldown = value
	DodgeNoCoolDown()
end
})
Misc:AddToggle({Name = "infinity Sky Jump", Default = false, Callback = function(value)
    _G.InfinitiesSkyJump = value
	SkyJumpNoCoolDown()
end
})
Misc:AddToggle({Name = "infinity Energy", Default = false, Callback = function(value)
    InfinitsEnergy = value
end
})

spawn(function()
while wait(.1) do
	if InfinitsEnergy then
		wait(0.3)
		game:GetService'Players'.LocalPlayer.Character.Energy.Changed:connect(function()
            if InfinitsEnergy then
                game:GetService'Players'.LocalPlayer.Character.Energy.Value = game:GetService'Players'.LocalPlayer.Character.Energy.Value
            end 
        end)
	end
end
end)

local Settings = Window:MakeTab({Name = "Settings", Icon = "settings"})

Settings:AddToggle({Name = "Auto Haki", Default = true, Callback = function(value)
    _G.AutoHaki1 = value
end
})
task.spawn(function()
    while task.wait() do
    pcall(function()
        if _G.AutoHaki1 then
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
        end
    end)
    end
end)
Settings:AddToggle({Name = "Auto Ken", Default = true, Callback = function(value)
    _G.AutoKen = value
end
})
spawn(function()
    while task.wait() do
    pcall(function()
        if _G.AutoKen then  
            if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
            else
                wait(1)
                game:service('VirtualUser'):CaptureController()
                game:service('VirtualUser'):SetKeyDown('0x65')
                wait(2)
                game:service('VirtualUser'):SetKeyUp('0x65')
            end
        end
    end)
    end
end)
Settings:AddToggle({Name = "Bring Mob", Default = true, Callback = function(value)
    _G.BringMob = value
	_G.Brimob = value
	_G.Settings.Brimob = value
end
})
Settings:AddToggle({Name = "Bypass Anti-Cheat", Default = true, Callback = function(value)
    _G.AntiFlag = value
end
})
spawn(function()
    while wait(1800) do
        if _G.AntiFlag then
            pcall(function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end)
    end
   end
end)
spawn(function()
    while wait() do
        if _G.AntiFlag then
            pcall(function()
                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    local HealthPercent = game.Players.LocalPlayer.Character.Humanoid.Health / game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 100
                    if HealthPercent < 20 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
                    end
                end
                task.wait()
            end)
            end
        end
    end)
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
spawn(function()
	while true do wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Brimob and _G.BringMob then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						end
					end
				end
			end
		end)
	end
end)
task.spawn(function()
    while task.wait() do
    if _G.BringMob then
    pcall(function()
      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
      if not string.find(v.Name,"Boss") and v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
      if InMyNetWork(v.HumanoidRootPart) then
        if InMyNetWork(v.HumanoidRootPart) then
      v.HumanoidRootPart.CFrame = FarmPos
      v.HumanoidRootPart.CanCollide = false
      v.HumanoidRootPart.Size = Vector3.new(1,1,1)
      if v.Humanoid:FindFirstChild("Animator") then
        v.Humanoid.Animator:Destroy()
    end
      end
    end
      end
      end
      end)
    end

end
end)
Settings:AddToggle({Name = "Remove Damage", Default = false, Callback = function(value)
    Removetext = value
end
})
Settings:AddToggle({Name = "Remove Notify", Default = false, Callback = function(value)
    RemoveNotify = value
end
})
spawn(function()
    while wait() do
        if RemoveNotify then
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
        else
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
        end
    end
end)

spawn(function()
    while wait() do
        if Removetext then
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
        else
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
        end
    end
end)
Settings:AddToggle({Name = "White Screen", Default = false, Callback = function(value)
    _G.WhiteScreen = value
    if _G.WhiteScreen == true then
     game:GetService("RunService"):Set3dRenderingEnabled(false)
 elseif _G.WhiteScreen == false then
     game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end
})
