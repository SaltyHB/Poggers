loadstring(game:HttpGet("https://raw.githubusercontent.com/SaltyHB/Poggers/main/Public"))()
print("[ Raito Hub ] Security Started..")
if _G.Version == "Chest Farm" or _G.Version == "Fruit Farm" or _G.Version == "Mirage Hop" or _G.Version == "Full Moon Hop" then
print("[ Raito Hub ] Auto-Execute Off.")
elseif _G.Version == "Fruit Farm 2" then
print("[ Raito Hub ] Auto-Execute Started.")
raitohub = "wait(10) loadstring(game:HttpGet('https://raw.githubusercontent.com/Efe0626/RaitoHub/main/FruitFarm'))()" 
else
_G.AutoExecute = true
print("[ Raito Hub ] Auto-Execute Started.")
raitohub = "wait(10) loadstring(game:HttpGet('https://raw.githubusercontent.com/Efe0626/RaitoHub/main/Script'))()" 
end
if _G.Version == "Chest Farm" or _G.Version == "Fruit Farm" or _G.Version == "Mirage Hop" or _G.Version == "Full Moon Hop" then
print("[ Raito Hub ] Checker Off.")
else
if _G.AutoExecute == true then
local autoexec = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport
autoexec(raitohub)
end
end