#===========================================================================
# Derek "Turtle" Roe
# Windows install script
# Licensed under the Unlicense
#===========================================================================


# ╔══╦╗░░╔╗
# ║╔╗║╚╗╔╝║
# ║╚╝╚╗╚╝╔╝
# ║╔═╗╠╗╔╝
# ║╚═╝║║║
# ╚═══╝╚╝
# ╔════╦╗░╔╦═══╦════╦╗░░╔═══╗
# ║╔╗╔╗║║░║║╔═╗║╔╗╔╗║║░░║╔══╝
# ╚╝║║╚╣║░║║╚═╝╠╝║║╚╣║░░║╚══╗
# ░░║║░║║░║║╔╗╔╝░║║░║║░╔╣╔══╝
# ░░║║░║╚═╝║║║╚╗░║║░║╚═╝║╚══╗
# ░░╚╝░╚═══╩╝╚═╝░╚╝░╚═══╩═══╝

# 
#                              ___-------___
#                          _-~~             ~~-_
#                       _-~                    /~-_
#    /^\__/^\         /~  \                   /    \
#  /|  O|| O|        /      \_______________/        \
# | |___||__|      /       /                \          \
# |          \    /      /                    \          \
# |   (_______) /______/                        \_________ \
# |         / /         \                      /            \
#  \         \^\\         \                  /               \     /
#    \         ||           \______________/      _-_       //\__//
#      \       ||------_-~~-_ ------------- \ --/~   ~\    || __/
#        ~-----||====/~     |==================|       |/~~~~~
#         (_(__/  ./     /                    \_\      \.
#                (_(___/                         \_____)_)
#

#===========================================================================
# Install script start
#===========================================================================

winget install --id=SomePythonThings.WingetUIStore -e ;

#===========================================================================
# Web browsers
#===========================================================================
winget install --id=BraveSoftware.BraveBrowser -e  ;
winget install --id=LibreWolf.LibreWolf -e  ;
winget install --id=TorProject.TorBrowser -e  ;

#===========================================================================
# Game clients
#===========================================================================
winget install --id=Valve.Steam -e  ;
winget install --id=EpicGames.EpicGamesLauncher -e  ;
winget install --id=ElectronicArts.EADesktop -e  ;
winget install --id=Ubisoft.Connect -e  ;
winget install --id=GOG.Galaxy -e  ;
# winget install --id=Wargaming.GameCenter -e ;
# winget install --id=GaijinNetwork.WarThunder -e ;
winget install --id=ItchIo.Itch -e ;
# winget install --id=Amazon.Games -e ;

#===========================================================================
# Launchers
#===========================================================================
winget install --id=Playnite.Playnite -e ;
# winget install --id=Emulationstation.Emulationstation -e ;

#===========================================================================
# Riot Games
#===========================================================================
winget install --id=RiotGames.Valorant.NA -e ;
winget install --id=RiotGames.LeagueOfLegends.NA -e ;

#===========================================================================
# Game mods
#===========================================================================
winget install --id=NexusMods.Vortex -e ;
winget install --id=WeMod.WeMod -e  ; -e ;

#===========================================================================
# RuneScape
#===========================================================================
# winget install --id=OpenOSRS.OpenOSRSLauncher -e ;

#===========================================================================
# Minecraft
#===========================================================================
winget install --id=Mojang.MinecraftLauncher -e ;

#===========================================================================
# Games
#===========================================================================
# winget install --id=Wesnoth.BattleForWesnoth -e ;
# winget install --id=Peppy.Osu! -e  ;
# winget install --id=TheTTRTeam.ToontownRewritten -e  ;
# winget install --id=WildfireGames.0AD -e ;
# winget install --id=XMoto.XMoto -e ;
# winget install --id=Warzone2100Project.Warzone2100 -e ;
# winget install --id=SuperTuxKart.SuperTuxKart -e ;
# winget install --id=SuperTux.SuperTux -e ;
# winget install --id=RabidViperProductions.AssaultCube -e ;
# winget install --id=QuintonReeves.RedEclipse -e ;
# winget install --id=PokerTH.PokerTH -e ;
# winget install --id=OpenTTD.OpenTTD -e ;
# winget install --id=OpenRA.OpenRA -e ;
# winget install --id=FreeCiv.FreeCiv -e ;
# winget install --id=BrutalChess.BrutalChess -e ;
# winget install --id=Aardappel.Cube -e ;
# winget install --id=Fangamer.Deltarune -e ;
# winget install --id=DavidJoffe.DaveGnukem -e ;

#===========================================================================
# Controller software
#===========================================================================
winget install --id=AntiMicro.AntiMicro -e  ;

#===========================================================================
# Emulators
#===========================================================================
winget install --id=Project64.Project64.Dev -e  ;
winget install --id=Project64.Project64 -e ;
winget install --id=ScummVM.ScummVM -e ;
winget install --id=JeffreyPfau.mGBA -e ;
winget install --id=DOSBox.DOSBox -e ;
winget install --id=joncampbell123.DOSBox-X -e ;
winget install --id=DolphinEmulator.Dolphin -e ;
winget install --id=Libretro.RetroArch -e ;

#===========================================================================
# Source ports
#===========================================================================
winget install --id=OpenRCT2.OpenRCT2 -e ;
winget install --id=Doomsday.Doomsday -e ;

#===========================================================================
# Benchmarks
#===========================================================================
winget install --id=Unigine.HeavenBenchmark -e  ;
winget install --id=Unigine.SuperpositionBenchmark -e  ;
winget install --id=Unigine.ValleyBenchmark -e  ;
winget install --id=PrimateLabs.Geekbench.5 -e  ;
winget install --id=MSI.Kombustor.4 -e ;

#===========================================================================
# System utilities
#===========================================================================
winget install --id=ShareX.ShareX -e  ;
winget install --id=File-New-Project.EarTrumpet -e  ;
winget install --id=Microsoft.PowerShell -e ;
winget install --id=Microsoft.WindowsTerminal -e  ;
winget install --id=voidtools.Everything -e  ;
winget install --id=7zip.7zip -e  ;
winget install --id=Microsoft.PowerToys -e  ;
winget install --id=Codeusa.BorderlessGaming -e  ;
winget install --id=namazso.OpenHashTab -e  ;
winget install --id=CodeSector.TeraCopy -e  ;
winget install --id=jbreland.uniextract -e  ;
winget install --id=WinSCP.WinSCP -e  ;

#===========================================================================
# Cleaning tools
#===========================================================================
winget install --id=BleachBit.BleachBit -e  ;
winget install --id=Klocman.BulkCrapUninstaller -e  ;
winget install --id=RevoUninstaller.RevoUninstallerPro -e  ;
winget install --id=AntibodySoftware.WizTree -e  ;
winget install --id=DupeGuru.DupeGuru -e  ;

#===========================================================================
# Productivity
#===========================================================================
winget install --id=9NBLGGH5R558 -e ; # Microsoft To Do
winget install --id=Notion.Notion -e  ;
winget install --id=ActivityWatch.ActivityWatch -e ;
winget install --id=hello-efficiency-inc.raven-reader -e ;
winget install --id=yang991178.fluent-reader -e ;
winget install --id=OleguerLlopart.OpenComic -e ;

#===========================================================================
# System runtimes
#===========================================================================
winget install --id=Microsoft.VC++2005Redist-x86 -e  ;
winget install --id=Microsoft.VC++2005Redist-x64 -e  ;
winget install --id=Microsoft.VC++2008Redist-x64 -e  ;
winget install --id=Microsoft.VC++2008Redist-x86 -e  ;
winget install --id=Microsoft.VC++2010Redist-x64 -e  ;
winget install --id=Microsoft.VC++2010Redist-x86 -e  ;
winget install --id=Microsoft.VC++2012Redist-x64 -e  ;
winget install --id=Microsoft.VC++2012Redist-x86 -e  ;
winget install --id=Microsoft.VC++2013Redist-x64 -e  ;
winget install --id=Microsoft.VC++2013Redist-x86 -e  ;
winget install --id=Microsoft.VC++2015-2022Redist-x64 -e  ;
winget install --id=Microsoft.VC++2015-2022Redist-x86 -e  ;
winget install --id=Microsoft.dotnetRuntime.6-x86 -e  ;
winget install --id=Microsoft.dotnetRuntime.6-x64 -e  ;
winget install --id=Oracle.JavaRuntimeEnvironment -e ;

#===========================================================================
# Drivers
#===========================================================================
winget install --id=Nvidia.GeForceExperience -e  ;

#===========================================================================
# Audio/video
#===========================================================================
winget install --id=VideoLAN.VLC -e  ;
# winget install --id=PeterPawlowski.foobar2000 -e  ;
winget install --id=Audacious.MediaPlayer -e ;
winget install --id=HandBrake.HandBrake -e  ;
winget install --id=Audacity.Audacity -e ;
winget install --id=CodecGuide.K-LiteCodecPack.Mega -e  ;
winget install --id=LMMS.LMMS -e  ;
winget install --id=GuinpinSoft.MakeMKV -e  ;
winget install --id=AlexanderKojevnikov.Spek -e  ;
winget install --id=Streamlink.Streamlink -e  ;
winget install --id=Streamlink.Streamlink.TwitchGui -e  ;
winget install --id=SergeySerkov.TagScanner -e  ;
winget install --id=Spotify.Spotify -e ;
winget install --id=Tenpi.Waifu2xGUI -e ;
winget install --id=Aegisub.Aegisub -e ;
winget install --id=PrestonN.FreeTube -e  ;
winget install --id=jely2002.youtube-dl-gui -e ;
winget install --id=yt-dlp.yt-dlp -e ;
winget install --id=yt-dlg.yt-dlg -e  ;

#===========================================================================
# Streaming software
#===========================================================================
winget install --id=OBSProject.OBSStudio -e  ;
winget install --id=Gamecaster.Gamecaster -e ;
winget install --id=XSplit.Broadcaster -e ;
winget install --id=Twitch.TwitchStudio -e ;
winget install --id=Restream.RestreamChat -e ;
winget install --id=Elgato.StreamDeck -e  ;

#===========================================================================
# 3D software
#===========================================================================
winget install --id=BlenderFoundation.Blender -e  ;

#===========================================================================
# Image/photo
#===========================================================================
winget install --id=GIMP.GIMP -e  ;
winget install --id=darktable.darktable -e  ;
winget install --id=DuongDieuPhap.ImageGlass -e  ;
winget install --id=Inkscape.Inkscape -e  ;
# winget install --id=XnSoft.XnViewMP -e  ;
winget install --id=OliverBetz.ExifTool -e ;
winget install --id=Redisant.TinyGUI -e ;

#===========================================================================
# Disc imaging
#===========================================================================
winget install --id=Balena.Etcher -e  ;
winget install --id=LIGHTNINGUK.ImgBurn -e  ;
winget install --id=SmartProjects.IsoBuster -e  ;
winget install --id=Rufus.Rufus -e  ;
winget install --id=Win32diskimager.win32diskimager -e ;
winget install --id=RaspberryPiFoundation.RaspberryPiImager -e ;

#===========================================================================
# Communication
#===========================================================================
winget install --id=Discord.Discord -e  ;
winget install --id=Guilded.Guilded -e  ;
winget install --id=HexChat.HexChat -e  ;
winget install --id=OpenWhisperSystems.Signal -e ;

#===========================================================================
# Self-hosted
#===========================================================================
winget install --id=OnionShare.OnionShare -e  ;

#===========================================================================
# Download management
#===========================================================================
winget install --id=AppWork.JDownloader -e  ;
winget install --id=qBittorrent.qBittorrent -e  ;

#===========================================================================
# Office
#===========================================================================
winget install --id=TheDocumentFoundation.LibreOffice -e  ;
winget install --id=SumatraPDF.SumatraPDF -e  ;
winget install --id=calibre.calibre -e  ;

#===========================================================================
# Security
#===========================================================================
winget install --id=Bitwarden.Bitwarden -e  ;
winget install --id=ClamWin.ClamWin -e  ;
winget install --id=Malwarebytes.Malwarebytes -e  ;
winget install --id=SUPERAntiSpyware.SUPERAntiSpyware -e  ;
winget install --id=Safing.Portmaster -e  ;
winget install --id=KeePassXCTeam.KeePassXC -e ;

#===========================================================================
# Hacking/information gathering
#===========================================================================
winget install --id=Heaventools.PEexplorer -e ;
winget install --id=XavierRoche.HTTrack -e  ;
winget install --id=angryziber.AngryIPScanner -e ;

#===========================================================================
# Hardware information
#===========================================================================
winget install --id=CPUID.CPU-Z -e  ;
winget install --id=CPUID.HWMonitor -e  ;
winget install --id=CrystalDewWorld.CrystalDiskInfo -e  ;
winget install --id=CrystalDewWorld.CrystalDiskMark -e  ;
winget install --id=TechPowerUp.GPU-Z -e  ;
winget install --id=REALiX.HWiNFO -e  ;
winget install --id=Piriform.Speccy -e  ;
winget install --id=FinalWire.AIDA64.Extreme -e ;
winget install --id=FinalWire.AIDA64.Engineer -e ;
winget install --id=Intel.ProcessorDiagnosticTool -e ;

#===========================================================================
# Text editors
#===========================================================================
winget install --id=Notepad++.Notepad++ -e  ;
winget install --id=Microsoft.VisualStudioCode -e  ;
winget install --id=mb21.panwriter -e  ;

#===========================================================================
# Viewers
#===========================================================================
winget install --id=syndicode.iNFektNFOViewer -e  ;
winget install --id=DBBrowserForSQLite.DBBrowserForSQLite -e  ;

#===========================================================================
# Development/programming
#===========================================================================
winget install --id=Git.Git -e ;
winget install --id=GitHub.GitHubDesktop -e  ;
winget install --id=Cppcheck.Cppcheck -e  ;
winget install --id=OpenJS.NodeJS -e  ;
winget install --id=OlegShparber.Zeal -e ;
winget install --id=Python.Python.3 -e  ;
winget install --id=Rustlang.Rustup -e ;

#===========================================================================
# Game development
#===========================================================================
winget install --id=UnityTechnologies.UnityHub -e ;
winget install --id=deepnight.LDtk -e ;
winget install --id=GDevelop.GDevelop -e ;

#===========================================================================
# Virtual machines
#===========================================================================
winget install --id=Oracle.VirtualBox -e ;

#===========================================================================
# Email
#===========================================================================
winget install --id=Mozilla.Thunderbird -e  ;
winget install --id=Tutanota.Tutanota -e  ;
