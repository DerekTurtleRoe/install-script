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

winget install --id=Microsoft.Edge ;
