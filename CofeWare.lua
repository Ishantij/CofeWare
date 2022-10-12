--CofeWare

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("CofeWare", "Sentinel")

local MainTab = Window:NewTab("ESP")
local MainSection = MainTab:NewSection("ESP")

MainSection:NewButton("BoxESP", "Draws a box arround players.", function()
loadstring(game:HttpGet("https://pastebin.com/raw/wzaBZ9HF",true))()
end)

MainSection:NewButton("Tracers", "Lines to enemies.", function()
loadstring(game:HttpGet("https://pastebin.com/raw/PQmkzvnW",true))()
end)

MainSection:NewButton("NameESP", "Displays EnemyNames.", function()
loadstring(game:HttpGet("https://pastebin.com/raw/71Hv8jT0",true))()
end)

MainSection:NewButton("SkeletonESP", "Displays PlayerSkeletons.", function()
loadstring(game:HttpGet("https://pastebin.com/raw/DUfywg8k",true))()
end)

local AimTab = Window:NewTab("Aimbot")
local AimSection = AimTab:NewSection("Aimbot")

AimSection:NewButton("Aimbot", "AimAssist.", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Raw%20Main.lua"))()
getgenv().Aimbot.FOVSettings.Color = "25, 70, 200"
getgenv().Aimbot.Settings = {
    SendNotifications = false,
    SaveSettings = false, -- Re-execute upon changing
    ReloadOnTeleport = true,
    Enabled = true,
    TeamCheck = false,
    AliveCheck = true,
    WallCheck = false, -- Laggy
    Sensitivity = 0, -- Animation length (in seconds) before fully locking onto target
    TriggerKey = "MouseButton2",
    Toggle = false,
    LockPart = "Head" -- Body part to lock on (Character part's name)
}

getgenv().Aimbot.FOVSettings = {
    Enabled = true,
    Visible = true,
    Amount = 90,
    Color = "255, 255, 255",
    LockedColor = "255, 255, 255",
    Transparency = 0.5,
    Sides = 24,
    Thickness = 2,
    Filled = false
}
end)
Section:NewDropdown("AimPart", "", {"Head", "Torso",}, function(f)
   getgenv().Aimbot.Settings.LockPart = "f"
end)
AimSection:NewSlider("Aimbot FOV", "", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
getgenv().Aimbot.FOVSettings.Amount = s
	
end)


AimSection:NewColorPicker("Aimbot FOV Color", "", Color3.fromRGB(0,0,0), function(color)
getgenv().Aimbot.FOVSettings.Color = "color" -- The colors must be fed as strings in RGB format. [(R)ed (0 - 255); (G)reen (0 - 255); (B)lue (0 - 255)]
end)



 
