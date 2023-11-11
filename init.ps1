# This is a PowerShell script to install and setup my Windows workstation
# Made by Derek "Turtle" Roe
# Licensed under the GNU GPLv3 or later

Write-Host
"
████████╗██╗   ██╗██████╗ ████████╗██╗     ███████╗███████╗    ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗███████╗    ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗
╚══██╔══╝██║   ██║██╔══██╗╚══██╔══╝██║     ██╔════╝██╔════╝    ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║██╔════╝    ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝
   ██║   ██║   ██║██████╔╝   ██║   ██║     █████╗  ███████╗    ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║███████╗    ███████╗██║     ██████╔╝██║██████╔╝   ██║   
   ██║   ██║   ██║██╔══██╗   ██║   ██║     ██╔══╝  ╚════██║    ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║╚════██║    ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   
   ██║   ╚██████╔╝██║  ██║   ██║   ███████╗███████╗███████║    ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝███████║    ███████║╚██████╗██║  ██║██║██║        ██║   
   ╚═╝    ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚══════╝╚══════╝     ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚══════╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   
                                                                                                                                                                         
 ██████╗ ███╗   ██╗██╗   ██╗     ██████╗ ██████╗ ██╗    ██╗   ██╗██████╗                                                                                                 
██╔════╝ ████╗  ██║██║   ██║    ██╔════╝ ██╔══██╗██║    ██║   ██║╚════██╗                                                                                                
██║  ███╗██╔██╗ ██║██║   ██║    ██║  ███╗██████╔╝██║    ██║   ██║ █████╔╝                                                                                                
██║   ██║██║╚██╗██║██║   ██║    ██║   ██║██╔═══╝ ██║    ╚██╗ ██╔╝ ╚═══██╗                                                                                                
╚██████╔╝██║ ╚████║╚██████╔╝    ╚██████╔╝██║     ███████╗╚████╔╝ ██████╔╝                                                                                                
 ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝      ╚═════╝ ╚═╝     ╚══════╝ ╚═══╝  ╚═════╝                                                                                                 
                                                                                                                                                                         
██╗    ██╗██████╗ ██╗████████╗████████╗███████╗███╗   ██╗    ██╗███╗   ██╗    ██████╗  ██████╗ ██╗    ██╗███████╗██████╗ ███████╗██╗  ██╗███████╗██╗     ██╗             
██║    ██║██╔══██╗██║╚══██╔══╝╚══██╔══╝██╔════╝████╗  ██║    ██║████╗  ██║    ██╔══██╗██╔═══██╗██║    ██║██╔════╝██╔══██╗██╔════╝██║  ██║██╔════╝██║     ██║             
██║ █╗ ██║██████╔╝██║   ██║      ██║   █████╗  ██╔██╗ ██║    ██║██╔██╗ ██║    ██████╔╝██║   ██║██║ █╗ ██║█████╗  ██████╔╝███████╗███████║█████╗  ██║     ██║             
██║███╗██║██╔══██╗██║   ██║      ██║   ██╔══╝  ██║╚██╗██║    ██║██║╚██╗██║    ██╔═══╝ ██║   ██║██║███╗██║██╔══╝  ██╔══██╗╚════██║██╔══██║██╔══╝  ██║     ██║             
╚███╔███╔╝██║  ██║██║   ██║      ██║   ███████╗██║ ╚████║    ██║██║ ╚████║    ██║     ╚██████╔╝╚███╔███╔╝███████╗██║  ██║███████║██║  ██║███████╗███████╗███████╗        
 ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝   ╚═╝      ╚═╝   ╚══════╝╚═╝  ╚═══╝    ╚═╝╚═╝  ╚═══╝    ╚═╝      ╚═════╝  ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝        
                                                                                                                                                                         
"

#===========================================================================
# Install script start
#===========================================================================

# Be sure to run this script as an administrator to avoid issues!

# Update the help files for PowerShell functions
Update-Help

# Remove all restrictions on PowerShell scripts
# PLEASE NOTE: THIS IS INSECURE, PLEASE USE CAUTION/COMMON SENSE WHEN DOING THIS!!!
# Normal users will want to just run the script using the right click option "Run with PowerShell", 
# as this gives permission once and then blocks scripts after that
# Set-ExecutionPolicy Unrestricted -Scope LocalMachine
# Set-ExecutionPolicy Unrestricted -Scope CurrentUser

# Install winget, thanks to Chris Titus for this little script!
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
	Install-Script -Name winget-install -Force
	winget-install.ps1

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

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

# Add this folder to the PATH for CLI apps that will be installed
Set-PathVariable AddPath 'C:\cli'

# Install all of the things! O_O

# TODO
# Log things with
# if($LASTEXITCODE){"App successfully installed!"}

# TODO
# Maybe make an import JSON and then
# winget import -i .\winget-export.json --accept-package-agreements

# Web browsers
winget install --id=Brave.Brave -h ;
winget install --id=Mozilla.Firefox -h ;
winget install --id=Mullvad.Browser -h ;
winget install --id=TorProject.TorBrowser -h -l "C:\TorBrowser" ;

# Downloads
winget install --id=qBittorrent.qBittorrent -h ;
winget install --id=OnionShare.OnionShare -h ;
winget install --id=XavierRoche.HTTrack -h ;
winget install --id=yt-Stacher.youtube-dl -h ;

# Media playback
winget install --id=VideoLAN.VLC -h ;
winget install --id=Audacious.MediaPlayer -h ;
winget install --id=CodecGuide.K-LiteCodecPack.Mega -h ;
winget install --id=gpodder.gpodder -h ;

# 3D software
winget install --id=BlenderFoundation.Blender -h ;

# Audio/video transcoding and manipulation
winget install --id=Audacity.Audacity -h ;
winget install --id=Tenpi.Waifu2xGUI -h ;
winget install --id=HandBrake.HandBrake -h ;
winget install --id=LMMS.LMMS -h ;
winget install --id=SergeySerkov.TagScanner -h ;
winget install --id=Aegisub.Aegisub -h ;

# Image and photo manipulation
winget install --id=GIMP.GIMP -h ;
winget install --id=Inkscape.Inkscape -h ;
winget install --id=darktable.darktable -h ;
winget install --id=XnSoft.XnViewMP -h ;

# Office software
winget install --id=calibre.calibre -h ;
winget install --id=SumatraPDF.SumatraPDF -h ;
winget install --id=TheDocumentFoundation.LibreOffice -h ;
winget install --id=JohnMacFarlane.Pandoc -h ;
winget install --id=mb21.panwriter -h ;

# Social media and communication
winget install --id=Discord.Discord -h ;
winget install --id=Mozilla.Thunderbird -h ;
winget install --id=Guilded.Guilded -h ;
winget install --id=hellofficiency-inc.raven-reader -h ;
winget install --id=HexChat.HexChat -h ;

# Alternate frontends
winget install --id=PrestonN.FreeTube -h ;
winget install --id=Streamlink.Streamlink -h ;
winget install --id=Streamlink.Streamlink.TwitchGui -h ;

# Streaming and content creation
winget install --id=OBSProject.OBSStudio -h ;
winget install --id=Streamlabs.Streamlabs -h ;
winget install --id=XSplit.Broadcaster -h ;
winget install --id=Twitch.TwitchStudio -h ;
winget install --id=Elgato.StreamDeck -h ;

# Game clients
winget install --id=Valve.Steam -h ;
winget install --id=EpicGames.EpicGamesLauncher -h ;
winget install --id=GOG.Galaxy -h ;
winget install --id=ItchIo.Itch -h ;
winget install --id=Ubisoft.Connect -h ;
winget install --id=ElectronicArts.EADesktop -h ;
winget install --id=Mojang.MinecraftLauncher -h ;
winget install --id=Peppy.Osu! -h ;
winget install --id=Google.PlayGames.Beta -h ;
winget install --id=RiotGames.Valorant.NA -h ;
winget install --id=RiotGames.LeagueOfLegends.NA -h ;

# Gaming utilities
winget install --id=Codeusa.BorderlessGaming -h ;
winget install --id=NexusMods.Vortex -h ;
winget install --id=AntiMicroX.antimicrox -h ;
winget install --id=WeMod.WeMod -h ;
winget install --id=ZeusSoftware.nGlide -h ;

# System runtimes
winget install --id=Microsoft.VCRedist.2005.x64 -h ;
winget install --id=Microsoft.VCRedist.2008.x64 -h ;
winget install --id=Microsoft.VCRedist.2010.x64 -h ;
winget install --id=Microsoft.VCRedist.2012.x64 -h ;
winget install --id=Microsoft.VCRedist.2013.x64 -h ;
winget install --id=Microsoft.VCRedist.2005.x86 -h ;
winget install --id=Microsoft.VCRedist.2008.x86 -h ;
winget install --id=Microsoft.VCRedist.2010.x86 -h ;
winget install --id=Microsoft.VCRedist.2012.x86 -h ;
winget install --id=Microsoft.VCRedist.2013.x86 -h ;
winget install --id=Microsoft.VCRedist.2015+.x86 -h ;
winget install --id=Microsoft.VCRedist.2015+.x64 -h ;
winget install --id=Microsoft.DotNet.DesktopRuntime.3_1 -h ;
winget install --id=Microsoft.DotNet.DesktopRuntime.5 -h ;
winget install --id=Microsoft.DotNet.DesktopRuntime.6 -h ;
winget install --id=Microsoft.DotNet.DesktopRuntime.7 -h ;
winget install --id=Microsoft.DotNet.Runtime.3_1 -h ;
winget install --id=Microsoft.DotNet.Runtime.5 -h ;
winget install --id=Microsoft.DotNet.Runtime.6 -h ;
winget install --id=Microsoft.DotNet.Runtime.7 -h ;
winget install --id=Microsoft.DotNet.Framework.DeveloperPack_4 -h ;
winget install --id=Microsoft.DirectX -h ;
winget install --id=Oracle.JavaRuntimeEnvironment -h ;

# System information
winget install --id=CPUID.CPU-Z -h ;
winget install --id=TechPowerUp.GPU-Z -h ;
winget install --id=CPUID.HWMonitor -h ;
winget install --id=CrystalDewWorld.CrystalDiskInfo -h ;
winget install --id=AntibodySoftware.WizTree -h ;
winget install --id=REALiX.HWiNFO -h ;
winget install --id=AMD.OCAT -h ;

# System benchmarks
winget install --id=PrimateLabs.Geekbench.6 -h ;
winget install --id=CrystalDewWorld.CrystalDiskMark -h ;
winget install --id=Antutu.AntutuBenchmark -h ;
winget install --id=Unigine.SuperpositionBenchmark -h ;
winget install --id=Unigine.ValleyBenchmark -h ;
winget install --id=Unigine.HeavenBenchmark -h ;
winget install --id=MSI.Kombustor.4 -h ;
winget install --id=FinalWire.AIDA64.Extreme -h ;
winget install --id=CrystalDewWorld.CrystalDiskMark -h ;

# System utilities
winget install --id=voidtools.Everything -h ;
winget install --id=ShareX.ShareX -h ;
winget install --id=File-New-Project.EarTrumpet -h ;
winget install --id=7zip.7zip -h ;
winget install --id=Microsoft.PowerToys -h ;
winget install --id=DuongDieuPhap.ImageGlass -h ;
winget install --id=namazso.OpenHashTab -h ;
winget install --id=WinMerge.WinMerge -h ;
winget install --id=WinSCP.WinSCP -h ;
winget install --id=syndicode.iNFektNFOViewer -h ;
winget install --id=9NBLGGH5R558 -h ; # Microsoft To Do
winget install --id=9p7knl5rwt25 --accept-package-agreements -h -l "C:\Sysinternals" ;

# Imaging utilities
winget install --id=LIGHTNINGUK.ImgBurn -h ;
winget install --id=Rufus.Rufus -h ;

# Network utilities
winget install --id=Insecure.Nmap -h ;
winget install --id=angryziber.AngryIPScanner -h ;
winget install --id=WiresharkFoundation.Wireshark -h ;

# Security
winget install --id=Bitwarden.Bitwarden -h ;
winget install --id=Safing.Portmaster -h ;

# Disk cleanup and metadata removal
winget install --id=BleachBit.BleachBit -h ;
winget install --id=szTheory.exifcleaner -h ;

# Text editors and IDEs
winget install --id=Notepad++.Notepad++ -h ;
winget install --id=Microsoft.VisualStudioCode -h ;
choco install qownnotes

# Project management
winget install --id=Notion.Notion -h ;

# Compilers
winget install --id=MSYS2.MSYS2 -h ;

# Interpreters
winget install --id=OpenJS.NodeJS -h ;
winget install --id=Python.Python.3.11 -h ;

# Source control
winget install --id=Git.Git -h ;
winget install --id=GitHub.GitHubDesktop -h ;

# Development of installers
winget install --id=JRSoftware.InnoSetup -h ;
winget install --id=kymoto.InnoScriptStudio -h ;
winget install --id=NSIS.NSIS -h ;

# Static analysis tools
winget install --id=Cppcheck.Cppcheck -h ;

# Game development
winget install --id=GDevelop.GDevelop -h ;

# Documentation
winget install --id=OlegShparber.Zeal -h ;

# Reverse-engineering
winget install --id=dnSpyEx.dnSpy -h -l "C:\dnSpyEx" ;
winget install --id=icsharpcode.ILSpy -h ;
winget install --id=WerWolv.ImHex -h ;
