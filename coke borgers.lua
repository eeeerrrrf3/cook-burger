local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Topikhub", "RJTheme3")

local Tab = Window:NewTab("Hub free")

Section:NewButton("My script lol", "Left CTRL + Click", function()
		
end)		

local Section = Tab:NewSection("Top scripts")

Section:NewButton("click tp", "Left CTRL + Click", function()
    local Player = game.Players.LocalPlayer 
local Mouse = Player:GetMouse() 
local UserInputService = game:GetService('UserInputService') 
 
local HoldingControl = false 
 
Mouse.Button1Down:connect(function() 
if HoldingControl then 
Player.Character:MoveTo(Mouse.Hit.p) 
end 
end) 
 
UserInputService.InputBegan:connect(function(Input, Processed) 
if Input.UserInputType == Enum.UserInputType.Keyboard then 
if Input.KeyCode == Enum.KeyCode.LeftControl then 
HoldingControl = true 
elseif Input.KeyCode == Enum.KeyCode.RightControl then 
HoldingControl = true 
end 
end 
end) 
 
UserInputService.InputEnded:connect(function(Input, Processed) 
if Input.UserInputType == Enum.UserInputType.Keyboard then 
if Input.KeyCode == Enum.KeyCode.LeftControl then 
HoldingControl = false 
elseif Input.KeyCode == Enum.KeyCode.RightControl then 
HoldingControl = false
end 
end
end)
end)
            	
Section:NewButton("Toggle All Doorsf", "ButtonInfo", function()
    local Event = game:GetService("Workspace").Restaurant.Freezer.FreezerDoor.FreezerDoor.ContextAction
Event:FireServer()


 
local A_1 = "gameplay.interaction"
local A_2 = 
{
	["with"] = game:GetService("Workspace").Restaurant.InteractiveDoor, 
	["side"] = -90
}
local Event = game:GetService("ReplicatedStorage").Libs.Events.RemoteEvent
Event:FireServer(A_1, A_2)

 
local Event = game:GetService("Workspace").Restaurant.Fridge.FridgeDoor.FridgeDoor.ContextAction
Event:FireServer()
 
local Event = game:GetService("Workspace").Items.Microwave.Body.ContextAction
Event:FireServer()
end)

Section:NewButton("get all bread", "ButtonInfo", function()
    for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Bottom Bun' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end

    for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Top Bun' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)

local Section = Tab:NewSection("Money scripts")

Section:NewButton("Scam", "ButtonInfo", function()
    --BROUGHT TO YOU BY RSCRIPTS.NET--
loadstring(game:HttpGet("https://raw.githubusercontent.com/kay0t1c/scripts-for-roblox/main/cbstealmoney", true))()
end)

Section:NewButton("get all bread", "ButtonInfo", function()
    for i,v in pairs(game:GetDescendants()) do
if v.Name == 'RemainingCardboard' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.5)
end
end
end)

local main = Window:NewTab("Player")
local mainSection = main:NewSection("Power chits")

mainSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

mainSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

local Tab = Window:NewTab("Teleport")
     local Section = Tab:NewSection("Teleports")

Section:NewButton("Cat", "ButtonInfo", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Cats.Cat.TailSegment1.CFrame 
end)
Section:NewButton("become a mouse", "ButtonInfo", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage").Assets.Items.OrangePotion.CFrame 
end)

local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Settings")

SettingsSection:NewKeybind("ToggleGui", "Set you toggle gui key", Enum.KeyCode.F, function()	Library:ToggleUI()end)
