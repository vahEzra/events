local folder = Instance.new("Folder",game.ReplicatedStorage)
folder.Name = game.Players.LocalPlayer.Name .. "_Remotes_Folder"
local instance = Instance.new("RemoteEvent",folder)
instance.Name = "Reset_Player"

local instance1 = Instance.new("RemoteEvent",folder)
instance1.Name = "Kick_Player"

--local instance2 = Instance.new("RemoteEvent",folder)
--instance2.Name = "Ban_Player"

--local instance3 = Instance.new("RemoteEvent",folder)
--instance3.Name = "View_Player"

--local instance4 = Instance.new("RemoteEvent",folder)
--instance4.Name = "Dex"

--local instance5 = Instance.new("RemoteEvent",folder)
--instance5.Name = "Crash"

local instance6 = Instance.new("RemoteEvent",folder)
instance6.Name = "Nil_Anything"

local instance7 = Instance.new("RemoteEvent",folder)
instance7.Name = "Speed"

--local instance8 = Instance.new("RemoteEvent",folder)
--instance8.Name = "Aimbot"

local instance10 = Instance.new("RemoteEvent",folder)
instance10.Name = "Kill"






--[[scripts]]
local script = Instance.new("Script", game.ServerScriptService)
script.Name = "cheats_1111"

script.Source = [[
game.Folder.Kick_Player.OnServerClient:Connect(function(player: string, message: string)
  local player = game.Players[player]
player:Kick("[ lace cheats and anti-cheats ]: " ... message)
end)

game.Folder.Reset_Player.OnServerClient:Connect(function(player: string)
  local player = game.Players[player]
player:LoadCharacter()
end)

game.Folder.Nil_Anything.OnServerClient:Connect(function(item: any)
 item:Destroy()
end)

game.Folder.Speed:Connect(function(player: string, speed: number)
 if not game.Players[player] then return end
local plr = game.Players[player]
plr.Character.Humanoid.WalkSpeed = number
end)

game.Folder.Kill.OnServerClient:Connect(function(player: string)
 if not game.Players[player] then return end
local plr = game.Players[player]
plr.Character.Humanoid.Health = 0
end)
]]

if game.ServerScriptService.cheats_1111 then
  print("good")
else
  print("bad")
end
