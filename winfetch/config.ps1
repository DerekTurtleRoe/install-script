# == Turtle's Winfetch config ==
# == Released under the GNU GPLv3 ==
# == Turtle image part of the Twemoji project ==
# == and released under CC-BY 4.0 ==
# == https://creativecommons.org/licenses/by/4.0/ ==
# == https://github.com/twitter/twemoji ==

$image = "C:\Users\Turtle\.config\winfetch\winfetch.png"
# $noimage = $true

# Display image using ASCII characters
$ascii = $true

# Set the version of Windows to derive the logo from.
$logo = "Windows 10"

# Specify width for image/logo
$imgwidth = 50

# Make the logo blink
# $blink = $true

# Display all built-in info segments.
# $all = $true

# Add a custom info line
function info_custom_time {
    return @{
        title = "Time"
        content = (Get-Date -Format "dddd, MMMM dd, yyyy hh:mm:ss tt")
    }
}

# Configure which disks are shown
# $ShowDisks = @("C:", "D:")
# Show all available disks
$ShowDisks = @("*")

# Configure which package managers are shown
# disabling unused ones will improve speed
$ShowPkgs = @("winget")

# Configure how to show info for levels
# Default is for text only.
# 'bar' is for bar only.
# 'textbar' is for text + bar.
# 'bartext' is for bar + text.
# $cpustyle = 'bartext'
# $memorystyle = 'bartext'
# $diskstyle = 'bartext'
# $batterystyle = 'bartext'

# Remove the '#' from any of the lines in
# the following to **enable** their output.

@(
    "title"
    "dashes"
    "os"
	"theme"
    # "computer"
    "kernel"
    "motherboard"
	"cpu"
    "gpu"
    "custom_time"  # use custom info line
    "uptime"
    # "ps_pkgs"  # takes some time
    "terminal"
	"pwsh"
	# "pkgs"
    "resolution"
    "cpu_usage"  # takes some time
    "memory"
    "disk"
    # "battery"
    # "locale"
    # "weather"
    # "local_ip"
    # "public_ip"
    "blank"
    "colorbar"
)
