_G.Authenicated = false
    local ui = game.CoreGui:FindFirstChild("VoidLib")
    if ui then
        local Notification = require(game:GetService("ReplicatedStorage").Notification)
        Notification.new("<Color=Blue>You Only Can Execute Script One Time!<Color=/>"):Display()
    else
    if game.Players.LocalPlayer.Name == "LionSlasher21" or game.Players.LocalPlayer.Name == "victorfabia" or game.Players.LocalPlayer.Name == "CrAzY_bOglmAn" or game.Players.LocalPlayer.Name == "king1_haitamy" or game.Players.LocalPlayer.Name == "BJJ_XARKS" or game.Players.LocalPlayer.Name == "pedroquesia" or game.Players.LocalPlayer.Name == "ElGorditoDavi" or game.Players.LocalPlayer.Name == "quiel1274" or game.Players.LocalPlayer.Name == "jejejeq007" then
        game.Players.LocalPlayer:Kick("Blacklisted By Efes#1234")
        else
        function Script()
        if _G.Authenicated ~= string.reverse(game.Players.LocalPlayer.UserId)then while true do end end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Load-Variables"))()
            if _G.Version == "Chest Farm" then  
                do
                    local ui = game.CoreGui:FindFirstChild("VoidLib")
                     if ui then
                         ui:Destroy()
                     end
                 end 
            _G.FarmChestHop = true
            _G.FarmChest = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/FarmChest"))()
            elseif _G.Version == "Fruit Farm" then   
                do
                    local ui = game.CoreGui:FindFirstChild("VoidLib")
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
                
                repeat wait() until game:GetService("Players").LocalPlayer:WaitForChild("DataLoaded") ~= nil
                pcall (function()
                repeat wait(1) until game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame:FindFirstChild("TextButton") ~= nil or game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") ~= nil
                if Team == "Marine" then
                for i,v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame:WaitForChild("TextButton").Activated)) do
                v.Function()
                end
                elseif Team == "Pirate" then
                for i,v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame:WaitForChild("TextButton").Activated)) do
                v.Function()
                end
                else
                for i,v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame:WaitForChild("TextButton").Activated)) do
                v.Function()
                end
                end
                end)
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
            elseif _G.Version == "Mirage Hop" then
            if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
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
            spawn(function()
                while wait() do
                    pcall(function()
                        if _G.NPCEsp then
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
                                        TextLabel.TextColor3 = Color3.fromRGB(80, 245, 245)
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
            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                function toTargetWait(a)local b=(a.p-game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;tweenrach=game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"),TweenInfo.new(b/250,Enum.EasingStyle.Linear),{CFrame=a})tweenrach:Play()end;toTargetWait(workspace.Map.MysticIsland.PrimaryPart.CFrame*CFrame.new(0,250,0))
                else
                Hop()          
            end
            elseif _G.Version == "Full Moon Hop" then
                if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
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
                spawn(function()
                    while wait() do
                        pcall(function()
                            if _G.NPCEsp then
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
                                            TextLabel.TextColor3 = Color3.fromRGB(80, 245, 245)
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
                if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" and game:GetService("Lighting").LightingLayers.Night.Intensity.Value == 1 then
                function toTargetWait(a)local b=(a.p-game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;tweenrach=game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"),TweenInfo.new(b/250,Enum.EasingStyle.Linear),{CFrame=a})tweenrach:Play()end;toTargetWait(workspace.Map.MysticIsland.PrimaryPart.CFrame*CFrame.new(0,250,0))
                else
                Hop()          
                end
            else
            -------------------------CODES STARTING----------------------------
                    wait(1)
                
                    if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
                    
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
                        repeat wait()
                            if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
                                if _G.Team == "Pirate" then
                                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                                        v.Function()
                                    end
                                elseif _G.Team == "Marine" then
                                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                                        v.Function()
                                    end
                                else
                                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                                        v.Function()
                                    end
                                end
                            end
                        until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
                    end
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
                            Mon = "Bandit [Lv. 5]"
                                NameQuest = "BanditQuest1"
                                LevelQuest = 1
                                NameMon = "Bandit"
                                CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
                                CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
                                LevelFarm = 1
                            elseif MyLevel == 10 or MyLevel <= 14 or _G.SelectMob == "Monkey [Lv. 14]" then -- Monkey
                            Mon = "Monkey [Lv. 14]"
                                NameQuest = "JungleQuest"
                                LevelQuest = 1
                                NameMon = "Monkey"
                                CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
                                CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
                                LevelFarm = 2
                            elseif MyLevel == 15 or MyLevel <= 29 or _G.SelectMob == "Gorilla [Lv. 20]" then -- Gorilla
                            Mon = "Gorilla [Lv. 20]"
                                NameQuest = "JungleQuest"
                                LevelQuest = 2
                                NameMon = "Gorilla"
                                CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
                                CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
                                LevelFarm = 3
                            elseif MyLevel == 30 or MyLevel <= 39 or _G.SelectMob == "Pirate [Lv. 35]" then -- Pirate
                            Mon = "Pirate [Lv. 35]"
                                NameQuest = "BuggyQuest1"
                                LevelQuest = 1
                                NameMon = "Pirate"
                                CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
                                CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
                                LevelFarm = 4
                            elseif MyLevel == 40 or MyLevel <= 59 or _G.SelectMob == "Brute [Lv. 45]" then -- Brute
                            Mon = "Brute [Lv. 45]"
                                NameQuest = "BuggyQuest1"
                                LevelQuest = 2
                                NameMon = "Brute"
                                CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
                                CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
                                LevelFarm = 5
                            elseif MyLevel == 60 or MyLevel <= 74 or _G.SelectMob == "Desert Bandit [Lv. 60]" then -- Desert Bandit
                            Mon = "Desert Bandit [Lv. 60]"
                                NameQuest = "DesertQuest"
                                LevelQuest = 1
                                NameMon = "Desert Bandit"
                                CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
                                CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
                                LevelFarm = 6
                            elseif MyLevel == 75 or MyLevel <= 89 or _G.SelectMob == "Desert Officer [Lv. 70]" then -- Desert Officre
                            Mon = "Desert Officer [Lv. 70]"
                                NameQuest = "DesertQuest"
                                LevelQuest = 2
                                NameMon = "Desert Officer"
                                CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
                                CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
                                LevelFarm = 7
                            elseif MyLevel == 90 or MyLevel <= 99 or _G.SelectMob == "Snow Bandit [Lv. 90]" then -- Snow Bandits
                            Mon = "Snow Bandit [Lv. 90]"
                                NameQuest = "SnowQuest"
                                LevelQuest = 1
                                NameMon = "Snow Bandits"
                                CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
                                CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
                                LevelFarm = 8
                            elseif MyLevel == 100 or MyLevel <= 119 or _G.SelectMob == "Snowman [Lv. 100]"  then -- Snowman
                            Mon = "Snowman [Lv. 100]"
                                NameQuest = "SnowQuest"
                                LevelQuest = 2
                                NameMon = "Snowman"
                                CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
                                CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
                                LevelFarm = 9
                            elseif MyLevel == 120 or MyLevel <= 149 or _G.SelectMob == "Chief Petty Officer [Lv. 120]" then -- Chief Petty Officer
                            Mon = "Chief Petty Officer [Lv. 120]"
                                NameQuest = "MarineQuest2"
                                LevelQuest = 1
                                NameMon = "Chief Petty Officer"
                                CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
                                CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
                                LevelFarm = 10
                            elseif MyLevel == 150 or MyLevel <= 174 or _G.SelectMob == "Sky Bandit [Lv. 150]" then -- Sky Bandit
                            Mon = "Sky Bandit [Lv. 150]"
                                NameQuest = "SkyQuest"
                                LevelQuest = 1
                                NameMon = "Sky Bandit"
                                CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
                                CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
                                LevelFarm = 11
                            elseif MyLevel == 175 or MyLevel <= 189 or _G.SelectMob == "Dark Master [Lv. 175]" then -- Dark Master
                            Mon = "Dark Master [Lv. 175]"
                                NameQuest = "SkyQuest"
                                LevelQuest = 2
                                NameMon = "Dark Master"
                                CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
                                CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
                                LevelFarm = 12
                            elseif MyLevel == 190 or MyLevel <= 209 or _G.SelectMob == "Prisoner [Lv. 190]" then
                                Mon = "Prisoner [Lv. 190]"
                                NameQuest = "PrisonerQuest"
                                LevelQuest = 1
                                NameMon = "Prisoner"
                                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                                CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                                LevelFarm = 13
                            elseif MyLevel == 210 or MyLevel <= 249 or _G.SelectMob == "Dangerous Prisoner [Lv. 210]" then
                                Mon = "Dangerous Prisoner [Lv. 210]"
                                NameQuest = "PrisonerQuest"
                                LevelQuest = 2
                                NameMon = "Dangerous Prisoner"
                                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                                CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                                LevelFarm = 14
                            elseif MyLevel == 250 or MyLevel <= 299 or _G.SelectMob == "Toga Warrior [Lv. 225]" then -- Toga Warrior
                            Mon = "Toga Warrior [Lv. 250]"
                                NameQuest = "ColosseumQuest"
                                LevelQuest = 1
                                NameMon = "Toga Warrior"
                                CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                                CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
                                LevelFarm = 15
                            elseif MyLevel == 300 or MyLevel <= 324 or _G.SelectMob == "Military Soldier [Lv. 300]" then -- Military Soldier
                            Mon = "Military Soldier [Lv. 300]"
                                NameQuest = "MagmaQuest"
                                LevelQuest = 1
                                NameMon = "Military Soldier"
                                CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                                CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
                                LevelFarm = 16
                            elseif MyLevel == 325 or MyLevel <= 374 or _G.SelectMob == "Military Spy [Lv. 330]" then -- Military Spy
                            Mon = "Military Spy [Lv. 325]"
                                NameQuest = "MagmaQuest"
                                LevelQuest = 2
                                NameMon = "Military Spy"
                                CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                                CFrameMon = CFrame.new(-5865.52979, 77.2564392, 8847.52832, 0.886435747, -8.73096937e-08, 0.462851614, 1.11671731e-07, 1, -2.52351402e-08, -0.462851614, 7.40567714e-08, 0.886435747)
                                LevelFarm = 17
                            elseif MyLevel == 375 or MyLevel <= 399 or _G.SelectMob == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
                            Mon = "Fishman Warrior [Lv. 375]"
                                NameQuest = "FishmanQuest"
                                LevelQuest = 1
                                NameMon = "Fishman Warrior"
                                CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                                CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
                                LevelFarm = 18
                            elseif MyLevel == 400 or MyLevel <= 449 or _G.SelectMob == "Fishman Commando [Lv. 400]" then -- Fishman Commando
                            Mon = "Fishman Commando [Lv. 400]"
                                NameQuest = "FishmanQuest"
                                LevelQuest = 2
                                NameMon = "Fishman Commando"
                                CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                                CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
                                LevelFarm = 19
                            elseif MyLevel == 450 or MyLevel <= 474 or _G.SelectMob == "God's Guard [Lv. 450]" then -- God's Guards
                            Mon = "God's Guard [Lv. 450]"
                                NameQuest = "SkyExp1Quest"
                                LevelQuest = 1
                                NameMon = "God's Guards"
                                CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
                                CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
                                LevelFarm = 20
                            elseif MyLevel == 475 or MyLevel <= 524 or _G.SelectMob == "Shanda [Lv. 475]" then -- Shandas
                                sky = false
                                Mon = "Shanda [Lv. 475]"
                                NameQuest = "SkyExp1Quest"
                                LevelQuest = 2
                                NameMon = "Shandas"
                                CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
                                CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
                                LevelFarm = 21
                            elseif MyLevel == 525 or MyLevel <= 549 or _G.SelectMob == "Royal Squad [Lv. 525]" then -- Royal Squad
                                sky = true
                                Mon = "Royal Squad [Lv. 525]"
                                NameQuest = "SkyExp2Quest"
                                LevelQuest = 1
                                NameMon = "Royal Squad"
                                CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
                                CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
                                LevelFarm = 22
                            elseif MyLevel == 550 or MyLevel <= 624 or _G.SelectMob == "Royal Soldier [Lv. 550]" then -- Royal Soldier
                                Dis = 240
                                sky = true
                                Mon = "Royal Soldier [Lv. 550]"
                                NameQuest = "SkyExp2Quest"
                                LevelQuest = 2
                                NameMon = "Royal Soldier"
                                CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
                                CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
                                LevelFarm = 23
                            elseif MyLevel == 625 or MyLevel <= 649 or _G.SelectMob == "Galley Pirate [Lv. 625]" then -- Galley Pirate
                                Dis = 240
                                sky = false
                                Mon = "Galley Pirate [Lv. 625]"
                                NameQuest = "FountainQuest"
                                LevelQuest = 1
                                NameMon = "Galley Pirate"
                                CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
                                CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
                                LevelFarm = 24
                            elseif MyLevel >= 650 or _G.SelectMob == "Galley Captain [Lv. 650]" then -- Galley Captain
                                Dis = 240
                                Mon = "Galley Captain [Lv. 650]"
                                NameQuest = "FountainQuest"
                                LevelQuest = 2
                                NameMon = "Galley Captain"
                                CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
                                CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
                                LevelFarm = 25
                            end
                        elseif World2 then
                            if MyLevel == 700 or MyLevel <= 724 or _G.SelectMob == "Raider [Lv. 700]" then -- Raider [Lv. 700]
                            Mon = "Raider [Lv. 700]"
                                NameQuest = "Area1Quest"
                                LevelQuest = 1
                                NameMon = "Raider"
                                CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
                                CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
                                LevelFarm = 1
                            elseif MyLevel == 725 or MyLevel <= 774 or _G.SelectMob == "Mercenary [Lv. 725]" then -- Mercenary [Lv. 725]
                            Mon = "Mercenary [Lv. 725]"
                                NameQuest = "Area1Quest"
                                LevelQuest = 2
                                NameMon = "Mercenary"
                                CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
                                CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
                                LevelFarm = 2
                            elseif MyLevel == 775 or MyLevel <= 799 or _G.SelectMob == "Swan Pirate [Lv. 775]" then -- Swan Pirate [Lv. 775]
                            Mon = "Swan Pirate [Lv. 775]"
                                NameQuest = "Area2Quest"
                                LevelQuest = 1
                                NameMon = "Swan Pirate"
                                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                                CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
                                LevelFarm = 3
                            elseif MyLevel == 800 or MyLevel <= 874 or _G.SelectMob == "Factory Staff [Lv. 800]" then -- Factory Staff [Lv. 800]
                            Mon = "Factory Staff [Lv. 800]"
                                NameQuest = "Area2Quest"
                                LevelQuest = 2
                                NameMon = "Factory Staff"
                                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                                CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
                                LevelFarm = 4
                            elseif MyLevel == 875 or MyLevel <= 899 or _G.SelectMob == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant [Lv. 875]
                            Mon = "Marine Lieutenant [Lv. 875]"
                                NameQuest = "MarineQuest3"
                                LevelQuest = 1
                                NameMon = "Marine Lieutenant"
                                CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
                                CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
                                LevelFarm = 5
                            elseif MyLevel == 900 or MyLevel <= 949 or _G.SelectMob == "Marine Captain [Lv. 900]" then -- Marine Captain [Lv. 900]
                            Mon = "Marine Captain [Lv. 900]"
                                NameQuest = "MarineQuest3"
                                LevelQuest = 2
                                NameMon = "Marine Captain"
                                CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
                                CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
                                LevelFarm = 6
                            elseif MyLevel == 950 or MyLevel <= 974 or _G.SelectMob == "Zombie [Lv. 950]" then -- Zombie [Lv. 950]
                            Mon = "Zombie [Lv. 950]"
                                NameQuest = "ZombieQuest"
                                LevelQuest = 1
                                NameMon = "Zombie"
                                CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
                                CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
                                LevelFarm = 7
                            elseif MyLevel == 975 or MyLevel <= 999 or _G.SelectMob == "Vampire [Lv. 975]" then -- Vampire [Lv. 975]
                            Mon = "Vampire [Lv. 975]"
                                NameQuest = "ZombieQuest"
                                LevelQuest = 2
                                NameMon = "Vampire"
                                CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
                                CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
                                LevelFarm = 8
                            elseif MyLevel == 1000 or MyLevel <= 1049 or _G.SelectMob == "Snow Trooper [Lv. 1000]" then -- Snow Trooper [Lv. 1000] **
                            Mon = "Snow Trooper [Lv. 1000]"
                                NameQuest = "SnowMountainQuest"
                                LevelQuest = 1
                                NameMon = "Snow Trooper"
                                CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
                                CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
                                LevelFarm = 9
                            elseif MyLevel == 1050 or MyLevel <= 1099 or _G.SelectMob == "Winter Warrior [Lv. 1050]" then -- Winter Warrior [Lv. 1050]
                            Mon = "Winter Warrior [Lv. 1050]"
                                NameQuest = "SnowMountainQuest"
                                LevelQuest = 2
                                NameMon = "Winter Warrior"
                                CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
                                CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
                                LevelFarm = 10
                            elseif MyLevel == 1100 or MyLevel <= 1124 or _G.SelectMob == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate [Lv. 1100]
                            Mon = "Lab Subordinate [Lv. 1100]"
                                NameQuest = "IceSideQuest"
                                LevelQuest = 1
                                NameMon = "Lab Subordinate"
                                CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
                                CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
                                LevelFarm = 11
                            elseif MyLevel == 1125 or MyLevel <= 1174 or _G.SelectMob == "Horned Warrior [Lv. 1125]" then -- Horned Warrior [Lv. 1125]
                            Mon = "Horned Warrior [Lv. 1125]"
                                NameQuest = "IceSideQuest"
                                LevelQuest = 2
                                NameMon = "Horned Warrior"
                                CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
                                CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
                                LevelFarm = 12
                            elseif MyLevel == 1175 or MyLevel <= 1199 or _G.SelectMob == "Magma Ninja [Lv. 1175]" then -- Magma Ninja [Lv. 1175]
                            Mon = "Magma Ninja [Lv. 1175]"
                                NameQuest = "FireSideQuest"
                                LevelQuest = 1
                                NameMon = "Magma Ninja"
                                CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                                CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
                                LevelFarm = 13
                            elseif MyLevel == 1200 or MyLevel <= 1249 or _G.SelectMob == "Lava Pirate [Lv. 1200]" then -- Lava Pirate [Lv. 1200]
                            Mon = "Lava Pirate [Lv. 1200]"
                                NameQuest = "FireSideQuest"
                                LevelQuest = 2
                                NameMon = "Lava Pirate"
                                CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                                CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
                                LevelFarm = 14
                            elseif MyLevel == 1250 or MyLevel <= 1274 or _G.SelectMob == "Ship Deckhand [Lv. 1250]" then -- Ship Deckhand [Lv. 1250]
                            Mon = "Ship Deckhand [Lv. 1250]"
                                NameQuest = "ShipQuest1"
                                LevelQuest = 1
                                NameMon = "Ship Deckhand"
                                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                                CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
                                LevelFarm = 15
                            elseif MyLevel == 1275 or MyLevel <= 1299 or _G.SelectMob == "Ship Engineer [Lv. 1275]"  then -- Ship Engineer [Lv. 1275]
                            Mon = "Ship Engineer [Lv. 1275]"
                                NameQuest = "ShipQuest1"
                                LevelQuest = 2
                                NameMon = "Ship Engineer"
                                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                                CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
                                LevelFarm = 16
                            elseif MyLevel == 1300 or MyLevel <= 1324 or _G.SelectMob == "Ship Steward [Lv. 1300]" then -- Ship Steward [Lv. 1300]
                            Mon = "Ship Steward [Lv. 1300]"
                                NameQuest = "ShipQuest2"
                                LevelQuest = 1
                                NameMon = "Ship Steward"
                                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                                CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
                                LevelFarm = 17
                            elseif MyLevel == 1325 or MyLevel <= 1349 or _G.SelectMob == "Ship Officer [Lv. 1325]" then -- Ship Officer [Lv. 1325]
                            Mon = "Ship Officer [Lv. 1325]"
                                NameQuest = "ShipQuest2"
                                LevelQuest = 2
                                NameMon = "Ship Officer"
                                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                                CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
                                LevelFarm = 18
                            elseif MyLevel == 1350 or MyLevel <= 1374 or _G.SelectMob == "Arctic Warrior [Lv. 1350]" then -- Arctic Warrior [Lv. 1350]
                            Mon = "Arctic Warrior [Lv. 1350]"
                                NameQuest = "FrostQuest"
                                LevelQuest = 1
                                NameMon = "Arctic Warrior"
                                CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
                                CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
                                LevelFarm = 19
                            elseif MyLevel == 1375 or MyLevel <= 1424 or _G.SelectMob == "Snow Lurker [Lv. 1375]" then -- Snow Lurker [Lv. 1375]
                            Mon = "Snow Lurker [Lv. 1375]"
                                NameQuest = "FrostQuest"
                                LevelQuest = 2
                                NameMon = "Snow Lurker"
                                CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
                                CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
                                LevelFarm = 20
                            elseif MyLevel == 1425 or MyLevel <= 1449 or _G.SelectMob == "Sea Soldier [Lv. 1425]" then -- Sea Soldier [Lv. 1425]
                            Mon = "Sea Soldier [Lv. 1425]"
                                NameQuest = "ForgottenQuest"
                                LevelQuest = 1
                                NameMon = "Sea Soldier"
                                CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
                                CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
                                LevelFarm = 21
                            elseif MyLevel >= 1450 or _G.SelectMob == "Water Fighter [Lv. 1450]" then -- Water Fighter [Lv. 1450]
                            Mon = "Water Fighter [Lv. 1450]"
                                NameQuest = "ForgottenQuest"
                                LevelQuest = 2
                                NameMon = "Water Fighter"
                                CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
                                CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
                                LevelFarm = 22
                            end
                        elseif World3 then
                            if MyLevel == 1500 or MyLevel <= 1524 or _G.SelectMob == "Pirate Millionaire [Lv. 1500]" then
                                Mon = "Pirate Millionaire [Lv. 1500]"
                                NameQuest = "PiratePortQuest"
                                LevelQuest = 1
                                NameMon = "Pirate Millionaire"
                                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                                CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                                LevelFarm = 1
                            elseif MyLevel == 1525 or MyLevel <= 1574 or _G.SelectMob == "Pistol Billionaire [Lv. 1525]" then
                                Mon = "Pistol Billionaire [Lv. 1525]"
                                NameQuest = "PiratePortQuest"
                                LevelQuest = 2
                                NameMon = "Pistol Billionaire"
                                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                                CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                                LevelFarm = 2
                            elseif MyLevel == 1575 or MyLevel <= 1599 or _G.SelectMob == "Dragon Crew Warrior [Lv. 1575]" then
                                Mon = "Dragon Crew Warrior [Lv. 1575]"
                                NameQuest = "AmazonQuest"
                                LevelQuest = 1
                                NameMon = "Dragon Crew Warrior"
                                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                                CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
                                LevelFarm = 3
                            elseif MyLevel == 1600 or MyLevel <= 1624 or _G.SelectMob == "Dragon Crew Archer [Lv. 1600]" then
                                Mon = "Dragon Crew Archer [Lv. 1600]"
                                NameQuest = "AmazonQuest"
                                LevelQuest = 2
                                NameMon = "Dragon Crew Archer"
                                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                                CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
                                LevelFarm = 4
                            elseif MyLevel == 1625 or MyLevel <= 1649 or _G.SelectMob == "Female Islander [Lv. 1625]" then
                                Mon = "Female Islander [Lv. 1625]"
                                NameQuest = "AmazonQuest2"
                                LevelQuest = 1
                                NameMon = "Female Islander"
                                CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                                CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
                                LevelFarm = 5
                            elseif MyLevel == 1650 or MyLevel <= 1699 or _G.SelectMob == "Giant Islander [Lv. 1650]" then
                                Mon = "Giant Islander [Lv. 1650]"
                                NameQuest = "AmazonQuest2"
                                LevelQuest = 2
                                NameMon = "Giant Islander"
                                CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                                CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
                                LevelFarm = 6
                            elseif MyLevel == 1700 or MyLevel <= 1724 or _G.SelectMob == "Marine Commodore [Lv. 1700]" then
                                Mon = "Marine Commodore [Lv. 1700]"
                                NameQuest = "MarineTreeIsland"
                                LevelQuest = 1
                                NameMon = "Marine Commodore"
                                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                                CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
                                LevelFarm = 7
                            elseif MyLevel == 1725 or MyLevel <= 1774 or _G.SelectMob == "Marine Rear Admiral [Lv. 1725]" then
                                Mon = "Marine Rear Admiral [Lv. 1725]"
                                NameQuest = "MarineTreeIsland"
                                LevelQuest = 2
                                NameMon = "Marine Rear Admiral"
                                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                                CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
                                LevelFarm = 8
                            elseif MyLevel == 1775 or MyLevel <= 1799 or _G.SelectMob == "Fishman Raider [Lv. 1775]" then
                                Mon = "Fishman Raider [Lv. 1775]"
                                NameQuest = "DeepForestIsland3"
                                LevelQuest = 1
                                NameMon = "Fishman Raider"
                                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                                CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
                                LevelFarm = 9
                            elseif MyLevel == 1800 or MyLevel <= 1824 or _G.SelectMob == "Fishman Captain [Lv. 1800]" then
                                Mon = "Fishman Captain [Lv. 1800]"
                                NameQuest = "DeepForestIsland3"
                                LevelQuest = 2
                                NameMon = "Fishman Captain"
                                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                                CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
                                LevelFarm = 10
                            elseif MyLevel == 1825 or MyLevel <= 1849 or _G.SelectMob == "Forest Pirate [Lv. 1825]" then
                                Mon = "Forest Pirate [Lv. 1825]"
                                NameQuest = "DeepForestIsland"
                                LevelQuest = 1
                                NameMon = "Forest Pirate"
                                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                                CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
                                LevelFarm = 11
                            elseif MyLevel == 1850 or MyLevel <= 1899 or _G.SelectMob == "Mythological Pirate [Lv. 1850]" then
                                Mon = "Mythological Pirate [Lv. 1850]"
                                NameQuest = "DeepForestIsland"
                                LevelQuest = 2
                                NameMon = "Mythological Pirate"
                                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                                CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
                                LevelFarm = 12
                            elseif MyLevel == 1900 or MyLevel <= 1924 or _G.SelectMob == "Jungle Pirate [Lv. 1900]" then
                                Mon = "Jungle Pirate [Lv. 1900]"
                                NameQuest = "DeepForestIsland2"
                                LevelQuest = 1
                                NameMon = "Jungle Pirate"
                                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                                CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
                                LevelFarm = 13
                            elseif MyLevel == 1925 or MyLevel <= 1974 or _G.SelectMob == "Musketeer Pirate [Lv. 1925]" then
                                Mon = "Musketeer Pirate [Lv. 1925]"
                                NameQuest = "DeepForestIsland2"
                                LevelQuest = 2
                                NameMon = "Musketeer Pirate"
                                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                                CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
                                LevelFarm = 14
                            elseif MyLevel == 1975 or MyLevel <= 1999 or _G.SelectMob == "Reborn Skeleton [Lv. 1975]" then
                                Mon = "Reborn Skeleton [Lv. 1975]"
                                NameQuest = "HauntedQuest1"
                                LevelQuest = 1
                                NameMon = "Reborn Skeleton"
                                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                                CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
                                LevelFarm = 15
                            elseif MyLevel == 2000 or MyLevel <= 2024 or _G.SelectMob == "Living Zombie [Lv. 2000]" then
                                Mon = "Living Zombie [Lv. 2000]"
                                NameQuest = "HauntedQuest1"
                                LevelQuest = 2
                                NameMon = "Living Zombie"
                                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                                CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
                                LevelFarm = 16
                            elseif MyLevel == 2025 or MyLevel <= 2049 or _G.SelectMob == "Demonic Soul [Lv. 2025]" then
                                Mon = "Demonic Soul [Lv. 2025]"
                                NameQuest = "HauntedQuest2"
                                LevelQuest = 1
                                NameMon = "Demonic Soul"
                                CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
                                CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
                                LevelFarm = 17
                            elseif MyLevel == 2050 or MyLevel <= 2074 or _G.SelectMob == "Posessed Mummy [Lv. 2050]" then
                                Mon = "Posessed Mummy [Lv. 2050]" 
                                NameQuest = "HauntedQuest2"
                                LevelQuest = 2
                                NameMon = "Posessed Mummy"
                                CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
                                CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
                                LevelFarm = 18
                            elseif MyLevel == 2075 or MyLevel <= 2099 or _G.SelectMob == "Peanut Scout [Lv. 2075]" then
                                Mon = "Peanut Scout [Lv. 2075]"
                                NameQuest = "NutsIslandQuest"
                                LevelQuest = 1
                                NameMon = "Peanut Scout"
                                CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
                                CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
                                LevelFarm = 19
                            elseif MyLevel == 2100 or MyLevel <= 2124 or _G.SelectMob == "Peanut President [Lv. 2100]" then
                                Mon = "Peanut President [Lv. 2100]"
                                NameQuest = "NutsIslandQuest"
                                LevelQuest = 2
                                NameMon = "Peanut President"
                                CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
                                CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
                                LevelFarm = 20
                            elseif MyLevel == 2125 or MyLevel <= 2149 or _G.SelectMob == "Ice Cream Chef [Lv. 2125]" then
                                Mon = "Ice Cream Chef [Lv. 2125]"
                                NameQuest = "IceCreamIslandQuest"
                                LevelQuest = 1
                                NameMon = "Ice Cream Chef"
                                CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
                                CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
                                LevelFarm = 21
                            elseif MyLevel == 2150 or MyLevel <= 2199 or _G.SelectMob == "Ice Cream Commander [Lv. 2150]" then
                                Mon = "Ice Cream Commander [Lv. 2150]"
                                NameQuest = "IceCreamIslandQuest"
                                LevelQuest = 2
                                NameMon = "Ice Cream Commander"
                                CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
                                CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
                                LevelFarm = 22
                            elseif MyLevel == 2200 or MyLevel <= 2224 or _G.SelectMob == "Cookie Crafter [Lv. 2200]" then
                                Mon = "Cookie Crafter [Lv. 2200]"
                                NameQuest = "CakeQuest1"
                                LevelQuest = 1
                                NameMon = "Cookie Crafter"
                                CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
                                CFrameMon = CFrame.new(-2273.00244140625, 90.22590637207031, -12151.62109375)
                                LevelFarm = 23
                            elseif MyLevel == 2225 or MyLevel <= 2249 or _G.SelectMob == "Cake Guard [Lv. 2225]" then
                                Mon = "Cake Guard [Lv. 2225]"
                                NameQuest = "CakeQuest1"
                                LevelQuest = 2
                                NameMon = "Cake Guard"
                                CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
                                CFrameMon = CFrame.new(-1442.373046875, 158.14111328125, -12277.37109375)
                                LevelFarm = 24
                            elseif MyLevel == 2250 or MyLevel <= 2274 or _G.SelectMob == "Baking Staff [Lv. 2250]" then
                                Mon = "Baking Staff [Lv. 2250]"
                                NameQuest = "CakeQuest2"
                                LevelQuest = 1
                                NameMon = "Baking Staff"
                                CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
                                CFrameMon = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
                                LevelFarm = 25
                            elseif MyLevel == 2275 or MyLevel <= 2299 or _G.SelectMob == "Head Baker [Lv. 2275]" then
                                Mon = "Head Baker [Lv. 2275]"
                                NameQuest = "CakeQuest2"
                                LevelQuest = 2
                                NameMon = "Head Baker"
                                CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
                                CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)
                                LevelFarm = 26
                            elseif MyLevel == 2300 or MyLevel <= 2324 or _G.SelectMob == "Cocoa Warrior [Lv. 2300]" then
                                Mon = "Cocoa Warrior [Lv. 2300]"
                                NameQuest = "ChocQuest1"
                                LevelQuest = 1
                                NameMon = "Cocoa Warrior"
                                CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
                                CFrameMon = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
                                LevelFarm = 27
                            elseif MyLevel == 2325 or MyLevel <= 2349 or _G.SelectMob == "Chocolate Bar Battler [Lv. 2325]" then
                                Mon = "Chocolate Bar Battler [Lv. 2325]"
                                NameQuest = "ChocQuest1"
                                LevelQuest = 2
                                NameMon = "Chocolate Bar Battler"
                                CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
                                CFrameMon = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
                                LevelFarm = 28
                            elseif MyLevel == 2350 or MyLevel <= 2374 or _G.SelectMob == "Sweet Thief [Lv. 2350]" then
                                Mon = "Sweet Thief [Lv. 2350]"
                                NameQuest = "ChocQuest2"
                                LevelQuest = 1
                                NameMon = "Sweet Thief"
                                CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
                                CFrameMon = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
                                LevelFarm = 29
                            elseif MyLevel == 2375 or MyLevel <= 2399 or _G.SelectMob == "Candy Rebel [Lv. 2375]" then
                                Mon = "Candy Rebel [Lv. 2375]"
                                NameQuest = "ChocQuest2"
                                LevelQuest = 2
                                NameMon = "Candy Rebel"
                                CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
                                CFrameMon = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
                                LevelFarm = 30
                            elseif MyLevel == 2400 or MyLevel <= 2424 or _G.SelectMob == "Candy Pirate [Lv. 2400]" then
                                Mon = "Candy Pirate [Lv. 2400]"
                                NameQuest = "CandyQuest1"
                                LevelQuest = 1
                                NameMon = "Candy Pirate"
                                CFrameQuest = CFrame.new(-1149.328, 16.5750427, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
                                CFrameMon = CFrame.new(-1230.95032, 89.3472443, -14437.3379, -0.228816152, 9.6939317e-08, 0.973469675, 8.52869508e-09, 1, -9.75765531e-08, -0.973469675, -1.4024665e-08, -0.228816152)
                                LevelFarm = 31
                            elseif MyLevel >= 2425 or _G.SelectMob == "Snow Demon [Lv. 2425]" then
                                Mon = "Snow Demon [Lv. 2425]"
                                NameQuest = "CandyQuest1"
                                LevelQuest = 2
                                NameMon = "Snow Demon"
                                CFrameQuest = CFrame.new(-1149.328, 16.5750427, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
                                CFrameMon = CFrame.new(-948.348083, 89.3464279, -14405.1602, -0.490399271, -1.11626353e-08, -0.871497869, -3.04060102e-08, 1, 4.30115676e-09, 0.871497869, 2.86080564e-08, -0.490399271)
                                LevelFarm = 32
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

        function Click()
            if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
            if _G.FastAttack then
                b = tick()
                if b - tick() > 0.75 then
                    wait(.2)
                    b = tick()
                end
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                                Attack()
                                wait(0)
                                Boost()
                            end
                        end
                    end
                end)
                
                k = tick()
                if k - tick() > 0.75 then
                    wait(0)
                    k = tick()
                end
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                            wait(0)
                            Unboost()
                            end
                        end
                    end
                end)
                wait(AttackDelay)
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
            else
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
            end
            else
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
            end
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
                                        if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.Auto_Farm_Chest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.KillSelectedPlayer or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or AutoSoulGuitar or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.MaterialFarmm or _G.AutoKing or _G.AutoDarkBeard or _G.AutoFarmBoss or getgenv().Chest or Auto_Dark_Coat or _G.AutoChalice or AutoMobAura or _G.AutoNevaSoulGuitar or _G.AutoCdk or _G.AutoFactory or _G.Mirage or _G.Next or _G.TeleportNPC or _G.Auto_Bone or _G.AutoPlayerHunter or _G.Auto_Farm_Heart or _G.FarmPirateRaid or _G.AutoTrain or _G.SeaBeast or _G.AutoFarmDungeon or AutoFarmChest or _G.Auto_Farm_Bone == true then
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
                                        if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.KillSelectedPlayer or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or AutoSoulGuitar or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.MaterialFarmm or _G.AutoKing or _G.AutoDarkBeard or _G.AutoFarmBoss or getgenv().Chest or Auto_Dark_Coat or _G.AutoChalice or AutoMobAura or _G.AutoNevaSoulGuitar or _G.AutoCdk or _G.AutoFactory or _G.Mirage or _G.Next or _G.TeleportNPC or _G.Auto_Bone or _G.AutoPlayerHunter or _G.Auto_Farm_Heart or _G.FarmPirateRaid or _G.AutoTrain or _G.SeaBeast or _G.AutoFarmDungeon or AutoFarmChest or _G.Auto_Farm_Bone == true then
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
                                    if _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.KillSelectedPlayer or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.MaterialFarmm or _G.AutoKing or AutoMobAura or _G.Auto_Bone == true then
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

                    spawn(function()
                        while task.wait() do
                            if _G.AutoFarm then
                                if _G.SelectMode == "Normal Mode" then
                                pcall(function()
                                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                                    if not string.find(QuestTitle, NameMon) then
                                        StartMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                        StartMagnet = false
                                        CheckQuest()
                                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 375 and game:GetService("Players").LocalPlayer.Data.Level.Value <= 399 or _G.SelectMob == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                        wait(2)
                                        TP(CFrameQuest)
                                        elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 400 and game:GetService("Players").LocalPlayer.Data.Level.Value <= 449 or _G.SelectMob == "Fishman Commando [Lv. 400]" then -- Fishman Commando
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                        wait(2)
                                        TP(CFrameQuest)
                                        else
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
                                                                StartMagnet = true
                                                                Click()
                                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                        else
                                                            StartMagnet = false
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                        end
                                                    end
                                                end
                                            end
                                        else
                                            StartMagnet = false
                                            if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                            else	
                                                TP(CFrameMon)
                                            end
                                        end
                                    end
                                end)
                                elseif _G.SelectMode == "Safe Mode" then
                                    pcall(function()
                                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                                        if not string.find(QuestTitle, NameMon) then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                            CheckQuest()
                                            if game:GetService("Players").LocalPlayer.Data.Level.Value >= 375 and game:GetService("Players").LocalPlayer.Data.Level.Value <= 399 or _G.SelectMob == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                            wait(2)
                                            TP(CFrameQuest)
                                            elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 400 and game:GetService("Players").LocalPlayer.Data.Level.Value <= 449 or _G.SelectMob == "Fishman Commando [Lv. 400]" then -- Fishman Commando
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                            wait(2)
                                            TP(CFrameQuest)
                                            else
                                            TP(CFrameQuest)
                                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 15 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                                            end
                                            end
                                            if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
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
                                                                    Click()
                                                                until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                            else
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                            end
                                                        end
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
                                elseif _G.SelectMode == "Fast Mode" then
                                if game.Players.LocalPlayer.Data.Level.Value >= 0 and game.Players.LocalPlayer.Data.Level.Value <= 80 then
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
                                        if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "God's Guard [Lv. 450]" then
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
                                                if v.Name == "God's Guard [Lv. 450]" then
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                end
                                            end
                                            if not game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]") then
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
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") or game:GetService("Workspace").Enemies:FindFirstChild("Galley Pirate [Lv. 625]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Galley Captain [Lv. 650]" or v.Name == "Galley Pirate [Lv. 625]" then
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
                                                if v.Name == "Galley Captain [Lv. 650]" or v.Name == "Galley Pirate [Lv. 625]" then
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                end
                                            end
                                        if not game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") and not game:GetService("Workspace").Enemies:FindFirstChild("Galley Pirate [Lv. 625]") then
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
                                            BTP(CFrameQuest)
                                            wait(6)
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
                                                            _G.FastAttack = false
                                                            _G.DisabledDamage1 = false
                                                            _G.Remove_EffectDeath1 = false
                                                            _G.RemoveAnimation1 = false
                                                            _G.Remove_Effect1 = false
                                                            _G.CameraShaker1 = false
                                                            _G.FastAttackNormalSpeed = false
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
                    elseif _G.SelectMode == "No Quest Mode" then
                        pcall(function()
                            local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                            if not string.find(QuestTitle, NameMon) then
                                StartMagnet = false
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                StartMagnet = false
                                CheckQuest()
                                if game:GetService("Players").LocalPlayer.Data.Level.Value == 375 or game:GetService("Players").LocalPlayer.Data.Level.Value <= 399 or _G.SelectMob == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                wait(2)
                                TP(CFrameQuest)
                                elseif game:GetService("Players").LocalPlayer.Data.Level.Value == 400 or game:GetService("Players").LocalPlayer.Data.Level.Value <= 449 or _G.SelectMob == "Fishman Commando [Lv. 400]" then -- Fishman Commando
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                wait(2)
                                TP(CFrameQuest)
                                else
                                TP(CFrameQuest)
                                end
                                if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                    wait(1.2)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                                    wait(0.5)
                                end
                            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
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
                                                        StartMagnet = true
                                                        Click()
                                                    until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                else
                                                    StartMagnet = false
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                end
                                            end
                                        end
                                    end
                                else
                                    StartMagnet = false
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
                    -------------------------CODES FINISH----------------------------
                    ------------------------------------------------------------------------
                    -------------------------UI LIBRARY FINISH----------------------------
                    game.Players.LocalPlayer.PlayerGui.Main.Version.Visible = false
                    local Visible = Instance.new("ScreenGui")
                    local Button = Instance.new("TextButton")
                    local UICorner = Instance.new("UICorner")   
                    Visible.Name = "Visible"
                    Visible.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                    Button.Name = "Button"
                    Button.Parent = Visible
                    Button.BackgroundTransparency = 0
                    Button.BackgroundColor3 = Color3.fromRGB(162, 210, 255)
                    Button.Position = UDim2.new(0, 185, 0, -31)
                    Button.Size = UDim2.new(0, 32, 0, 32)
                    Button.ZIndex = 10
                    Button.Text = ""
                    local VisibleStroke = Instance.new("UIStroke")
                    VisibleStroke.Name = "UIStroke"
                    VisibleStroke.Parent = Button
                    VisibleStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                    VisibleStroke.Color = Color3.fromRGB(150,150,150)
                    VisibleStroke.LineJoinMode = Enum.LineJoinMode.Round
                    VisibleStroke.Thickness = 1
                    VisibleStroke.Transparency = 0.3
                    VisibleStroke.Enabled = true
                    VisibleStroke.Archivable = true
                    local toggle = false
                    Button.MouseButton1Click:Connect(function()
                    toggle = not toggle
                    if toggle then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
                    Button.BackgroundColor3 = Color3.fromRGB(20,20,20)
                    else
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
                    Button.BackgroundColor3 = Color3.fromRGB(162, 210, 255)
                    end
                    end)
                    UICorner.CornerRadius = UDim.new(0.25, 0)
                    UICorner.Name = "Looks like"
                    UICorner.Parent = Button
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
                    
                    local foldername = "Raito Hub Settings Folder"
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
                    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/31222d3b018c86376e295522d562f43eea7082f4/Ui-Library"))()
                    --------------------------------------------------------------------
                    local Void = library:AddWindow("Raito Hub",Enum.KeyCode.RightControl)
                    --------------------------------------------------------------------
                    local Settings = Void:AddTab("Settings","12954796920")
                    local Main = Void:AddTab("Home","12954676046")
                    local Combat = Void:AddTab("Combat","12954749538")
                    local Stats = Void:AddTab("Stats","12954740352")
                    local Teleport = Void:AddTab("Teleport","12954724585")
                    local Dungeon = Void:AddTab("Dungeon","12954837918")
                    local Fruit = Void:AddTab("Devil Fruit","12954641269")
                    local Shop = Void:AddTab("Shop","12954674454")
                    -------------------------RACE TAB---------------------------------
                    if World3 then
                    local Race = Void:AddTab("Race","12954891283")
                    Race:AddSeperator("Race V4 Helper")
                    Race:AddToggle("Auto Train",_G.AutoTrain,function(value)
                        _G.AutoTrain = value
                        StopTween(_G.AutoTrain)
                    end)
                    
                    spawn(function()
                        pcall(function()
                            while wait(0.1) do
                                if _G.AutoTrain then
                                    local args = {
                                        [1] = "UpgradeRace",
                                        [2] = "Check"
                                    }
                                    
                                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))                            
                                end
                            end
                        end)
                    end)
        
                    spawn(function()
                        pcall(function()
                            while wait(1) do
                                if _G.AutoTrain then
                                if game:GetService("Workspace").Characters[game.Players.LocalPlayer.Name].RaceTransformed.Value == true then
                                    wait(5)
                                    game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                end
                                end
                            end
                        end)
                    end)
        
                    spawn(function()
                        pcall(function()
                            while wait(0.1) do
                                if _G.AutoTrain then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Y", false, game)
                                wait(0.1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Y", false, game)
                                end
                            end
                        end)
                    end)
        
                        spawn(function()
                            game:GetService("RunService").Heartbeat:Connect(function()
                                pcall(function()
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if _G.AutoTrain and StartMagnetHeart and (v.Name == "Candy Pirate [Lv. 2400]" or v.Name == "Snow Demon [Lv. 2425]" or v.Name == "Candy Rebel [Lv. 2375]") and (v.HumanoidRootPart.Position - PosMonHeart.Position).magnitude <= 300 then
                                            v.HumanoidRootPart.CFrame = PosMonHeart
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
                                if _G.AutoTrain and World3 then
                                    pcall(function()
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Candy Pirate [Lv. 2400]") or game:GetService("Workspace").Enemies:FindFirstChild("Snow Demon [Lv. 2425]") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel [Lv. 2375]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Candy Pirate [Lv. 2400]" or v.Name == "Snow Demon [Lv. 2425]" or v.Name == "Candy Rebel [Lv. 2375]" then
                                                    if v.Humanoid.Health > 0 then
                                                        repeat wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            StartMagnetHeart = true
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                            PosMonHeart = v.HumanoidRootPart.CFrame
                                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                            Click()
                                                            if game:GetService("Workspace").Characters[game.Players.LocalPlayer.Name].RaceTransformed.Value == true then
                                                                wait(5)
                                                                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                                            end
                                                        until _G.AutoTrain == false or not v.Parent or v.Humanoid.Health <= 0
                                                    end
                                                end
                                            end
                                        else
                                            StartMagnetHeart = false
                                            for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                                                if v.Name == "Candy Pirate [Lv. 2400]" then
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                elseif v.Name == "Snow Demon [Lv. 2425]" then
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                elseif v.Name == "Candy Rebel [Lv. 2375]" then
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                end
                                            end
                                            TP(CFrame.new(-1230.95032, 89.3472443, -14437.3379, -0.228816152, 9.6939317e-08, 0.973469675, 8.52869508e-09, 1, -9.75765531e-08, -0.973469675, -1.4024665e-08, -0.228816152))
                                        end
                                    end)
                                end
                            end
                        end)
                    Race:AddButton("Teleport Gear",function()
                        TP(game:GetService("Workspace").Map.MysticIsland:FindFirstChildOfClass("MeshPart").CFrame)
                    end)
                    Race:AddToggle("Remove Fog",RemoveFog,function(value)
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
                    Race:AddButton("Teleport Top Of Great Tree",function()
                        TP(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625))
                    end)
                    Race:AddButton("Teleport Temple Of Time",function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.3555, 14896.5342, 102.624695, -0.161819234, 3.38540431e-08, 0.9868204, -1.84644104e-08, 1, -3.7333983e-08, -0.9868204, -2.42624125e-08, -0.161819234))
                    end)
                    Race:AddButton("Teleport Lever",function()
                        TP(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
                    end)
                    Race:AddButton("Clock Acces",function()
                        game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove()
                        game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove()
                    end)
                    Race:AddToggle("Disable Infinite Stairs",false,function(value)
                        game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = value
                    end)
                    Race:AddLine()
                    Race:AddDropdown("Select Door","Cyborg Door",{
                        "Cyborg Door",
                        "Fish Door",
                        "Ghoul Door",
                        "Human Door",
                        "Mink Door",
                        "Sky Door"
                    },function(value)
                        _G.SelectDoor = value    
                    end)
                    Race:AddToggle("Teleport",false,function(value)
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
                    Race:AddButton("Teleport Safe Zone [Cyborg Trial]",function()
                        TP(CFrame.new(-20010.7637, 10139.4004, -25.7639999, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    end)
                    Race:AddButton("Teleport Safe Zone",function()
                        TP(CFrame.new(28273.0859, 14896.5332, 157.420639, 0.0920011923, 2.22102354e-08, -0.995758891, 1.27490996e-08, 1, 2.34827606e-08, 0.995758891, -1.48554715e-08, 0.0920011923))
                    end)
                    Race:AddButton("Teleport PvP Zone",function()
                        TP(CFrame.new(28766.6816, 14968.377, -164.132904, 0.649408102, -3.51366936e-08, 0.760440111, 3.89960064e-08, 1, 1.29035422e-08, -0.760440111, 2.12744631e-08, 0.649408102))
                    end)
                    Race:AddLine()
                    Race:AddButton("Complete Mink Trial",function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.MinkTrial.Ceiling.CFrame * CFrame.new(0,-5,0)
                    end)
                    Race:AddButton("Complete Sky Trial",function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.SkyTrial.Model.FinishPart.CFrame
                    end)
                    Race:AddButton("Complete Cyborg Trial",function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,300,0)
                    end)
                    Race:AddSeperator("Transform Race")
                    Race:AddDropdown("Select Race","Mink V4",{"Mink V4","Fishman V4","Skypeian V4","Ghoul V4","Cyborg V4","Human V4"},function(value)
                        _G.RaceV4 = value    
                    end)
                    Race:AddButton("Transform",function()
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
                    end)
                    end
                    --------------------------RACE TAB FINISH---------------------------
                    local Misc = Void:AddTab("Others","12954851272")
                    --------------------------------------------------------------------
                    Time = Settings:AddLabel("                                                  discord.gg/raitohub".."\n                                          Hours : ".." Minutes : ".." Seconds : ")
                    
                    function UpdateTime()
                        local GameTime = math.floor(workspace.DistributedGameTime+0.5)
                        local Hour = math.floor(GameTime/(60^2))%24
                        local Minute = math.floor(GameTime/(60^1))%60
                        local Second = math.floor(GameTime/(60^0))%60
                        Time:Set("                                                  discord.gg/raitohub".."\n                                          Hours : "..Hour.." Minutes : "..Minute.." Seconds : "..Second)
                    end
                    
                    spawn(function()
                        while task.wait(1) do
                            pcall(function()
                                UpdateTime()
                            end)
                        end
                    end)

                    Settings:AddLine()
                    
                    Settings:AddButton("Reset Settings",function()
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

                    Settings:AddSeperator("Farming Settings")
                     
                    Settings:AddToggle("Auto Set Home Point",true,function(value)
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

                    Settings:AddToggle("Kill Extra Mobs",_G.Settings.KillExtra,function(value)
                        _G.KillExtra = value
                        _G.Settings.KillExtra = value
                    end)
            
                    _G.SelectBringMode = "Bring Mob"
                    Settings:AddDropdown("Select Bring Mob Mode",_G.Settings.SelectBringMode,{"Bring Mob","Bring Mob [All]"},function(value)
                        _G.SelectBringMode = value    
                        _G.Settings.SelectBringMode = value
                    end)
                    
                    _G.BringMobs = true
                    Settings:AddToggle("Bring Mob",true,function(value)
                        _G.BringMobs = value
                    end)

                    Settings:AddDropdown("Select Position","Above",{"Behind","Below","Above"},function(value)
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

                    if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
                    if isfolder("Raito Hub Settings Folder") then
                    _G.SelectedDelay = _G.Settings.SelectedDelay
                    end
                    Settings:AddDropdown("Select Attack Delay",_G.Settings.SelectedDelay,{"Ultra","Fast","Normal","Slow"},function(value)
                    _G.SelectedDelay = value
                    _G.Settings.SelectedDelay = value
                    end)

                    spawn(function()
                        while wait(1) do
                            pcall(function()
                            if _G.SelectedDelay == "Ultra" then
                            AttackDelay = 0
                            elseif _G.SelectedDelay == "Fast" then
                            AttackDelay = .1,5
                            elseif _G.SelectedDelay == "Normal" then
                            AttackDelay = .3
                            elseif _G.SelectedDelay == "Slow" then
                            AttackDelay = .5
                            else
                            AttackDelay = 0
                            end
                            end)
                        end
                    end)
                    end

                        Settings:AddToggle("Fast Attack",true,function(value)
                        _G.FastAttack = value
                        _G.DisabledDamage1 = value
                        _G.Remove_EffectDeath1 = value
                        _G.RemoveAnimation1 = value
                        _G.Remove_Effect1 = value
                        _G.CameraShaker1 = value
                        _G.FastAttackNormalSpeed = value
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
                    
                                    local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
                                       local VirtualUser = game:GetService('VirtualUser')
                                       local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
                                       local Client = game:GetService("Players").LocalPlayer
                                       local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
                                       
                                       function SeraphFuckWeapon() 
                                           local p13 = SeraphFrame.activeController
                                           local wea = p13.blades[1]
                                           if not wea then return end
                                           while wea.Parent~=game.Players.LocalPlayer.Character do wea=wea.Parent end
                                           return wea
                                       end
                                       
                                       function getHits(Size)
                                           local Hits = {}
                                           local Enemies = workspace.Enemies:GetChildren()
                                           local Characters = workspace.Characters:GetChildren()
                                           for i=1,#Enemies do local v = Enemies[i]
                                               local Human = v:FindFirstChildOfClass("Humanoid")
                                               if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+55 then
                                                   table.insert(Hits,Human.RootPart)
                                               end
                                           end
                                           for i=1,#Characters do local v = Characters[i]
                                               if v ~= game.Players.LocalPlayer.Character then
                                                   local Human = v:FindFirstChildOfClass("Humanoid")
                                                   if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+55 then
                                                       table.insert(Hits,Human.RootPart)
                                                   end
                                               end
                                           end
                                           return Hits
                                       end
                                       
                                       task.spawn(
                                           function()
                                           while wait(0) do
                                               if  _G.FastAttackNormalSpeed then
                                                   if SeraphFrame.activeController then
                                                       if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                                         SeraphFrame.activeController.attacking = false
                                                           SeraphFrame.activeController.timeToNextBlock = 0
                                                          SeraphFrame.activeController.humanoid.AutoRotate = true
                                                          SeraphFrame.activeController.increment = 3
                                                          SeraphFrame.activeController.blocking = false
                                                          if _G.Hitbox then
                                                          SeraphFrame.activeController.hitboxMagnitude = 50
                                                          end
                                                           SeraphFrame.activeController.timeToNextAttack = 0
                                                           SeraphFrame.activeController.focusStart = 0
                                                           SeraphFrame.activeController.humanoid.AutoRotate = true
                                                           SeraphFrame.activeController.increment = 1 + 1 / 1
                                                        end
                                                   end
                                               end
                                           end
                                       end)
                                       
                                       function Boost()
                                           spawn(function()
                                           game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(SeraphFuckWeapon()))
                                           end)
                                       end
                                       
                                       function Unboost()
                                           spawn(function()
                                               game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("unequipWeapon",tostring(SeraphFuckWeapon()))
                                           end)
                                       end
                                       
                                       local cdnormal = 1.0
                                       local Animation = Instance.new("Animation")
                                       local CooldownFastAttack = 0
                                       Attack = function()
                                           local ac = SeraphFrame.activeController
                                           if ac and ac.equipped then
                                               task.spawn(
                                                   function()
                                                   if tick() - cdnormal > 9.0 then
                                                       ac:attack()
                                                       cdnormal = tick()
                                                   else
                                                       Animation.AnimationId = ac.anims.basic[2]
                                                       ac.humanoid:LoadAnimation(Animation):Play(100, 99)
                                                       game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(120), 2, "")
                                                   end
                                               end)
                                           end
                                       end
                                       
                                       tjw1 = true
                                       task.spawn(
                                           function()
                                               local a = game.Players.LocalPlayer
                                               local b = require(a.PlayerScripts.CombatFramework.Particle)
                                               local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
                                               if not shared.orl then
                                                   shared.orl = c.wrapAttackAnimationAsync
                                               end
                                               if not shared.cpc then
                                                   shared.cpc = b.play
                                               end
                                               if tjw1 then
                                                   pcall(
                                                       function()
                                                           c.wrapAttackAnimationAsync = function(d, e, f, g, h)
                                                               local i = c.getBladeHits(e, f, g)
                                                               if i then
                                                                   b.play = function()
                                                                   end
                                                                   d:Play(15.25, 15.25, 15.25)
                                                                   h(i)
                                                                   b.play = shared.cpc
                                                                   wait(0)
                                                                   d:Stop()
                                                               end
                                                           end
                                                       end
                                                   )
                                               end
                                           end
                                       )
            
                    local Weapon = {
                        "Melee",
                        "Sword",
                        "Fruit",
                        "Gun"
                    }
                    
                    _G.SelectWeapon = _G.Settings.SelectWeapon
                    local SelectWeapona = Settings:AddDropdown("Select Weapon",_G.Settings.SelectWeapon,Weapon,function(value)
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
                    
                    Settings:AddToggle("Auto Save Settings",_G.Settings.SaveSettings,function(value)
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
        
                    Settings:AddToggle("Bypass Teleport",_G.Settings.BypassTP,function(value)
                        BypassTP = value
                        _G.Settings.BypassTP = value
                    end)
        
                    Settings:AddToggle("Double Quest",_G.Settings.DoubleQuest,function(value)
                        _G.DoubleQuest = value
                        _G.Settings.DoubleQuest = value
                    end)

                    Settings:AddToggle("Player Hitbox",_G.Settings.Hitbox,function(value)
                        _G.Hitbox = value
                        _G.Settings.Hitbox = value
                    end)

                    Settings:AddLine()

                    Settings:AddDropdown("Select Config","Normal Config",{"Normal Config","Version Config","Fruit Farm Config","Chest Farm Config","Mirage Farm Config","Full Moon Farm Config","Combat Config"},function(value)
                        _G.SelectConfig = value
                    end)

                    Settings:AddButton("Copy Config",function()
                    if _G.SelectConfig == "Normal Config" then
                        local Config = game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Config")
                        setclipboard(Config)
                    elseif _G.SelectConfig == "Version Config" then
                        local ConfigVersion = game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/ConfigVersion")
                        setclipboard(ConfigVersion)
                    elseif _G.SelectConfig == "Fruit Farm Config" then
                        local ConfigFruit = game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/FruitConfig")
                        setclipboard(ConfigFruit)
                    elseif _G.SelectConfig == "Chest Farm Config" then
                        local ConfigChest = game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/ChestConfig")
                        setclipboard(ConfigChest)
                    elseif _G.SelectConfig == "Mirage Farm Config" then
                        local ConfigMirage = game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/FullMoonConfig")
                        setclipboard(ConfigMirage)
                    elseif _G.SelectConfig == "Full Moon Farm Config" then
                        local ConfigMoon = game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/MirageConfig")
                        setclipboard(ConfigMoon)
                    end
                    end)
            
                    Main:AddSeperator("Auto Farm")
            
                    _G.SelectMode = _G.Settings.SelectMode
                    Main:AddDropdown("Select Mode",_G.Settings.SelectMode,{"Normal Mode","Fast Mode","Safe Mode","No Quest Mode","Nearest Mode","Fruit Mastery Mode","Gun Mastery Mode"},function(value)
                        _G.SelectMode = value
                        _G.Settings.SelectMode = value
                    end)
            
                    Main:AddToggle("Farm Selected Mode",_G.Settings.AutoFarm,function(value)
                        _G.AutoFarm = value
                        _G.Settings.AutoFarm = value
                        StopTween(_G.AutoFarm)
                        if _G.AutoFarm == false and _G.SelectMode == "Fruit Mastery Mode" then
                            _G.FastAttack = true
                            _G.DisabledDamage1 = true
                            _G.Remove_EffectDeath1 = true
                            _G.RemoveAnimation1 = true
                            _G.Remove_Effect1 = true
                            _G.CameraShaker1 = true
                            _G.FastAttackNormalSpeed = true
                            StartFruitMagnet = false
                        end
                    end)
            
                _G.SelectMob = _G.Settings.SelectMob
                if World1 then
                    Main:AddDropdown("Select Mob","Level Farming Mode",{
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
                    Main:AddDropdown("Select Mob","Level Farming Mode",{
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
                    Main:AddDropdown("Select Mob","Level Farming Mode",{
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
                        "Snow Demon [Lv. 2425]"
                    }, function(value)
                        _G.SelectMob = value
                    end)
                end
        
                Main:AddSeperator("Mirage & Full Moon")
            
                local MirageStats = Main:AddLabel("Mirage Status")
                local MoonStats = Main:AddLabel("Full Moon Status")
            
                function MirageCheck()
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    MirageStats:Set("🏝️  Mirage Has Spawned!")
                    else
                    MirageStats:Set("🏝️  Mirage Has Not Spawned!")
                    end
                    end
                            
                    spawn(function()
                     while task.wait(25) do
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
                        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['2'] then
                            MoonIcon = '🌓'
                        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['3'] then
                            MoonIcon = '🌒'
                        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['4'] then
                            MoonIcon = '🌑'
                        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['5'] then
                            MoonIcon = '🌘'
                        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['6'] then
                            MoonIcon = '🌗'
                        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['7'] then
                            MoonIcon = '🌖'
                        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] and not game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                            MoonIcon = '🌕'
                        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] and game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                            MoonIcon = '🌕'
                        end
                    elseif World2 or World1 then
                        if game:GetService("Lighting").FantasySky.MoonTextureId == Moon['1'] then
                            MoonIcon = '🌔'
                        elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['2'] then
                            MoonIcon = '🌓'
                        elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['3'] then
                            MoonIcon = '🌒'
                        elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['4'] then
                            MoonIcon = '🌑'
                        elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['5'] then
                            MoonIcon = '🌘'
                        elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['6'] then
                            MoonIcon = '🌗'
                        elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['7'] then
                            MoonIcon = '🌖'
                        elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['8'] and not game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                            MoonIcon = '🌕'
                        elseif game:GetService("Lighting").FantasySky.MoonTextureId == Moon['8'] and game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                            MoonIcon = '🌕'
                        end
                    end
                    MoonMessage = tostring(MoonIcon..'  Full Moon Has '..'%'..MoonPercent)
                    wait(0.5)
                    MoonStats:Set(MoonMessage)
                    end
                            
                    spawn(function()
                     while task.wait(25) do
                        pcall(function()
                        FullMoon()
                    end)
                    end
                    end)
                    FullMoon()
            
                    Main:AddToggle("Auto Mirage Island",_G.Settings.Mirage,function(value)
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
            
                    Main:AddToggle("Auto Mirage Island Hop",_G.Settings.MirageHop,function(value)
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
            
                    Main:AddToggle("Auto Full Moon Hop",_G.Settings.MoonHop,function(value)
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
                    
                    Main:AddSeperator("Beta Features")
                    
                    if World3 then
                    Main:AddDropdown("Select Boat","RocketBoost",{"RocketBoost","Enforcer","Swan","Flower","Dinghy","PirateSloop","PirateBasic","PirateBrigade","MarineSloop","MarineBasic","MarineBrigade"},function(value)
                    _G.SelectBoatDrive = value
                    end)
                    end
                    _G.Working = true
                    if World3 then
                    Main:AddToggle("Auto Drive Boat",_G.DriveBoat,function(value)
                    _G.DriveBoat = value
                    if _G.DriveBoat == false then
                        game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)  
                    end 
                                  if _G.DriveBoat == true then
                                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then 
                                    function toTargetWait(a)local b=(a.p-game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;tweenrach=game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"),TweenInfo.new(b/250,Enum.EasingStyle.Linear),{CFrame=a})tweenrach:Play()end;toTargetWait(workspace.Map.MysticIsland.PrimaryPart.CFrame*CFrame.new(0,250,0))
                                    else
                                    if World3 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5063.89746, 314.54129, -3154.05127, 0.454513878, 1.48108175e-08, -0.89073962, -7.67635413e-08, 1, -2.25422525e-08, 0.89073962, 7.86220937e-08, 0.454513878))
                                        wait(1)
                                        TP(CFrame.new(-4567.19287, 16.4465275, -2808.38867, 0.33758691, -2.05771133e-08, -0.941294372, -9.97834064e-08, 1, -5.76468793e-08, 0.941294372, 1.13386385e-07, 0.33758691))
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
                                        wait(1)
                                        repeat wait()
                                        if _G.Working == true then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                        end
                                        until game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or _G.DriveBoat == false
                                    end
                                    end  
                                end 
                    StopTween(_G.DriveBoat)
                    end)
                    end

                    spawn(function()
                        pcall(function()
                            while wait(20) do
                                if _G.DriveBoat then
                                if game:GetService("Workspace").Boats:FindFirstChild(_G.SelectBoatDrive) then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "A", false, game)
                                wait(1.3)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)
                                if game:GetService("Workspace").Boats[_G.SelectBoatDrive].Effect.Front.Left["LeftFoam_Emitter"].Attachment.Foam.Enabled == false then
                                _G.Working = false
                                game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                wait(1)
                                game:service('VirtualInputManager'):SendKeyEvent(true, "S", false, game)
                                wait(15)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "S", false, game)
                                _G.Working = true
                                wait(1)
                                game:service('VirtualInputManager'):SendKeyEvent(true, "D", false, game)
                                wait(2)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "D", false, game)
                                end
                                end
                                end 
                            end
                        end)
                    end)

                    spawn(function()
                        pcall(function()
                            while wait(30) do
                                if _G.DriveBoat then
                                if game:GetService("Workspace").Boats:FindFirstChild(_G.SelectBoatDrive) then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "A", false, game)
                                wait(1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)
                                if game:GetService("Workspace").Boats[_G.SelectBoatDrive].Effect.Front.Left["LeftFoam_Emitter"].Attachment.Foam.Enabled == false then
                                    _G.Working = false
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                    wait(1)
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "S", false, game)
                                    wait(15)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "S", false, game)
                                    _G.Working = true
                                    wait(1)
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "D", false, game)
                                    wait(2)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "D", false, game)
                                end
                                end
                                end 
                            end
                        end)
                    end)

                    spawn(function()
                        pcall(function()
                            while wait(40) do
                                if _G.DriveBoat then
                                if game:GetService("Workspace").Boats:FindFirstChild(_G.SelectBoatDrive) then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "A", false, game)
                                wait(1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)
                                if game:GetService("Workspace").Boats[_G.SelectBoatDrive].Effect.Front.Left["LeftFoam_Emitter"].Attachment.Foam.Enabled == false then
                                    _G.Working = false
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                    wait(1)
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "S", false, game)
                                    wait(15)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "S", false, game)
                                    _G.Working = true
                                    wait(1)
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "D", false, game)
                                    wait(2)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "D", false, game)
                                end
                                end
                                end 
                            end
                        end)
                    end)
            
                    spawn(function()
                        pcall(function()
                            while wait(50) do
                                if _G.DriveBoat then
                                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then 
                                    function toTargetWait(a)local b=(a.p-game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;tweenrach=game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"),TweenInfo.new(b/250,Enum.EasingStyle.Linear),{CFrame=a})tweenrach:Play()end;toTargetWait(workspace.Map.MysticIsland.PrimaryPart.CFrame*CFrame.new(0,250,0))
                                    end  
                                end 
                            end
                        end)
                    end)
                    
                    Main:AddToggle("Auto Sea Beast",_G.SeaBeast,function(value)
                    _G.SeaBeast = value
                    StopTween(_G.SeaBeast)
                    end)
                    
           spawn(function()
            while wait() do
                if _G.SeaBeast then
                       pcall(function()
                         for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                             if v:FindFirstChild("HumanoidRootPart") then
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,300,0))
                                if _G.SkillZ and _G.SeaBeast == true then 
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                wait(0.1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end
                                if _G.SkillX and _G.SeaBeast == true then 
                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                wait(0.1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                end
                                if _G.SkillC and _G.SeaBeast == true then 
                                game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                wait(0.1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                end
                                if _G.SkillV and _G.SeaBeast == true then 
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
                    
                    Main:AddButton("Teleport Sea Beast",function()
                    for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                           if v:FindFirstChild("HumanoidRootPart") then
                           TP(v.HumanoidRootPart.CFrame * CFrame.new(0,450,0))
                           end
                        end
                    end)
            
                    Main:AddSeperator("Chest")
            
                    Main:AddToggle("Auto Farm Chest",_G.Settings.FarmChest,function(value)
                        _G.FarmChest = value
                        _G.Settings.FarmChest = value
                    end)
            
                    Main:AddToggle("Auto Farm Chest Hop",_G.Settings.FarmChestHop,function(value)
                        _G.FarmChestHop = value
                        _G.Settings.FarmChestHop = value
                    end)
            
                    spawn(function()
                        pcall(function()
                            while wait(5) do
                                if _G.FarmChest then
                                if not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                                    loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/FarmChest"))()
                                end
                                end 
                            end
                        end)
                    end)

                    Main:AddToggle("Auto Farm Chest Tween",AutoFarmChest,function(value)
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
            
                    Main:AddSeperator("Fruit Farm")
                    
                    Main:AddButton("Copy Fruit Farm Script",function()
                    local ConfigFruit = game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/FruitConfig")
                    setclipboard(ConfigFruit)
                    end)
          
            if game.PlaceId == 2753915549 then
            _G.SeaCheckS = "First Sea"
            elseif game.PlaceId == 4442272183 then
            _G.SeaCheckS = "Second Sea"
            elseif World3 then
            _G.SeaCheckS = "Third Sea"
            end
            
            if World1 or World2 or World3 then
            Main:AddSeperator(_G.SeaCheckS)
            end
                         
                    if World3 then
                    Main:AddToggle("Auto Farm Pirate Raid",false,function(value)
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
                        Main:AddToggle("Auto Second Sea",_G.AutoSecondSea,function(value)
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
                        Main:AddToggle("Auto Third Sea",_G.AutoThirdSea,function(value)
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
                        Main:AddToggle("Auto Farm Factory",_G.AutoFactory,function(value)
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
                    if string.find(v.Name, "Boss") then
                        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                            else
                            table.insert(BossTable, v.Name)
                        end
                    end
                end
            
                local BossName = Main:AddDropdown("Select Boss","nil", BossTable, function(value)
                    _G.SelectBoss = value
                end)
            
            spawn(function()
            while wait(20) do
              BossName:Clear()
               for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                  if string.find(v.Name, "Boss") then
                  BossName:Add(v.Name) 
                  end
               end
            end
            end)
            
                Main:AddToggle("Auto Farm Boss",_G.Settings.AutoFarmBoss,function(value)
                    _G.AutoFarmBoss = value
                    _G.Settings.AutoFarmBoss = value
                    StopTween(_G.AutoFarmBoss)
                end)
            
                Main:AddToggle("Auto Quest Boss",_G.Settings.AutoQuestBoss,function(value)
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
            
                Main:AddToggle("Auto Farm All Bosses",_G.Settings.AutoAllBoss,function(value)
                    _G.AutoAllBoss = value
                    _G.Settings.AutoAllBoss = value
                    StopTween(_G.AutoAllBoss)
                end)
            
                spawn(function()
                    while wait() do
                        if _G.AutoAllBoss then
                            pcall(function()
                                for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                                    if string.find(v.Name, "Boss") then
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
                    
                local MobKilled = Main:AddLabel("Killed")
                
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
                
                Main:AddToggle("Auto Farm Cake Prince",_G.AutoDoughtBoss,function(value)
                    _G.AutoDoughtBoss = value
                    StopTween(_G.AutoDoughtBoss)
                end)
                
                spawn(function()
                    while wait() do
                        if _G.AutoDoughtBoss then
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
                                                until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
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
                                                            until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
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
            
                Main:AddToggle("Auto Farm Cake King",_G.AutoKing,function(value)
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
                
                Main:AddToggle("Auto Spawn Cake Prince",_G.Spawn,function(vu)
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

                Main:AddSeperator("Material Farm")
                        
                if World1 then
                Main:AddDropdown("Select Materials","Angel Wings [Sea 1]",{
                   "Angel Wings [Sea 1]",
                   },function(value)
                   _G.MaterialFarm = value
               end)
           end
               
               if World2 then
               Main:AddDropdown("Select Materials","Mystic Droplet [God Human 10x]",{
                   "Mystic Droplet [God Human 10x]",
                   "Magma Ore [God Human 20x]",
                   "Radioactive [Sea 2]",
                   "Vampire Fangs [Sea 2]",
                   "Ectoplasm [Sea 2]"
                   },function(value)
                   _G.MaterialFarm = value
               end)
           end
               
               if World3 then
                    Main:AddDropdown("Select Materials","Dragon Scale [God Human 10x]",{
                   "Dragon Scale [God Human 10x]",
                   "Fish Tail [God Human 20x]",
                   "Leather + Scrap Metal [Sea 3]",
                   "Mini Tusk [Sea 3]",
                   "Gun Powder [Sea 3]",
                   "Demonic Wisp [Sea 3]",
                   "Conjured Cocoa [Sea 3]"
                   },function(value)
                   _G.MaterialFarm = value
               end)
           end
           
           Main:AddToggle("Farm Materials",_G.MaterialFarmm,function(value)
               _G.MaterialFarmm = value
               if _G.MaterialFarmm == true then
                   repeat wait()
                       if _G.MaterialFarm == "Dragon Scale [God Human 10x]" then
                           if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer [Lv. 1600]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Dragon Crew Archer [Lv. 1600]" then
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
                                           if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
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
                           if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider [Lv. 1775]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Fishman Raider [Lv. 1775]" then
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
                                               if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter [Lv. 1450]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Water Fighter [Lv. 1450]" then
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
                                               if game:GetService("Workspace").Enemies:FindFirstChild("Magma Ninja [Lv. 1175]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Magma Ninja [Lv. 1175]" then
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
                                               if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate [Lv. 1900]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Jungle Pirate [Lv. 1900]" then
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
                       if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Mythological Pirate [Lv. 1850]" then
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
                       if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire [Lv. 1525]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Pistol Billionaire [Lv. 1525]" then
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
                       if game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Demonic Soul [Lv. 2025]" then
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
                           if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Cocoa Warrior [Lv. 2300]" then
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
                           if game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Shanda [Lv. 475]" then
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
                           if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff [Lv. 800]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Factory Staff [Lv. 800]" then
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
                           if game:GetService("Workspace").Enemies:FindFirstChild("Vampire [Lv. 975]") then
                               for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                   if v.Name == "Vampire [Lv. 975]" then
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
            
                    Main:AddSeperator("Weapon(s)")
            
                    Main:AddToggle("Auto Soul Guitar",AutoSoulGuitar,function(value)
                        AutoSoulGuitar = value
                        StopTween(AutoSoulGuitar)
                    end)

                    function GetWeaponInventory(Weaponname)
                        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
                            if type(v) == "table" then
                                if v.Type == "Sword" then
                                    if v.Name == Weaponname then
                                        return true
                                    end
                                end
                            end
                        end
                        return false
                    end
            
                    spawn(function()
                        while task.wait() do
                            pcall(function()
                                if AutoSoulGuitar then
                                    if GetWeaponInventory("Soul Guitar") == false then
                                        if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
                                            if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
                                            else
                                                if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                                    if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
                                                        Quest2 = true
                                                        repeat task.wait() 
                                                        TP(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) 
                                                        until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSoulGuitar
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
                                                        wait(1)
                                                    elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                                        if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                                            Quest4 = true
                                                            repeat task.wait() 
                                                                TP(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) 
                                                            until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSoulGuitar
                                                            wait(1)
                                                            TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                                            wait(1)
                                                            TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                            wait(1)
                                                            TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                                            wait(1)
                                                            TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                                            wait(1)
                                                            TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                                        else
                                                            Quest3 = true
                                                            local Notification = require(game:GetService("ReplicatedStorage").Notification)
                                                            Notification.new("Quest 3 Not Working!"):Display()
                                                        end
                                                    else
                                                        if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                                            local args = {
                                                                [1] = "GuitarPuzzleProgress",
                                                                [2] = "Ghost"
                                                            }
                    
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                        end
                                                        if game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
                                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                                    if v.Name == "Living Zombie [Lv. 2000]" then
                                                                        EquipWeapon(_G.SelectWeapon)
                                                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                        v.HumanoidRootPart.Transparency = 1
                                                                        v.Humanoid.JumpPower = 0
                                                                        v.Humanoid.WalkSpeed = 0
                                                                        v.HumanoidRootPart.CanCollide = false
                                                                        v.Humanoid:ChangeState(11)
                                                                        v.Humanoid:ChangeState(14)
                                                                        FarmPos = v.HumanoidRootPart.CFrame
                                                                        MonFarm = v.Name
                                                                        Click()
                                                                    end
                                                                end
                                                            end
                                                        else
                                                            TP(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                                        end
                                                    end
                                                else    
                                                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
                                                        local Notification = require(game:GetService("ReplicatedStorage").Notification)
                                                        Notification.new("Go To Grave!"):Display()
                                                        TP(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                                    elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
                                                        local Notification = require(game:GetService("ReplicatedStorage").Notification)
                                                        Notification.new("Wait Next Night!"):Display()
                                                    else
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                                    end
                                                end
                                            end
                                        else
                                            TP(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                                        end
                                    end
                                end
                            end)
                        end
                    end)

                Main:AddSeperator("Fighting Style")
                    
                Main:AddToggle("Auto Godhuman",_G.AutoGodhuman,function(value)
                    _G.AutoGodhuman = value
                end)
                
                spawn(function()
                while task.wait() do
                    if _G.AutoGodhuman then
                        pcall(function()
                            if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                                    end
                                else
                                    local Notification = require(game:GetService("ReplicatedStorage").Notification)
                                    Notification.new("<Color=Blue>".."You Dont Have Superhuman".."<Color=/>"):Display()
                                end
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    end
                                else
                                    local Notification = require(game:GetService("ReplicatedStorage").Notification)
                                    Notification.new("<Color=Blue>".."You Dont Have Death Step".."<Color=/>"):Display()
                                end
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                    end
                                else
                                    local Notification = require(game:GetService("ReplicatedStorage").Notification)
                                    Notification.new("<Color=Blue>".."You Dont Have Sharkman Karete".."<Color=/>"):Display()
                                end
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                    end
                                else
                                    local Notification = require(game:GetService("ReplicatedStorage").Notification)
                                    Notification.new("<Color=Blue>".."You Dont Have Electric Claw".."<Color=/>"):Display()
                                end
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
                                        if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true), "Bring") then
                                            local Notification = require(game:GetService("ReplicatedStorage").Notification)
                                            Notification.new("<Color=Blue>".."You Dont Have Enough Material".."<Color=/>"):Display()
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                                        end
                                    end
                                else
                                    local Notification = require(game:GetService("ReplicatedStorage").Notification)
                                    Notification.new("<Color=Blue>".."You Dont Have Dragon Talon".."<Color=/>"):Display()
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                            end
                        end)
                    end
                end
            end)
            
            Main:AddToggle("Auto Fully Godhuman",_G.AutoFullyGodhuman,function(value)
                _G.AutoFullyGodhuman = value
                _G.Auto_God_Human = value
                StopTween(_G.AutoFullyGodhuman)
            end)
            
            function CheckMaterial(matname)
                for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
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
            
            spawn(function()
                while wait() do
                    if _G.AutoFullyGodhuman then
                        pcall(function()
                        if game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                            _G.SelectWeapon = "Godhuman"
                            else
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value <= 399 and  game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value <= 399 then
                                if not World3 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                elseif World3 then
                                if CheckMaterial("Fish Tail") <= 20 and World3 then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                      v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    StartMagnet = true
                                                    v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                until not _G.AutoFullyGodhuman or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                              else
                                            StartMagnet = false
                                             TP(CFrame.new(-10993,332, -8940))
                                            end
                                        end
                                    elseif CheckMaterial("Dragon Scale") <= 10 and World3 then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat task.wait()
                                                        EquipWeapon(_G.SelectWeapon)
                                                      v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    StartMagnet = true
                                                    v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                until not _G.AutoFullyGodhuman or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                            else
                                                StartMagnet = false
                                                TP(CFrame.new(6594,383,139))
                                                end
                                        end
                                        if CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                        end
                                    end
                                    elseif not World2 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                    elseif World2 then
                                    if CheckMaterial("Magma Ore") <= 20 and World2 then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Magma Ninja [Lv. 1175]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    StartMagnet = true
                                                    v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                until not _G.AutoFullyGodhuman or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                                else
                                                    StartMagnet = false
                                                    TP(CFrame.new(-5428,78, -5959))
                                                    end
                                            end
                                    elseif CheckMaterial("Mystic Droplet") <= 10 and World2 then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Water Fighter [Lv. 1450]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                      v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    StartMagnet = true
                                                    v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                until not _G.AutoFullyGodhuman or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                                else
                                                    StartMagnet = false
                                                    TP(CFrame.new(-3385,239, -10542))
                                                    end
                                            end
                                            if not World3 then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                            elseif World3 then
                                                if CheckMaterial("Mystic Droplet") >= 10 and CheckMaterial("Magma Ore") >= 20 and CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                                                wait(.3)
                                                _G.AutoFarm = true
                                                end
                                            end
                                        end
                                    end
                                    else 
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
                                       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                       end
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    end
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                    end
                               end
                            end
                        end)
                    end
                 end
            end)
                
                Main:AddToggle("Auto Superhuman",_G.Auto_Superhuman,function(value)
                    _G.Auto_Superhuman = value
                end)
                
                Main:AddToggle("Auto Fully Superhuman",_G.Auto_Fully_Superhuman,function(value)
                    _G.Auto_Fully_Superhuman = value
                end)
            
                spawn(function()
                    while wait(.25) do
                        if _G.Auto_Superhuman or _G.Auto_Fully_Superhuman and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then 
                            pcall(function()
                                if game:GetService("Players").LocalPlayer.Data.Beli.Value >= 500000 and (game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")) then
                                    _G.SelectWeapon = "Combat"
                                    local args = {
                                        [1] = "BuyElectro"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end   
                                if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                                    _G.SelectWeapon = "Superhuman"
                                end  
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299  then
                                    _G.SelectWeapon = "Black Leg"
                                end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299  then
                                    _G.SelectWeapon = "Electro"
                                end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299  then
                                    _G.SelectWeapon = "Fishman Karate"
                                end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299  then
                                    _G.SelectWeapon = "Dragon Claw"
                                end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300  then
                                    local args = {
                                        [1] = "BuyFishmanKarate"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300  then
                                    local args = {
                                        [1] = "BuyFishmanKarate"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300  then
                                    local args = {
                                        [1] = "BuyBlackLeg"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
                                    if _G.Auto_Fully_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
                                        if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                _G.KillAura = true
                _G.Auto_Dungeon = true
                _G.SelectChip = "Flame"
                _G.AutoBuyChip = true
                _G.Auto_StartRaid = true
                                        end
                                    else
                _G.KillAura = false
                _G.Auto_Dungeon = false
                _G.AutoBuyChip = false
                _G.Auto_StartRaid = false
                                        local args = {
                                            [1] = "BlackbeardReward",
                                            [2] = "DragonClaw",
                                            [3] = "2"
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
                                    if _G.Auto_Fully_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
                                        if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                _G.KillAura = true
                _G.Auto_Dungeon = true
                _G.SelectChip = "Flame"
                _G.AutoBuyChip = true
                _G.Auto_StartRaid = true
                                        end
                                    else
                _G.KillAura = false
                _G.Auto_Dungeon = false
                _G.AutoBuyChip = false
                _G.Auto_StartRaid = false
                                        local args = {
                                            [1] = "BlackbeardReward",
                                            [2] = "DragonClaw",
                                            [3] = "2"
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300  then
                                    local args = {
                                        [1] = "BuySuperhuman"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300  then
                                    local args = {
                                        [1] = "BuySuperhuman"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end 
                            end)
                        end
                    end
                end)
                
                Main:AddToggle("Auto DeathStep",_G.AutoDeathStep,function(value)
                    _G.AutoDeathStep = value
                end)
                
                spawn(function()
                    while wait() do wait()
                        if _G.AutoDeathStep then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                                    _G.SelectWeapon = "Death Step"
                                end  
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                                    _G.SelectWeapon = "Death Step"
                                end  
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                                    _G.SelectWeapon = "Black Leg"
                                end 
                            else 
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                            end
                        end
                    end
                end)
            
                Main:AddToggle("Auto Fully DeathStep",_G.AutoDeathStep,function(value)
                    _G.AutoDeathStep = value
                end)
                
                spawn(function()
                    while wait() do
                        if _G.Auto_Fully_Death_Step then
                            pcall(function()
                                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                                end				
                                if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then  
                                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
                                        EquipWeapon("Library Key")
                                        repeat wait() TP(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_Death_Step
                                        if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                            wait(1.2)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                                            wait(0.5)
                                        end
                                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then   
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then 	
                                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then    
                                                        repeat wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.Head.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                            Click()
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Fully_Death_Step == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
                                                    end
                                                end
                                            else
                                                repeat wait() TP(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").HumanoidRootPart.CFrame) until game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]")
                                            end
                                        else 
                                            hop()
                                        end
                                    end
                                else 
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                                end
                            end)
                        end
                    end
                end)
            
                Main:AddToggle("Auto Sharkman Karate",_G.AutoSharkman,function(value)
                    _G.AutoSharkman = value
                end)
                
                spawn(function()
                    pcall(function()
                        while wait() do
                            if _G.AutoSharkman then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                        TP(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                                    else 
                                        Ms = "Tide Keeper [Lv. 1475] [Boss]"
                                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then   
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == Mon then    
                                                    OldCFrameShark = v.HumanoidRootPart.CFrame
                                                    repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.Head.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        v.HumanoidRootPart.CFrame = OldCFrameShark
                                                        TP(v.HumanoidRootPart.CFrame*PositionFarm)
                                                        Click()
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                                end
                                            end
                                        else
                                            TP(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                                            wait(3)
                                        end
                                    end
                                else 
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                end
                            end
                        end
                    end)
                end)
            
                Main:AddToggle("Auto Fully Sharkman Karate",_G.Auto_Fully_SharkMan_Karate,function(value)
                    _G.Auto_Fully_SharkMan_Karate = value
                end)
            
                spawn(function()
                    while wait() do
                        if _G.Auto_Fully_SharkMan_Karate then
                            pcall(function()
                                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                                end		
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                        repeat wait() TP(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365) until (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_SharkMan_Karate
                                        if (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                            wait(1.2)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                            wait(0.5)
                                        end
                                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then   
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then 	
                                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then    
                                                        repeat wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.Select_Weapon)
                                                            v.Head.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                            Click()
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Fully_SharkMan_Karate == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                                    end
                                                end
                                            else
                                                repeat wait() TP(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame) until game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]")
                                            end
                                        else
                                            hop()
                                        end
                                    end
                                else 
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                end
                            end)
                        end
                    end
                end)
                
                Main:AddToggle("Auto Electric Claw",_G.AutoElectricClaw,function(value)
                    _G.AutoElectricClaw = value
                    StopTween(_G.AutoElectricClaw)
                end)
                
                spawn(function()
                    pcall(function()
                        while wait() do 
                            if _G.AutoElectricClaw then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw") then
                                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                        _G.SelectWeapon = "Electric Claw"
                                    end  
                                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                        _G.SelectWeapon = "Electric Claw"
                                    end  
                                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                                        _G.SelectWeapon = "Electro"
                                    end 
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                                end
                            end
                            if _G.AutoElectricClaw then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                                        if _G.AutoFarm == false then
                                            repeat task.wait()
                                                TP(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                            wait(2)
                                            repeat task.wait()
                                                TP(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                            wait(1)
                                            repeat task.wait()
                                                TP(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                            wait(1)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                        elseif _G.AutoFarm == true then
                                            _G.AutoFarm = false
                                            wait(1)
                                            repeat task.wait()
                                                TP(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                            wait(2)
                                            repeat task.wait()
                                                TP(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                            wait(1)
                                            repeat task.wait()
                                                TP(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                            until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                            wait(1)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                            _G.SelectWeapon = "Electric Claw"
                                            wait(.1)
                                            _G.AutoFarm = true
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end)
                
                Main:AddToggle("Auto Dragon Talon",_G.AutoDragonTalon,function(value)
                    _G.AutoDragonTalon = value
                end)
                
                spawn(function()
                    while wait() do
                        if _G.AutoDragonTalon then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                    _G.SelectWeapon = "Dragon Talon"
                                end  
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                    _G.SelectWeapon = "Dragon Talon"
                                end  
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                                    _G.SelectWeapon = "Dragon Claw"
                                end 
                            else 
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                            end
                        end
                    end
                end)
                
                spawn(function()
                    game:GetService("RunService").RenderStepped:Connect(function()
                        pcall(function()
                            if _G.UseSkill then
                                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                                    if v.Name == "NotificationTemplate" then
                                        if string.find(v.Text,"Skill locked!") then
                                            v:Destroy()
                                        end
                                    end
                                end
                            end
                        end)
                    end)
                end)
            
                Main:AddSeperator("Advance Dungeon")
                    
                Main:AddToggle("Auto Advance Dungeon",_G.AutoAdvanceDungeon,function(value)
                    _G.AutoAdvanceDungeon = value
                    StopTween(_G.AutoAdvanceDungeon)
                end)
                
                spawn(function()
                    while wait() do
                        if _G.AutoAdvanceDungeon then
                            pcall(function()
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                        if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                            TP(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                            if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                                wait(1.5)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
                                            end
                                        end
                                    elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                        if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                            TP(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                            if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                                wait(1.5)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
                                            end
                                        end
                                    end 
                                end
                            end)
                        end
                    end
                end)
                
                if World3 then
                Main:AddSeperator("Buddy Sword")
                
                Main:AddToggle("Auto Buddy Sword",_G.AutoBudySword,function(value)
                    _G.AutoBudySword = value
                    StopTween(_G.AutoBudySword)
                end)
                
                Main:AddToggle("Auto Buddy Sword Hop",_G.AutoBudySwordHop,function(value)
                    _G.AutoBudySwordHop = value
                end)
                
                spawn(function()
                    while wait() do
                        if _G.AutoBudySword then
                            pcall(function()
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
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
                                                until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        end
                                    end
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                        TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * PositionFarm)
                                    else
                                        if _G.AutoBudySwordHop then
                                            Hop()
                                        end
                                    end
                                end
                            end)
                        end
                    end
                end)
                end
                
                if World3 then
                Main:AddSeperator("Elite")
                
                local EliteProgress = Main:AddLabel("")
                
                spawn(function()
                    pcall(function()
                        while wait(1) do
                            EliteProgress:Set("💪🏼 You Has Defeated "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress").." Elite Hunters!")
                        end
                    end)
                end)
                
                 local EliteStatus = Main:AddLabel("")
                 
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

                if World2 then
                    Main:AddSeperator("Dark Coat")
                    
                    local BlackBeardStatus = Main:AddLabel("Status : nil")
                    
                        spawn(function()
                            while wait() do
                                pcall(function()
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
                                        BlackBeardStatus:Set("Status : Spawned")	
                                    else
                                        BlackBeardStatus:Set("Status : Not Spawned")	
                                    end
                                end)
                            end
                        end)
                    
                    Main:AddToggle("Auto Dark Coat",_G.BlackBeard,function(value)
                        _G.BlackBeard = value
                        StopTween(_G.BlackBeard)
                    end)
                    
                    Main:AddToggle("Auto Dark Coat Hop",_G.BlackBeardHop,function(value)
                        _G.BlackBeardHop = value
                    end)
                    
                    spawn(function()
                        while wait() do
                            if _G.BlackBeard then
                                pcall(function()
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if string.find(v.Name , "Fist of Darkness") then
                                                repeat task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                                    v.HumanoidRootPart.Transparency = 1
                                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                                until v.Humanoid.Health <= 0 or _G.BlackBeard == false
                                            end
                                        end
                                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
                                        repeat TP(CFrame.new(3777.564697265625, 14.876824378967285, -3499.460205078125)) wait() until (CFrame.new(3777.564697265625, 14.876824378967285, -3499.460205078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
                                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        else
                                            if _G.BlackBeard then
                                                Hop()
                                            end
                                        end
                                    end
                                end)
                            end
                        end
                    end)
                    end
                
                if World3 then
                Main:AddSeperator("Hallow Scythe")
                
                Main:AddToggle("Auto Hallow Scythe",_G.AutoFarmBossHallow,function(value)
                    _G.AutoFarmBossHallow = value
                    StopTween(_G.AutoFarmBossHallow)
                end)
                
                Main:AddToggle("Auto Hallow Scythe Hop",_G.AutoFarmBossHallowHop,function(value)
                    _G.AutoFarmBossHallowHop = value
                end)
                
                spawn(function()
                    while wait() do
                        if _G.AutoFarmBossHallow then
                            pcall(function()
                                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if string.find(v.Name , "Soul Reaper") then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                TP(v.HumanoidRootPart.CFrame*PositionFarm)
                                                Click()
                                                v.HumanoidRootPart.Transparency = 1
                                                sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                            until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                                        end
                                    end
                                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                                    repeat TP(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                                    EquipWeapon("Hallow Essence")
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                                        TP(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * PositionFarm)
                                    else
                                        if _G.AutoFarmBossHallowHop then
                                            Hop()
                                        end
                                    end
                                end
                            end)
                        end
                    end
                end)
                
                Main:AddSeperator("Dark Dagger")
                
                Main:AddToggle("Auto Dark Dagger",_G.AutoDarkDagger,function(value)
                    _G.AutoDarkDagger = value
                    StopTween(_G.AutoDarkDagger)
                end)
                    
                spawn(function()
                    pcall(function()
                        while wait() do
                            if _G.AutoDarkDagger then
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            repeat task.wait()
                                                pcall(function()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                    Click()
                                                end)
                                            until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    TP(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                                end
                            end
                        end
                    end)
                end)
                
                Main:AddToggle("Auto Dark Dagger Hop",_G.AutoDarkDagger_Hop,function(value)
                    _G.AutoDarkDagger_Hop = value
                end)
                
                spawn(function()
                    pcall(function()
                        while wait() do
                            if (_G.AutoDarkDagger_Hop and _G.AutoDarkDagger) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                                Hop()
                            end
                        end
                    end)
                end)
                end

                Main:AddSeperator("Swan Glasses")
                
                Main:AddToggle("Auto Swan Glasses",_G.AutoFarmSwanGlasses,function(value)
                    _G.AutoFarmSwanGlasses = value
                    StopTween(_G.AutoFarmSwanGlasses)
                end)
                
                spawn(function()
                    pcall(function()
                        while wait() do
                            if _G.AutoFarmSwanGlasses then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            repeat task.wait()
                                                pcall(function()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                    Click()
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                end)
                                            until _G.AutoFarmSwanGlasses == false or v.Humanoid.Health <= 0
                                        end
                                    end
                                else 
                                    repeat task.wait()
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)) 
                                    until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.AutoFarmSwanGlasses == false
                                end
                            end
                        end
                    end)
                end)
                
                Main:AddToggle("Auto Swan Glasses Hop",_G.AutoFarmSwanGlasses_Hop,function(value)
                    _G.AutoFarmSwanGlasses_Hop = value
                end)
                
                spawn(function()
                    pcall(function()
                        while wait(.1) do
                            if (_G.AutoFarmSwanGlasses and _G.AutoFarmSwanGlasses_Hop) and World2 and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                Hop()
                            end
                        end
                    end)
                end)
                
                if World3 then
                Main:AddSeperator("Bone")
                
                local BoneFarm = Main:AddToggle("Auto Farm Bone",_G.Auto_Farm_Bone,function(value)
                    _G.Auto_Farm_Bone = value
                    StopTween(_G.Auto_Farm_Bone)
                end)
                
                spawn(function()
                    game:GetService("RunService").Heartbeat:Connect(function()
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if _G.Auto_Farm_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350 then
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
                                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
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
                                        if v.Name == "Reborn Skeleton [Lv. 1975]" then
                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        elseif v.Name == "Living Zombie [Lv. 2000]" then
                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        elseif v.Name == "Demonic Soul [Lv. 2025]" then
                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                        elseif v.Name == "Posessed Mummy [Lv. 2050]" then
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
                
                Main:AddSeperator("Observation")
                
                local ObservationRange = Main:AddLabel("")
                
                spawn(function()
                    while wait() do
                        pcall(function()
                            ObservationRange:Set("🧐 You Got "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value).." Observation Level!")
                        end)
                    end
                end)
                
                Main:AddToggle("Auto Farm Observation",_G.Settings.AutoObservation,function(value)
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
                
                Main:AddToggle("Auto Farm Observation Hop",_G.Settings.AutoObservation_Hop,function(value)
                    _G.AutoObservation_Hop = value
                    _G.Settings.AutoObservation_Hop = value
                end)
                
                spawn(function()
                    pcall(function()
                        while wait() do
                            if _G.AutoObservation then
                                    if World2 then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                                repeat task.wait()
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                                until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                            else
                                                repeat task.wait()
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
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
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                                repeat task.wait()
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                                until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                            else
                                                repeat task.wait()
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
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
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
                                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                                repeat task.wait()
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                                until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                            else
                                                repeat task.wait()
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
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
                
                Main:AddSeperator("Saber")
                
                Main:AddToggle("Auto Saber",_G.AutoSaber,function(value)
                    _G.AutoSaber = value
                    StopTween(_G.AutoSaber)
                end)
                
                Main:AddToggle("Auto Saber Hop",_G.AutoSaber_Hop,function(value)
                    _G.AutoSaber_Hop = value
                end)
                
                spawn(function()
                    while wait() do
                        if _G.AutoSaber then
                            pcall(function()
                                if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Saber Expert [Lv. 200] [Boss]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                PosMonSaber = v.HumanoidRootPart.CFrame
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CFrame = PosMonSaber
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    Click()
                                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                                until not _G.AutoSaber or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        end
                                    end
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                                        TP(game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]").HumanoidRootPart.CFrame * PositionFarm)
                                    else
                                        if _G.AutoSaber_Hop then
                                            Hop()
                                        end
                                    end
                                end
                            end)
                        end
                    end
                end)
                
                Main:AddSeperator("Legendary Sword")
                
                Main:AddToggle("Auto Legendary Sword",_G.AutoBuyLegendarySword,function(value)
                    _G.AutoBuyLegendarySword = value
                end)
                
                spawn(function()
                    while wait() do
                        if _G.AutoBuyLegendarySword then
                            pcall(function()
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
                                if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
                                    wait(10)
                                    Hop()
                                end
                            end)
                        end 
                    end
                end)
                
                Main:AddToggle("Auto Legendary Sword Hop",_G.AutoBuyLegendarySword_Hop,function(value)
                    _G.AutoBuyLegendarySword_Hop = value
                end)
                
                Main:AddSeperator("Enchancement Colour")
                
                Main:AddToggle("Auto Enchancement Colour",_G.Settings.AutoBuyEnchancementColour,function(value)
                    _G.AutoBuyEnchancementColour = value
                    _G.Settings.AutoBuyEnchancementColour = value
                end)
                
                Main:AddToggle("Auto Enchancement Hop",_G.Settings.AutoBuyEnchancementColour_Hop,function(value)
                    _G.AutoBuyEnchancementColour_Hop = value
                    _G.Settings.AutoBuyEnchancementColour_Hop = value
                end)
                
                spawn(function()
                    while wait() do
                        if _G.AutoBuyEnchancementColour then
                            local args = {
                                [1] = "ColorsDealer",
                                [2] = "2"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then
                                wait(10)
                                Hop()
                            end
                        end 
                    end
                end)
                
                Main:AddSeperator("Other")
                
                Main:AddToggle("Auto Musketeer Hat",_G.AutoMusketeerHat,function(value)
                    _G.AutoMusketeerHat = value
                    StopTween(_G.AutoMusketeerHat)
                end)
                
                spawn(function()
                    pcall(function()
                        while wait(.1) do
                            if _G.AutoMusketeerHat then
                                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Forest Pirate [Lv. 1825]" then
                                                    repeat task.wait()
                                                        pcall(function()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            AutoHaki()
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            Click()
                                                            MusketeerHatMon = v.HumanoidRootPart.CFrame
                                                            StartMagnetMusketeerhat = true
                                                        end)
                                                    until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                    StartMagnetMusketeerhat = false
                                                end
                                            end
                                        else
                                            StartMagnetMusketeerhat = false
                                            TP(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                                        end
                                    else
                                        TP(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                                        if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                            wait(1.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                                        end
                                    end
                                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                                    OldCFrameElephant = v.HumanoidRootPart.CFrame
                                                    repeat task.wait()
                                                        pcall(function()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            AutoHaki()
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.CFrame = OldCFrameElephant
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        end)
                                                    until _G.AutoMusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                end
                                            end
                                        else
                                            TP(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                                        end
                                    else
                                        TP(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                                        if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                            wait(1.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                                        end
                                    end
                                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                                    TP(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                                end
                            end
                        end
                    end)
                end)
                
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
                
                Main:AddToggle("Auto Bartlio Quest",_G.AutoBartilo,function(value)
                    _G.AutoBartilo = value
                end)
                
                spawn(function()
                    pcall(function()
                        while wait(.1) do
                            if _G.AutoBartilo then
                                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                            Ms = "Swan Pirate [Lv. 775]"
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == Ms then
                                                    pcall(function()
                                                        repeat task.wait()
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                            EquipWeapon(_G.SelectWeapon)
                                                            AutoHaki()
                                                            v.HumanoidRootPart.Transparency = 1
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            TP(v.HumanoidRootPart.CFrame * PositionFarm)													
                                                            PosMonBarto =  v.HumanoidRootPart.CFrame
                                                            Click()
                                                            AutoBartiloBring = true
                                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                        AutoBartiloBring = false
                                                    end)
                                                end
                                            end
                                        else
                                            repeat TP(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                                        end
                                    else
                                        repeat TP(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                                        wait(1.1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                                    end 
                                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                        Ms = "Jeremy [Lv. 850] [Boss]"
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == Ms then
                                                OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                                repeat task.wait()
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                                    TP(v.HumanoidRootPart.CFrame * PositionFarm)
                                                    Click()
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                                            end
                                        end
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                        repeat TP(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                                        wait(1.1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                                        wait(1)
                                        repeat TP(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                                        wait(2)
                                    else
                                        repeat TP(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                                    end
                                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                                    repeat TP(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                                    wait(1)
                                    repeat TP(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                                    wait(1)
                                    repeat TP(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                                    wait(1)
                                    repeat TP(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                                    wait(1)
                                    repeat TP(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                                    wait(1)
                                    repeat TP(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                                    wait(1)
                                    repeat TP(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                                    wait(1)
                                    repeat TP(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                                end
                            end 
                        end
                    end)
                end)
                
                Main:AddToggle("Auto Holy Torch",_G.AutoHolyTorch,function(value)
                    _G.AutoHolyTorch = value
                    StopTween(_G.AutoHolyTorch)
                end)
                
                spawn(function()
                    while wait() do
                        if _G.AutoHolyTorch then
                            pcall(function()
                                wait(1)
                                TP(CFrame.new(-10752, 417, -9366))
                                wait(1)
                                TP(CFrame.new(-11672, 334, -9474))
                                wait(1)
                                TP(CFrame.new(-12132, 521, -10655))
                                wait(1)
                                TP(CFrame.new(-13336, 486, -6985))
                                wait(1)
                                TP(CFrame.new(-13489, 332, -7925))
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
                                    if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
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
                                        if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "God's Guard [Lv. 450]" or v.Name == "Galley Captain [Lv. 650]" or v.Name == "Galley Pirate [Lv. 625]") and (v.HumanoidRootPart.Position - FastFarmMon.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if v.Name == "Monkey [Lv. 14]" then
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
                                        elseif v.Name == "Factory Staff [Lv. 800]" then
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
                                        if v.Name == "Monkey [Lv. 14]" then
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
                                        elseif v.Name == "Factory Staff [Lv. 800]" then
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
                                        if (v.Name == "Cocoa Warrior [Lv. 2300]") and (v.HumanoidRootPart.Position - POSCON.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Dragon Crew Archer [Lv. 1600]") and (v.HumanoidRootPart.Position - POSSC.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Fishman Raider [Lv. 1775]") and (v.HumanoidRootPart.Position - POSFT.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Water Fighter [Lv. 1450]") and (v.HumanoidRootPart.Position - POSMP.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Magma Ninja [Lv. 1175]") and (v.HumanoidRootPart.Position - POSMO.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Jungle Pirate [Lv. 1900]") and (v.HumanoidRootPart.Position - POSJT.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Mythological Pirate [Lv. 1850]") and (v.HumanoidRootPart.Position - POSMT.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Pistol Billionaire [Lv. 1525]") and (v.HumanoidRootPart.Position - POSPB.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Demonic Soul [Lv. 2025]") and (v.HumanoidRootPart.Position - POSDS.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Factory Staff [Lv. 800]") and (v.HumanoidRootPart.Position - POSFS.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Vampire [Lv. 975]") and (v.HumanoidRootPart.Position - POSV.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                    if _G.AutoDoughtBoss and MagnetDought then
                                        if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
                                        if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 300 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
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
            
                local PlayerCheck = Combat:AddLabel("Players")
                    
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
                
                local SelectedPly = Combat:AddDropdown("Select Players","nil",Playerslist,function(value)
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
                
                Combat:AddToggle("Spectate Player",false,function(value)
                    SpectatePlys = value
                    local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
                    local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPlayer)
                    repeat wait(.1)
                    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPlayer).Character.Humanoid
                    until SpectatePlys == false 
                    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
                end)
                
                Combat:AddToggle("Teleport",false,function(value)
                    _G.TeleportPly = value
                    pcall(function()
                        if _G.TeleportPly then
                            repeat TP(game:GetService("Players")[_G.SelectPlayer].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
                        end
                        StopTween(_G.TeleportPly)
                    end)
                end)

                Combat:AddToggle("Auto Farm Player",false,function(value)
                    _G.KillSelectedPlayer = value
                    StopTween(_G.KillSelectedPlayer)
                end)
            
                Combat:AddToggle("Auto Active Race", _G.AutoAgility, function(value)
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
            
            Combat:AddSeperator("Boat Stealer")
            
            BoatsName = {}
                
            for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do  
              table.insert(BoatsName ,v.Name)
            end
            
            local SelectedBot = Combat:AddDropdown("Select Boat","nil",BoatsName,function(value)
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
            
            Combat:AddButton("Bring Boat",function()
                game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Boats[_G.SelectB].Seat.CFrame
            end)
            
            Combat:AddToggle("Teleport Boat",false,function(bool)
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
            
            Combat:AddToggle("Spectate Boat",false,function(value)
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
            
            Stats:AddSeperator("Auto Stats")
                    
            local Pointstat = Stats:AddLabel("Stat Points")
            
            spawn(function()
                while wait() do
                    pcall(function()
                        Pointstat:Set("📊 You Have "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value).." Stat Points!")
                    end)
                end
            end)
            
            Stats:AddToggle("Auto Kaitun",_G.Auto_Stats_Kaitun,function(value)
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
            
            Stats:AddToggle("Auto Melee",_G.Auto_Melee,function(value)
                _G.Auto_Melee = value
            end)
            
            Stats:AddToggle("Auto Defense",_G.Auto_Defense,function(value)
                _G.Auto_Defense = value
            end)
            
            Stats:AddToggle("Auto Sword",_G.Auto_Sword,function(value)
                _G.Auto_Sword = value
            end)
            
            Stats:AddToggle("Auto Gun",_G.Auto_Gun,function(value)
                _G.Auto_Gun = value
            end)
            
            Stats:AddToggle("Auto Devil Fruits",_G.Auto_DevilFruit,function(value)
                _G.Auto_DevilFruit = value
            end)
            
            _G.PointStats = 1
            Stats:AddSlider("Select Point",1,100,1,function(value)
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
            
            Stats:AddSeperator("Fake Mode")
            
            Stats:AddTextbox("Fake Level","Set Level.",true,function(value)
                game:GetService("Players").LocalPlayer.Data.Level.Value = value
            end)
            Stats:AddTextbox("Fake Exp","Set Exp.",true,function(value)
                game:GetService("Players").LocalPlayer.Data.Exp.Value = value
            end)
            Stats:AddTextbox("Fake Beli","Set Beli.",true,function(value)
                game:GetService("Players").LocalPlayer.Data.Beli.Value = value
            end)
            Stats:AddTextbox("Fake Points","Set Stat Points.",true,function(value)
                game:GetService("Players").LocalPlayer.Data.Points.Value = value
            end)
            Stats:AddTextbox("Fake Bounty","Set Bounty.",true,function(value)
                game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value = value
            end)
            
            Teleport:AddSeperator("Sea")
                    
            if World1 then
                Teleport:AddDropdown("Select Sea","Sea 2",{"Sea 2","Sea 3"},function(value)
                    _G.TPSea = value
                end)
            end
            if World2 then
                Teleport:AddDropdown("Select Sea","Sea 3",{"Sea 1","Sea 3"},function(value)
                    _G.TPSea = value
                end)
            end
            if World3 then
                Teleport:AddDropdown("Select Sea","Sea 2",{"Sea 1","Sea 2"},function(value)
                    _G.TPSea = value
                end)
            end
            
            Teleport:AddButton("Teleport",function()
                if _G.TPSea == "Sea 1" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                elseif _G.TPSea == "Sea 2" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                elseif _G.TPSea == "Sea 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                end
            end)
            
            Teleport:AddSeperator("Island")
            
            if World1 then
                Teleport:AddDropdown("Select Island","WindMill",{
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
                Teleport:AddDropdown("Select Island","The Cafe",{
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
                Teleport:AddDropdown("Select Island","Mansion",{
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
                    "Cake Island"
                    },function(value)
                    _G.SelectIsland = value
                end)
            end
            
            Teleport:AddToggle("Teleport",false,function(value)
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
                            TP(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                        elseif _G.SelectIsland == "MiniSky" then
                            TP(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                        elseif _G.SelectIsland == "Port Town" then
                            TP(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                        elseif _G.SelectIsland == "Hydra Island" then
                            TP(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
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
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375)
                        wait(0.1)
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                        elseif _G.SelectIsland == "MiniSky" then
                        TP(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                        elseif _G.SelectIsland == "Port Town" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375)
                        wait(0.1)
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                        elseif _G.SelectIsland == "Hydra Island" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625)
                        wait(0.1)
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
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
                        end
                 end
                end
                StopTween(_G.TeleportIsland)
            end)

            Dungeon:AddLine()
                    
            local TimeRaid = Dungeon:AddLabel("⚔️ Waiting For Dungeon..")
            
            spawn(function()
                pcall(function()
                    while wait() do
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                            TimeRaid:Set("⚔️ "..game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
                        else
                            TimeRaid:Set("⚔️ Waiting For Dungeon..")
                        end
                    end
                end)
            end)

            _G.FruitRat = "Classic"
            Dungeon:AddDropdown("Select Fruit Ratirity","Classic",{
                "Classic",
                "Common",
                "Uncommon",
                "Rare",
                "Legendary", 
                "Mythical"
                },function(value)
                _G.FruitRat = value
            end)
            
            Dungeon:AddToggle("Auto Farm Dungeon",_G.Settings.AutoFarmDungeon,function(value)
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
            
            Dungeon:AddToggle("Auto Next Island",_G.Auto_Dungeon,function(value)
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
            
            Dungeon:AddToggle("Kill Aura",false,function(vu)
            _G.KillAura = vu
            end)
            
            
            spawn(function()
            while wait() do
                if _G.KillAura or _G.AutoFarmDungeon then
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            pcall(function()
                                repeat wait(.1)
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.HumanoidRootPart.Transparency = 0.8
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
            
            Dungeon:AddDropdown("Select Chips","Flame",{"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},function(value)
                _G.SelectChip = value
            end)
            
            Dungeon:AddToggle("Auto Select Dungeon",_G.AutoSelectDungeon,function(value)
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
            
            Dungeon:AddToggle("Auto Buy Chip",_G.AutoBuyChip,function(value)
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
            
            Dungeon:AddButton("Buy Chip Select",function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
            end)
            
            Dungeon:AddToggle("Auto Start Dungeon",_G.Auto_StartRaid,function(value)
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
            
            Dungeon:AddButton("Start Dungeon",function()
                if World2 then
                    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif World3 then
                    fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                end
            end)
            
            Dungeon:AddLine()
            
            Dungeon:AddButton("Next Island",function()
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
                Dungeon:AddButton("Teleport to Lab",function()
                    TP(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                    end)
            elseif World3 then
                Dungeon:AddButton("Teleport to Lab",function()
                    TP(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
                end)
            end
            
            if World2 then
                Dungeon:AddButton("Awakening Room",function()
                    TP(CFrame.new(266.227783, 1.39509034, 1857.00732))
                end)
            elseif World3 then
                Dungeon:AddButton("Awakening Room",function()
                    TP(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
                end)
            end
            
            Dungeon:AddSeperator("Law Dungeon")
            
            Dungeon:AddToggle("Auto Buy Law Chip",_G.Auto_Buy_Law_Chip,function(value)
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
            
            Dungeon:AddToggle("Auto Start Law Dungeon",_G.Auto_Start_Law_Dungeon,function(value)
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
            
            Dungeon:AddToggle("Auto Kill Law",_G.Auto_Kill_Law,function(value)
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
            
            Fruit:AddSeperator("Sniper")
                    
            FruitList = {
                "Kilo-Kilo",
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
                "Bird-Bird: Phoenix",
                "Portal-Portal",
                "Rumble-Rumble",
                "Paw-Paw",
                "Blizzard-Blizzard",
                "Gravity-Gravity",
                "Dough-Dough",
                "Shadow-Shadow",
                "Venom-Venom",
                "Control-Control",
                "Spirit-Spirit",
                "Dragon-Dragon",
                "Leopard-Leopard"
            }
            
            _G.SelectFruit = ""
            Fruit:AddDropdown("Select Devil Fruits Sniper","Leopard-Leopard",FruitList,function(value)
                _G.SelectFruit = value
            end)
            
            Fruit:AddToggle("Auto Buy Devil Fruit Sniper",_G.AutoBuyFruitSniper,function(value)
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
        
            Fruit:AddToggle("Auto Eat Devil Fruit Sniper",_G.AutoEat,function(value)
                _G.AutoEat = value
            end)
        
            spawn(function()
                pcall(function()
                    while wait(.1) do
                        if _G.AutoEat then
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
                    if _G.AutoEat then
                        pcall(function()
                            if _G.SelectFruit == "Kilo-Kilo" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Spin-Spin" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Chop-Chop" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Spring-Spring" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Bomb-Bomb" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Smoke-Smoke" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Spike-Spike" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Flame-Flame" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Bird: Falcon" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Ice-Ice" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Sand-Sand" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Dark-Dark" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Revive-Revive" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Revive-Revive" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Diamond-Diamond" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Light-Light" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Love-Love" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Rubber-Rubber" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Barrier-Barrier" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Magma-Magma" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Quake-Quake" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Human-Human: Buddha" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human: Buddha Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Spider-Spider" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Bird-Bird: Phoenix" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Portal-Portal" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Rumble-Rumble" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Paw-Paw" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Blizzard-Blizzard" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Gravity-Gravity" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Dough-Dough" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Shadow-Shadow" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Venom-Venom" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Control-Control" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Spirit-Spirit" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Dragon-Dragon" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit").EatRemote:InvokeServer()
                            end
                            if _G.SelectFruit == "Leopard-Leopard" then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit").EatRemote:InvokeServer()
                            end
                        end)
                    end
                end
            end)
            
            Fruit:AddSeperator("Others")
            
            Fruit:AddToggle("Auto Buy Random Devil Fruit",_G.Random_Auto,function(value)
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
            
            Fruit:AddButton("Buy Random Devil Fruit",function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end)
            
            Fruit:AddToggle("Bring Devil Fruit",_G.BringFruit,function(value)
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
            
            Fruit:AddToggle("Auto Store Devil Fruit",_G.AutoStore,function(value)
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
        
            Fruit:AddToggle("Auto Drop Devil Fruit",_G.AutoDrop,function(value)
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

            Fruit:AddLine()
            
            if World3 then
            local fruitModelId = "rbxassetid://11142722110"
    
            local function spawnFruitAbovePlayerHead(player)
            local fruitModel = game:GetObjects(fruitModelId)[1]
            local positionAbovePlayer = player.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
            fruitModel.Parent = workspace
            fruitModel:SetPrimaryPartCFrame(CFrame.new(positionAbovePlayer))
            end
            
            Fruit:AddButton("Rain Fruits",function()
            if (CFrame.new(-12549.7246, 337.194061, -7487.36279, 1, 0, 0, 0, 1, 0, 0, 0, 1).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
            spawnFruitAbovePlayerHead(game.Players.LocalPlayer)
            else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12549.7246, 337.194061, -7487.36279, 1, 0, 0, 0, 1, 0, 0, 0, 1))
            spawnFruitAbovePlayerHead(game.Players.LocalPlayer)
            end
            end)
            else
            Fruit:AddLabel("Join Third Sea For Use Rain Fruits!")
            end
            
            Shop:AddSeperator("Race/Fragment")
                    
            Shop:AddButton("Buy Cyborg",function()
                    local args = {
                   [1] = "CyborgTrainer",
                   [2] = "Buy"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
            
                Shop:AddButton("Buy Ghoul",function()
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
            
                    Shop:AddButton("Buy Reset Stats",function()
               local args = {
                   [1] = "BlackbeardReward",
                   [2] = "Refund",
                   [3] = "2"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
            
                        Shop:AddButton("Buy Random Race",function()
               local args = {
                   [1] = "BlackbeardReward",
                   [2] = "Reroll",
                   [3] = "2"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
            
             Shop:AddSeperator("Abilities")
            
            Shop:AddButton("Buy Geppo",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
            end)
            
            Shop:AddButton("Buy Buso Haki",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
            end)
            
            Shop:AddButton("Buy Soru",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
            end)
            
            Shop:AddButton("Buy Observation(Ken) Haki",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
            end)
            
            Shop:AddSeperator("Fighting Style")
            
            Shop:AddButton("Buy Black Leg",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
            end)
            
            Shop:AddButton("Buy Electro",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
            end)
            
            Shop:AddButton("Buy Fishman Karate",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
            end)
            
            Shop:AddButton("Buy Dragon Claw",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
            end)
            
            Shop:AddButton("Buy Superhuman",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
            end)
            
            Shop:AddButton("Buy Death Step",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
            end)
            
            Shop:AddButton("Buy Sharkman Karate",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
            end)
            
            Shop:AddButton("Buy Electric Claw",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
            end)
            
            Shop:AddButton("Buy Dragon Talon",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
            end)
            
                       Shop:AddButton("Buy God Human",function()
            local args = {
            [1] = "BuyGodhuman"
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end)
               
            -----Shop----------------
            Shop:AddSeperator("Accessory")
            
            Shop:AddButton("Tomoe Ring",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
            end)
            
            Shop:AddButton("Black Cape",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
            end)
            
            Shop:AddButton("Swordsman Hat",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
            end)
            
            Shop:AddSeperator("Sword")
            
            Shop:AddButton("Cutlass",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
            end)
            
            Shop:AddButton("Katana",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
            end)
            
            Shop:AddButton("Iron Mace",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
            end)
            
            Shop:AddButton("Duel Katana",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
            end)
            
            Shop:AddButton("Triple Katana", function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
            end)
            
            Shop:AddButton("Pipe",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
            end)
            
            Shop:AddButton("Dual Headed Blade",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
            end)
            
            Shop:AddButton("Bisento",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
            end)
            
            Shop:AddButton("Soul Cane",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
            end)
            
            Shop:AddSeperator("Gun")
            
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
            
            Shop:AddSeperator("Bones")
            
            Shop:AddButton("Buy Surprise",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end)
            
            Shop:AddButton("Stat Refund",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,2)
            end)
               
            Shop:AddButton("Race Reroll",function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
            end)
            
            Misc:AddSeperator("Server")
                    
            Misc:AddButton("Rejoin Server",function()
                game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
            end)
            
            Misc:AddButton("Server Hop",function()
                Hop()
            end)
            
            Misc:AddButton("Hop To Lower Player",function()
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
            
            Misc:AddToggle("Auto Send Information",false,function(value)
                _G.SendWeb = value
            end)
            
            _G.WebhookTime = 30
            Misc:AddSlider("Set Webhook Time (S)",30,1000,31,function(value)
                _G.WebhookTime = value
            end)
            
            Misc:AddButton("Test Webhook",function()
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
            Misc:AddButton("Remove Attack Animation",function()
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
            
            Misc:AddButton("Remove Effects",function()
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
            
            Misc:AddToggle("Invisible Mobs",false,function(value)
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
            
            Misc:AddButton("Open Devil Shop",function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
            end)
            
            Misc:AddButton("Open Inventory",function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
                wait(1)
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
            end)
            
            Misc:AddButton("Open Inventory Fruit",function()
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
        
            Misc:AddSeperator("Security")  

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
            Misc:AddToggle("Auto Rejoin",false,function(value)
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
            
            Misc:AddSeperator("Teams")
            
            Misc:AddButton("Join Pirates Team",function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
            end)
            
            Misc:AddButton("Join Marines Team",function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
            end)
            
            Misc:AddSeperator("Boost")
            
            Misc:AddButton("Unlock Portal",function()
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
            
            Misc:AddButton("Invisible",function()
                game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
            end)
            
            Misc:AddButton("Click TP Tool",function()
                local plr = game:GetService("Players").LocalPlayer
                local mouse = plr:GetMouse()
                local tool = Instance.new("Tool")
                tool.RequiresHandle = false
                tool.Name = "Teleport Tool"
                tool.Activated:Connect(function()
                local root = plr.Character.HumanoidRootPart
                local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
                local offset = pos-root.Position
                root.CFrame = root.CFrame+offset
                end)
                tool.Parent = plr.Backpack
            end)
            
            Misc:AddButton("Stop All Tween",function()
                TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                _G.Clip = false
            end)
            
            Misc:AddSeperator("Codes")
            
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
            
            Misc:AddButton("Redeem All Codes",function()
                function RedeemCode(value)
                    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
                end
                for i,v in pairs(x2Code) do
                    RedeemCode(v)
                end
            end)
            
            Misc:AddDropdown("Selected Codes","TY_FOR_WATCHING",x2Code,function(value)
                _G.CodeSelect = value
            end)
            
            Misc:AddButton("Redeem Code",function()
                game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect)
            end)
            
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
            
            Misc:AddToggle("White Screen",_G.White_Screen,function(value)
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
            
            Misc:AddToggle("Remove Fog",RemoveFog,function(value)
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
            
            Misc:AddSeperator("Abilities")
            
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

            -------------------------NOFICATION---------------------------------
            local Notification = require(game:GetService("ReplicatedStorage").Notification)
            Notification.new("Raito Hub Fully Loaded!"  .." Welcome, ".."<Color=Blue>"..game.Players.LocalPlayer.DisplayName.."<Color=/>"):Display()
            if isfolder("Raito Hub Settings Folder") and _G.SaveSettings == true then
                local Notification = require(game:GetService("ReplicatedStorage").Notification)
                Notification.new("Succesfully Loaded Your Settings!"):Display()
            else
                local Notification = require(game:GetService("ReplicatedStorage").Notification)
                Notification.new("You Don't Have Any Saved Settings!"):Display()
            end
            -------------------------FINISH-------------------------------------
            end
            end
        end
        wait(0.1)
                    do
                        local keyui = game.CoreGui:FindFirstChild("ScreenGui")
                         if keyui then
                            keyui:Destroy()
                         end
                    end
                    SaveKey = false
                    _G.Authenicated = string.reverse(game.Players.LocalPlayer.UserId)
                    Script()
        end
    end
