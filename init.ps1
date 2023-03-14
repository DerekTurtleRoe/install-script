Write-Host
"
//    _______         _   _             _____           _        _ _    _____           _       _      
//   |__   __|       | | | |           |_   _|         | |      | | |  / ____|         (_)     | |     
//      | |_   _ _ __| |_| | ___  ___    | |  _ __  ___| |_ __ _| | | | (___   ___ _ __ _ _ __ | |_    
//      | | | | | '__| __| |/ _ \/ __|   | | | '_ \/ __| __/ _` | | |  \___ \ / __| '__| | '_ \| __|   
//      | | |_| | |  | |_| |  __/\__ \  _| |_| | | \__ \ || (_| | | |  ____) | (__| |  | | |_) | |_    
//      |_|\__,_|_|   \__|_|\___||___/ |_____|_| |_|___/\__\__,_|_|_| |_____/ \___|_|  |_| .__/ \__|   
//     _____ _   _ _    _    _____ _____  _         ____                                 | |           
//    / ____| \ | | |  | |  / ____|  __ \| |       |___ \                                |_|           
//   | |  __|  \| | |  | | | |  __| |__) | |  __   ____) |                                             
//   | | |_ | . ` | |  | | | | |_ |  ___/| |  \ \ / /__ <                                              
//   | |__| | |\  | |__| | | |__| | |    | |___\ V /___) |                                             
//    \_____|_| \_|\____/   \_____|_|    |______\_/|____/                                              
//   __          __   _ _   _               _         _____                       _____ _          _ _ 
//   \ \        / /  (_) | | |             (_)       |  __ \                     / ____| |        | | |
//    \ \  /\  / / __ _| |_| |_ ___ _ __    _ _ __   | |__) |____      _____ _ _| (___ | |__   ___| | |
//     \ \/  \/ / '__| | __| __/ _ \ '_ \  | | '_ \  |  ___/ _ \ \ /\ / / _ \ '__\___ \| '_ \ / _ \ | |
//      \  /\  /| |  | | |_| ||  __/ | | | | | | | | | |  | (_) \ V  V /  __/ |  ____) | | | |  __/ | |
//       \/  \/ |_|  |_|\__|\__\___|_| |_| |_|_| |_| |_|   \___/ \_/\_/ \___|_| |_____/|_| |_|\___|_|_|
//                                                                                                     
"

#===========================================================================
# Install script start
#===========================================================================

# Update the help files for PowerShell functions
Update-Help

# Remove all restrictions on PowerShell scripts
# PLEASE NOTE: THIS IS INSECURE, PLEASE USE CAUTION/COMMON SENSE WHEN DOING THIS!!!
# Normal users will want to just run the script using the right click option "Run with PowerShell", 
# as this gives permission once and then blocks scripts after that
Set-ExecutionPolicy unrestricted

# Install winget, thanks to Chris Titus for this little script!
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
	Install-Script -Name winget-install -Force
	winget-install.ps1

# Add PowerShell scripts directory to the PATH
Set-PathVariable AddPath 'C:\Program Files\WindowsPowerShell\Scripts'

# Retrive PowerShell module for updating Windows
Install-Module -Name PSWindowsUpdate

# Retrieve all Windows updates
Get-WindowsUpdate

# Install all updates
Install-WindowsUpdate -AcceptAll

# To exclude certain updates, enter all relevant KB article IDs
# Hide-WindowsUpdate -KBArticleID KB

# Install Winfetch
Install-Script winfetch

# Install Winfetch configuration
Copy-Item -Path .\winfetch\config.ps1 -Destination C:\Users\Turtle\.config\winfetch
Copy-Item -Path .\winfetch\winfetch.png -Destination C:\Users\Turtle\.config\winfetch

# Install Windows "ultimate power plan"...WARNING: DO NOT run this on a laptop, comment it out!
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

# Activate ultimate power plan
powercfg -SETACTIVE e9a42b02-d5df-448d-aa00-03f14749eb61

# Install fonts

# Set the source folder and the destination folder
$sourceFolder = ".\fonts"
$destinationFolder = "C:\Windows\Fonts"

# Get a list of all .ttf files in the source folder
$ttfFiles = Get-ChildItem -Path $sourceFolder -Filter "*.ttf"

# Loop through each .ttf file and copy it to the destination folder
foreach ($ttfFile in $ttfFiles) {
  Copy-Item -Path $ttfFile.FullName -Destination $destinationFolder
}

# Output a message indicating that the files have been copied
Write-Output "All .ttf files in $sourceFolder have been copied to $destinationFolder"

# Install all of the things! O_O

winget install --id=Microsoft.Edge ; winget install --id=VideoLAN.VLC -e -h --scope "machine" ; winget install --id=Notion.Notion -e -h --scope "machine" ; winget install --id=voidtools.Everything -e -h --scope "machine" ; winget install --id=Notepad++.Notepad++ -e -h --scope "machine" ; winget install --id=GitHub.GitHubDesktop -e -h --scope "machine" ; winget install --id=ShareX.ShareX -e -h --scope "machine" ; winget install --id=Discord.Discord -e -h --scope "machine" ; winget install --id=GIMP.GIMP -e -h --scope "machine" ; winget install --id=File-New-Project.EarTrumpet -e -h --scope "machine" ; winget install --id=Audacity.Audacity -e -h --scope "machine" ; winget install --id=Valve.Steam -e -h --scope "machine" ; winget install --id=EpicGames.EpicGamesLauncher -e -h --scope "machine" ; winget install --id=WinSCP.WinSCP -e -h --scope "machine" ; winget install --id=Microsoft.DotNet.Framework.DeveloperPack_4 -e -h --scope "machine" ; winget install --id=Microsoft.VisualStudioCode -e -h --scope "machine" ; winget install --id=Mozilla.Firefox -e -h --scope "machine" ; winget install --id=OpenJS.NodeJS -e -h --scope "machine" ; winget install --id=Git.Git -e -h --scope "machine" ; winget install --id=7zip.7zip -e -h --scope "machine" ; winget install --id=Microsoft.PowerToys -e -h --scope "machine" ; winget install --id=PrimateLabs.Geekbench.6 -e -h --scope "machine" ; winget install --id=Spotify.Spotify -e -h --scope "machine" ; winget install --id=Inkscape.Inkscape -e -h --scope "machine" ; winget install --id=Bitwarden.Bitwarden -e -h --scope "machine" ; winget install --id=BlenderFoundation.Blender -e -h --scope "machine" ; winget install --id=Codeusa.BorderlessGaming -e -h --scope "machine" ; winget install --id=Brave.Brave -e -h --scope "machine" ; winget install --id=calibre.calibre -e -h --scope "machine" ; winget install --id=CPUID.CPU-Z -e -h --scope "machine" ; winget install --id=CPUID.HWMonitor -e -h --scope "machine" ; winget install --id=CrystalDewWorld.CrystalDiskInfo -e -h --scope "machine" ; winget install --id=CrystalDewWorld.CrystalDiskMark -e -h --scope "machine" ; winget install --id=DuongDieuPhap.ImageGlass -e -h --scope "machine" ; winget install --id=ItchIo.Itch -e -h --scope "machine" ; winget install --id=OBSProject.OBSStudio -e -h --scope "machine" ; winget install --id=Python.Python.3.11 -e -h --scope "machine" ; winget install --id=TechPowerUp.GPU-Z -e -h --scope "machine" ; winget install --id=Tenpi.Waifu2xGUI -e -h --scope "machine" ; winget install --id=GOG.Galaxy -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2015+.x64 -e -h --scope "machine" ; winget install --id=Mozilla.Thunderbird -e -h --scope "machine" ; winget install --id=TorProject.TorBrowser -e -h --scope "machine" ; winget install --id=qBittorrent.qBittorrent -e -h --scope "machine" ; winget install --id=Malwarebytes.Malwarebytes -e -h --scope "machine" ; winget install --id=AntibodySoftware.WizTree -e -h --scope "machine" ; winget install --id=Ubisoft.Connect -e -h --scope "machine" ; winget install --id=PassMark.DiskCheckup -e -h --scope "machine" ; winget install --id=ElectronicArts.EADesktop -e -h --scope "machine" ; winget install --id=TheDocumentFoundation.LibreOffice -e -h --scope "machine" ; winget install --id=Insecure.Nmap -e -h --scope "machine" ; winget install --id=NexusMods.Vortex -e -h --scope "machine" ; winget install --id=angryziber.AngryIPScanner -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2005.x64 -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2008.x64 -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2010.x64 -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2012.x64 -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2013.x64 -e -h --scope "machine" ; winget install --id=REALiX.HWiNFO -e -h --scope "machine" ; winget install --id=Amazon.Games -e -h --scope "machine" ; winget install --id=LIGHTNINGUK.ImgBurn -e -h --scope "machine" ; winget install --id=SumatraPDF.SumatraPDF -e -h --scope "machine" ; winget install --id=Microsoft.DotNet.DesktopRuntime.3_1 -e -h --scope "machine" ; winget install --id=Microsoft.DotNet.DesktopRuntime.5 -e -h --scope "machine" ; winget install --id=Microsoft.DotNet.DesktopRuntime.6 -e -h --scope "machine" ; winget install --id=Microsoft.DotNet.DesktopRuntime.7 -e -h --scope "machine" ; winget install --id=Microsoft.dotnetRuntime.3-x64 -e -h --scope "machine" ; winget install --id=Microsoft.dotnetRuntime.3-x86 -e -h --scope "machine" ; winget install --id=Microsoft.dotnetRuntime.6-x86 -e -h --scope "machine" ; winget install --id=Microsoft.dotnetRuntime.6-x64 -e -h --scope "machine" ; winget install --id=Microsoft.dotnetRuntime.5-x86 -e -h --scope "machine" ; winget install --id=Microsoft.dotnetRuntime.5-x64 -e -h --scope "machine" ; winget install --id=Microsoft.DirectX -e -h --scope "machine" ; winget install --id=JetBrains.PyCharm.Community -e -h --scope "machine" ; winget install --id=Google.AndroidStudio -e -h --scope "machine" ; winget install --id=HandBrake.HandBrake -e -h --scope "machine" ; winget install --id=BleachBit.BleachBit -e -h --scope "machine" ; winget install --id=FinalWire.AIDA64.Extreme -e -h --scope "machine" ; winget install --id=XavierRoche.HTTrack -e -h --scope "machine" ; winget install --id=Microsoft.DotNet.Runtime.3_1 -e -h --scope "machine" ; winget install --id=Microsoft.DotNet.Runtime.6 -e -h --scope "machine" ; winget install --id=Microsoft.DotNet.Runtime.7 -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2005.x86 -e -h --scope "machine" ; winget install --id=AntiMicro.AntiMicro -e -h --scope "machine" ; winget install --id=Mojang.MinecraftLauncher -e -h --scope "machine" ; winget install --id=JohnMacFarlane.Pandoc -e -h --scope "machine" ; winget install --id=Peppy.Osu! -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2008.x86 -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2010.x86 -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2012.x86 -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2013.x86 -e -h --scope "machine" ; winget install --id=Microsoft.VCRedist.2015+.x86 -e -h --scope "machine" ; winget install --id=MSYS2.MSYS2 -e -h --scope "machine" ; winget install --id=PrestonN.FreeTube -e -h --scope "machine" ; winget install --id=JGraph.Draw -e -h --scope "machine" ; winget install --id=WiresharkFoundation.Wireshark -e -h --scope "machine" ; winget install --id= Google.PlayGames.Beta -e -h --scope "machine" ; winget install --id=RiotGames.Valorant.NA -e -h --scope "machine" ; winget install --id=RiotGames.LeagueOfLegends.NA -e -h --scope "machine" ; winget install --id=XSplit.Broadcaster -e -h --scope "machine" ; winget install --id=JRSoftware.InnoSetup -e -h --scope "machine" ; winget install --id=kymoto.InnoScriptStudio -e -h --scope "machine" ; winget install --id=CodecGuide.K-LiteCodecPack.Mega -e -h --scope "machine" ; winget install --id=NSIS.NSIS -e -h --scope "machine" ; winget install --id=Guilded.Guilded -e -h --scope "machine" ; winget install --id=XnSoft.XnViewMP -e -h --scope "machine" ; winget install --id=Aegisub.Aegisub -e -h --scope "machine" ; winget install --id=syndicode.iNFektNFOViewer -e -h --scope "machine" ; winget install --id=egoist.devdocs-desktop -e -h  --scope "machine" ; winget install --id=namazso.OpenHashTab -e -h --scope "machine" ; winget install --id=LMMS.LMMS -e -h --scope "machine" ; winget install --id=OlegShparber.Zeal -e -h --scope "machine" ; winget install --id=Streamlink.Streamlink.TwitchGui -e -h --scope "machine" ; winget install --id=Streamlink.Streamlink -e -h --scope "machine" ; winget install --id=Elgato.StreamDeck -e -h --scope "machine" ; winget install --id=Streamlabs.Streamlabs -e -h --scope "machine" ; winget install --id=Twitch.TwitchStudio -e -h --scope "machine" ; winget install --id=Unigine.SuperpositionBenchmark -e -h --scope "machine" ; winget install --id=Unigine.ValleyBenchmark -e -h --scope "machine" ; winget install --id=Unigine.HeavenBenchmark -e -h --scope "machine" ; winget install --id=MSI.Kombustor.4 -e -h --scope "machine" ; winget install --id=Belarc.Advisor -e -h --scope "machine" ; winget install --id=Starship.Starship -e -h --scope "machine" ; winget install --id=darktable.darktable -e -h --scope "machine" ; winget install --id=OliverBetz.ExifTool -e -h --scope "machine" ; winget install --id=Redisant.TinyGUI -e -h --scope "machine" ; winget install --id=jbreland.uniextract -e -h --scope "machine" ; winget install --id=9NBLGGH5R558 -e -h --scope "machine" ; winget install --id=hellofficiency-inc.raven-reader -e -h --scope "machine" ; winget install --id=Audacious.MediaPlayer -e -h --scope "machine" ; winget install --id=SergeySerkov.TagScanner -e -h --scope "machine" ; winget install --id=WeMod.WeMod -e -h --scope "machine" ; winget install --id=HexChat.HexChat -e -h --scope "machine" ; winget install --id=mb21.panwriter -e -h --scope "machine" ; winget install --id=Cppcheck.Cppcheck -e -h --scope "machine" ; winget install --id=Oracle.JavaRuntimeEnvironment -e -h --scope "machine" ; winget install --id=Rufus.Rufus -e -h --scope "machine" ; winget install --id=RaspberryPiFoundation.RaspberryPiImager -e -h --scope "machine" ; winget install --id=OnionShare.OnionShare -e -h --scope "machine" ; winget install --id=GDevelop.GDevelop -e -h --scope "machine" ; winget install --id=ZeusSoftware.nGlide -e -h --scope "machine" ; winget install --id=inMerge.WinMerge -e -h --scope "machine" ; winget install --id=Antutu.AntutuBenchmark -e -h --scope "machine" ; winget install --id=AMD.OCAT -e -h --scope "machine" ; winget install --id=gpodder.gpodder -e -h --scope "machine" ; 
