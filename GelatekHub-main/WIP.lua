local Global = (getgenv and getgenv()) or shared
if not isfile and isfolder and writefile and (getsynasset or getcustomasset) then
    Notification("Exploit will not run custom songs")
end
if isfolder and (not isfolder("GelatekHub")) then -- Bug Reporting
	local Bindable = Instance.new("BindableFunction")
	local function Copy(e)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/packages/AudioPack.lua"))()
		Bindable:Destroy()
	end
	Bindable.OnInvoke = Copy
	game.StarterGui:SetCore("SendNotification",{
		Title = "Audio Package (50 MB) ";
		Text = "Click here to download audio package for every script automatically, otherwise ignore";
		Duration = 10;
		Callback = Bindable,
		Button1 = "Download Data";
	})
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/packages/FunctionPack.lua"))()
Global.GelatekHubConfig = {
	["Permanent Death"] = false,
	["Torso Fling"] = false,
	["Bullet Enabled"] = false,
	["Enable Collisions"] = false,
	["Keep Hats On Head"] = false,
	["Enable BodyVelocity"] = false,
	["Headless On Perma"] = false
}


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/lib/UILibrary.lua"))()
local Main = Library:Create("Gelatek Hub - Reborn (BETA) ", "Thanks for using the hub! :3", Color3.fromRGB(50, 168, 82))
local Home = Main:MakeTab("Home")
local Reanimate = Main:MakeTab("Reanimate")
local FreeScripts = Main:MakeTab("Free Scripts")
local HatScripts = Main:MakeTab("Hat Scripts")
local Animations = Main:MakeTab("Animations")
local Credits = Main:MakeTab("Credits")
local Hats = Main:MakeTab("Hats")
Home:MakeLabel("Hello! Thanks for using the hub.")
Home:MakeButton("Copy Discord Invite", function()
	setclipboard("https://discord.gg/fx5BszFmMY")
end)

Reanimate:MakeButton("Reanimate", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/lib/Reanimate.lua"))()
end)
Reanimate:MakeToggle("Permanent Death", function(Bool)
	Global.GelatekHubConfig["Permanent Death"] = Bool
end)
Reanimate:MakeToggle("Torso Fling", function(Bool)
	Global.GelatekHubConfig["Torso Fling"] = Bool
end)
Reanimate:MakeToggle("Bullet Enabled", function(Bool)
	Global.GelatekHubConfig["Bullet Enabled"] = Bool
end)
Reanimate:MakeToggle("Enable Collisions", function(Bool)
	Global.GelatekHubConfig["Enable Collisions"] = Bool
end)
Reanimate:MakeToggle("Keep Hats On Head", function(Bool)
	Global.GelatekHubConfig["Keep Hats On Head"] = Bool
end)
Reanimate:MakeToggle("Enable BodyVelocity", function(Bool)
	Global.GelatekHubConfig["Enable BodyVelocity"] = Bool
end)
Reanimate:MakeToggle("Headless On Perma", function(Bool)
	Global.GelatekHubConfig["Headless On Perma"] = Bool
end)
FreeScripts:MakeButton(" - [ Stop Script ] - ", StopScript)
HatScripts:MakeButton(" - [ Stop Script ] - ", StopScript)
Animations:MakeButton(" - [ Stop Animation ] - ", StopScript)
do -- [[ Animations ]] --
	Animations:MakeTextBox("Custom Anim", function(Text)
		PlayAnimation(Text)
	end)
	Animations:MakeButton("Freestylin'", function()
		PlayAnimation(4432024917, "GelatekHub/Animations/Freestylin.mp3")
	end)
	Animations:MakeButton("Floss", function()
		PlayAnimation(4812941481, "GelatekHub/Animations/Floss.mp3")
	end)
	Animations:MakeButton("Smooth Moves", function()
		PlayAnimation(4900539662, "GelatekHub/Animations/Smooth Moves.mp3")
	end)
	Animations:MakeButton("Aerostepping", function()
		PlayAnimation(4776588732, "GelatekHub/Animations/Aerostepping.mp3")
	end)
	Animations:MakeButton("Electro Swing", function()
		PlayAnimation(3485013176, "GelatekHub/Animations/Electro Swing.mp3")
	end)
	Animations:MakeButton("Minecraft Parrot", function()
		PlayAnimation(4300228160, "GelatekHub/Animations/Parrot.mp3")
	end)
	Animations:MakeButton("CaramellDansen", function()
		PlayAnimation(6607554805, "GelatekHub/Animations/CaramellDansen.mp3")
	end)
	Animations:MakeButton("Breakdown", function()
		PlayAnimation(4558409610, "GelatekHub/Animations/Breakdown.mp3")
	end)
	Animations:MakeButton("Orange Justice", function()
		PlayAnimation(3262592866, "GelatekHub/Animations/Orange Justice.mp3")
	end)
	Animations:MakeButton("Smug", function()
		PlayAnimation(3450125501, "GelatekHub/Animations/Smug.mp3")
	end)
	Animations:MakeButton("Crabby", function()
		PlayAnimation(3643129020, "GelatekHub/Animations/Crabby.mp3")
	end)
	Animations:MakeButton("Conga", function()
		PlayAnimation(4572096542, "GelatekHub/Animations/Conga.mp3")
	end)
	Animations:MakeButton("Dream Feet", function()
		PlayAnimation(4300218011, "GelatekHub/Animations/Dream Feet.mp3")
	end)
	Animations:MakeButton("Kazotsky Kick", function()
		PlayAnimation(4846209506)
	end)
	Animations:MakeButton("Radical", function()
		PlayAnimation(4686555525)
	end)
	Animations:MakeButton("Take The L", function()
		PlayAnimation(4827299133, "GelatekHub/Animations/Take The L.mp3")
	end)
	Animations:MakeButton("Laughing", function()
		PlayAnimation(4846000379, "GelatekHub/Animations/Laughing.mp3")
	end)
	Animations:MakeButton("Drip", function()
		PlayAnimation(4959380041, "GelatekHub/Animations/Drip.mp3")
	end)
end

do -- [[ Scripts ]] --
	HatScripts:MakeButton("Dual Ultima", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/DualUltima.lua"))()
	end)
	HatScripts:MakeButton("The Hotline", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/TheHotline.lua"))()
	end)
	HatScripts:MakeButton("Attack Rifle", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/AttackRifle.lua"))()
	end)
	HatScripts:MakeButton("Carnage", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/TheCarnage.lua"))()
	end)
	HatScripts:MakeButton("Neptunian V", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/NeptunianV.lua"))()
	end)
	HatScripts:MakeButton("Zenith Battle Rifle-70", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/ZenithAttackRifle.lua"))()
	end)

	FreeScripts:MakeButton("Gale Fighter", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/GaleFighter.lua"))()
	end)
	FreeScripts:MakeButton("Ender.", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/Ender.lua"))()
	end)
end

do -- [[ Hats ]] --
	Hats:MakeButton("Copy R6 Bullet Hat", function()
		setclipboard("48474313")
	end)
	Hats:MakeButton("Copy R15 Bullet Hat", function()
		setclipboard("5973840187")
	end)
	Hats:MakeButton("Copy Dual Ultima Hats", function()
		setclipboard("4524991457,4820152700")
	end)
	Hats:MakeButton("Copy The Hotline Hat", function()
		setclipboard("4962455546")
	end)
	Hats:MakeButton("Copy Attack Rifle Hat", function()
		setclipboard("6202087882")
	end)
	Hats:MakeButton("Copy Carnage Hats", function()
		setclipboard("5134896593,5410674378")
	end)
	Hats:MakeButton("Copy Neptunian V Hat", function()
		setclipboard("4506945409")
	end)
	Hats:MakeButton("Copy Zenith Rifle Hats", function()
		setclipboard("4962510729,4962455546")
	end)
end

do -- [[ Credits ]] --
	Credits:MakeLabel("Gui: Gelatek")
	Credits:MakeLabel("Reanimate: Gelatek")
	Credits:MakeLabel("Anim ID Player: Gelatek / Derek")
	Credits:MakeLabel("Converts: Gelatek")
end
