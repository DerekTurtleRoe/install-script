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

# Retrieve PowerShell module for updating Windows
Install-Module -Name PSWindowsUpdate

# Retrieve all Windows updates
Get-WindowsUpdate

# Install all updates
Install-WindowsUpdate -AcceptAll

# To exclude certain updates, enter all relevant KB article IDs
# Hide-WindowsUpdate -KBArticleID KB

# Apply custom PowerShell profile
Copy-Item -Path .\powershell\Microsoft.PowerShell_profile.ps1 -Destination C:\Users\Turtle\Documents\WindowsPowerShell

# Install Winfetch
Install-Script winfetch

# Install Winfetch configuration
Copy-Item -Path .\winfetch\config.ps1 -Destination C:\Users\Turtle\.config\winfetch
Copy-Item -Path .\winfetch\winfetch.png -Destination C:\Users\Turtle\.config\winfetch

# Install Starship prompt
winget install --id=Starship.Starship ;

# Apply custom Starship config
Copy-Item -Path .\starship\starship.toml -Destination C:\Users\Turtle\.config\

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

# Web browsers
winget install --id=Microsoft.Edge ;
winget install --id=Mozilla.Firefox ;
winget install --id=Brave.Brave ;
winget install --id=TorProject.TorBrowser ;

# Downloads
winget install --id=qBittorrent.qBittorrent ;
winget install --id=OnionShare.OnionShare ;
winget install --id=XavierRoche.HTTrack ;

# Media playback
winget install --id=VideoLAN.VLC ;
winget install --id=Audacious.MediaPlayer ;
winget install --id=CodecGuide.K-LiteCodecPack.Mega ;
winget install --id=gpodder.gpodder ;

# 3D software
winget install --id=BlenderFoundation.Blender ;

# Audio/video transcoding and manipulation
winget install --id=Audacity.Audacity ;
winget install --id=Tenpi.Waifu2xGUI ;
winget install --id=HandBrake.HandBrake ;
winget install --id=LMMS.LMMS ;
winget install --id=SergeySerkov.TagScanner ;
winget install --id=Aegisub.Aegisub ;

# Image and photo manipulation
winget install --id=GIMP.GIMP ;
winget install --id=Inkscape.Inkscape ;
winget install --id=darktable.darktable ;
winget install --id=XnSoft.XnViewMP ;

# Office software
winget install --id=calibre.calibre ;
winget install --id=SumatraPDF.SumatraPDF ;
winget install --id=TheDocumentFoundation.LibreOffice ;
winget install --id=JohnMacFarlane.Pandoc ;
winget install --id=mb21.panwriter ;
winget install --id=JGraph.Draw ;

# Social media and communication
winget install --id=Discord.Discord ;
winget install --id=Mozilla.Thunderbird ;
winget install --id=Guilded.Guilded ;
winget install --id=hellofficiency-inc.raven-reader ;
winget install --id=HexChat.HexChat ;

# Alternate frontends
winget install --id=PrestonN.FreeTube ;
winget install --id=Streamlink.Streamlink ;
winget install --id=Streamlink.Streamlink.TwitchGui ;

# Streaming and content creation
winget install --id=OBSProject.OBSStudio ;
winget install --id=Streamlabs.Streamlabs ;
winget install --id=XSplit.Broadcaster ;
winget install --id=Twitch.TwitchStudio ;
winget install --id=Elgato.StreamDeck ;

# Game clients
winget install --id=Valve.Steam ;
winget install --id=EpicGames.EpicGamesLauncher ;
winget install --id=GOG.Galaxy ;
winget install --id=ItchIo.Itch ;
winget install --id=Ubisoft.Connect ;
winget install --id=ElectronicArts.EADesktop ;
winget install --id=Amazon.Games ;
winget install --id=Mojang.MinecraftLauncher ;
winget install --id=Peppy.Osu! ;
winget install --id=Google.PlayGames.Beta ;
winget install --id=RiotGames.Valorant.NA ;
winget install --id=RiotGames.LeagueOfLegends.NA ;

# Gaming utilities
winget install --id=Codeusa.BorderlessGaming ;
winget install --id=NexusMods.Vortex ;
winget install --id=AntiMicro.AntiMicro ;
winget install --id=WeMod.WeMod ;
winget install --id=ZeusSoftware.nGlide ;

# System runtimes
winget install --id=Microsoft.VCRedist.2005.x64 ;
winget install --id=Microsoft.VCRedist.2008.x64 ;
winget install --id=Microsoft.VCRedist.2010.x64 ;
winget install --id=Microsoft.VCRedist.2012.x64 ;
winget install --id=Microsoft.VCRedist.2013.x64 ;
winget install --id=Microsoft.VCRedist.2005.x86 ;
winget install --id=Microsoft.VCRedist.2008.x86 ;
winget install --id=Microsoft.VCRedist.2010.x86 ;
winget install --id=Microsoft.VCRedist.2012.x86 ;
winget install --id=Microsoft.VCRedist.2013.x86 ;
winget install --id=Microsoft.VCRedist.2015+.x86 ;
winget install --id=Microsoft.VCRedist.2015+.x64 ;
winget install --id=Microsoft.DotNet.DesktopRuntime.3_1 ;
winget install --id=Microsoft.DotNet.DesktopRuntime.5 ;
winget install --id=Microsoft.DotNet.DesktopRuntime.6 ;
winget install --id=Microsoft.DotNet.DesktopRuntime.7 ;
winget install --id=Microsoft.DotNet.Runtime.3_1 ;
winget install --id=Microsoft.DotNet.Runtime.5 ;
winget install --id=Microsoft.DotNet.Runtime.6 ;
winget install --id=Microsoft.DotNet.Runtime.7 ;
winget install --id=Microsoft.DotNet.Framework.DeveloperPack_4 ;
winget install --id=Microsoft.DirectX ;
winget install --id=Oracle.JavaRuntimeEnvironment ;

# System information
winget install --id=CPUID.CPU-Z ;
winget install --id=TechPowerUp.GPU-Z ;
winget install --id=CPUID.HWMonitor ;
winget install --id=CrystalDewWorld.CrystalDiskInfo ;
winget install --id=AntibodySoftware.WizTree ;
winget install --id=REALiX.HWiNFO ;
winget install --id=PassMark.DiskCheckup ;
winget install --id=AMD.OCAT ;

# System benchmarks
winget install --id=PrimateLabs.Geekbench.6 ;
winget install --id=CrystalDewWorld.CrystalDiskMark ;
winget install --id=Antutu.AntutuBenchmark ;
winget install --id=Unigine.SuperpositionBenchmark ;
winget install --id=Unigine.ValleyBenchmark ;
winget install --id=Unigine.HeavenBenchmark ;
winget install --id=MSI.Kombustor.4 ;
winget install --id=FinalWire.AIDA64.Extreme ;

# System utilities
winget install --id=voidtools.Everything ;
winget install --id=ShareX.ShareX ;
winget install --id=File-New-Project.EarTrumpet ;
winget install --id=7zip.7zip ;
winget install --id=Microsoft.PowerToys ;
winget install --id=DuongDieuPhap.ImageGlass ;
winget install --id=namazso.OpenHashTab ;
winget install --id=WinMerge.WinMerge ;
winget install --id=WinSCP.WinSCP ;
winget install --id=syndicode.iNFektNFOViewer ;
winget install --id=9NBLGGH5R558 ; # Microsoft To Do

# Imaging utilities
winget install --id=LIGHTNINGUK.ImgBurn ;
winget install --id=Rufus.Rufus ;
winget install --id=RaspberryPiFoundation.RaspberryPiImager ;

# Network utilities
winget install --id=Insecure.Nmap ;
winget install --id=angryziber.AngryIPScanner ;
winget install --id=WiresharkFoundation.Wireshark ;

# Security
winget install --id=Bitwarden.Bitwarden ;
winget install --id=Malwarebytes.Malwarebytes ;
winget install --id=Safing.Portmaster ;

# Disk cleanup and metadata removal
winget install --id=BleachBit.BleachBit ;
winget install --id=szTheory.exifcleaner ;

# Text editors and IDEs
winget install --id=Notepad++.Notepad++ ;
winget install --id=Microsoft.VisualStudioCode ;
winget install --id=JetBrains.PyCharm.Community ;
winget install --id=Google.AndroidStudio ;

# Project management
winget install --id=Notion.Notion ;

# Compilers
winget install --id=MSYS2.MSYS2 ;

# Interpreters
winget install --id=OpenJS.NodeJS ;
winget install --id=Python.Python.3.11 ;

# Source control
winget install --id=Git.Git ;
winget install --id=GitHub.GitHubDesktop ;

# Development of installers
winget install --id=JRSoftware.InnoSetup ;
winget install --id=kymoto.InnoScriptStudio ;
winget install --id=NSIS.NSIS ;

# Static analysis tools
winget install --id=Cppcheck.Cppcheck ;

# Game development
winget install --id=GDevelop.GDevelop ;

# Documentation
winget install --id=egoist.devdocs-desktop ;
winget install --id=OlegShparber.Zeal ;

# Reverse-engineering
winget install --id=dnSpyEx.dnSpy ;
winget install --id=icsharpcode.ILSpy ;
winget install --id=WerWolv.ImHex ;

# TODO:
# Spotify is a special case where you can't install via a PowerShell instance with administrative privileges,
# so need to open a non-admin PowerShell prompt for this app specifically. ( ˘︹˘ )
#powershell winget install --id=Spotify.Spotify ;
winget install --id=Spotify.Spotify ;
