if not isfolder("GelatekHub") then
	makefolder("GelatekHub")
end

if not isfolder("GelatekHub/Animations") then
	makefolder("GelatekHub/Animations")
end

if not isfolder("GelatekHub/Scripts") then
	makefolder("GelatekHub/Scripts")
end

local SongsURL = "https://github.com/StrokeThePea/GelatekHubSongs/blob/main/"
local Scripts = {"GaleFighter", "TheHotline", "DualUltima", "NeptunainV", "Ender", "Chips", "AbyssEye", "VoodooDoll", "BanzaiBazooka", "Carnage"}
local Animations = {"CaramellDansen", "Freestylin", "Floss", "Parrot", "Smooth%20Moves", "Electro%20Swing", "Smug", "Aerostepping", "Orange%20Justice", "Breakdown", "Crabby", "Drip", "Laughing", "Take%20The%20L"}

local DownloadModule = function(DirName, Song)
	local SongPath = "GelatekHub/" ..DirName.. "/".. Song.. ".mp3"

	if not isfile(SongPath) then
		local Data = game:HttpGet(SongsURL .. Song .. ".mp3?raw=true")
		writefile(SongPath, Data)
		warn(SongPath, "Downloaded!")
	end
end

for _, Name in Scripts do
	DownloadModule("Animations", Name)
end

for _, Name in Animations do
	DownloadModule("Scripts", Name)
end

write("[SUCCESS], Downloaded all songs.")
