function Show-Menu
    {
         param (
               [string]$Title = 'Software selection'
         )
         Clear-Host
         Write-Host "  ================ $Title ================"
        
         Write-Host "  1: Press '1' for just the essentials."
         Write-Host "  2: Press '2' for game clients."
         Write-Host "  3: Press '3' for games."
         Write-Host "  4: Press '4' for benchmarking."
         Write-Host "  5: Press 'F' to pay respects."
         Write-Host "  Q: Press 'Q' to quit."
    }

    do
{
     Show-Menu
     $userinput = Read-Host "  Please make a selection"
     switch ($userinput)
     {
           '1' {
                Clear-Host
                '  You chose option #1'
           } '2' {
                Clear-Host
                '  You chose option #2'
           } '3' {
                Clear-Host
                '  You chose option #3'
           }
             '4' {
                Clear-Host
                '  You chose option #4'
               }
           
             'F' {
                Clear-Host
                '  You paid your respects'
           }
             'q' {
                return
           }
     }
     $userinput = Read-Host -Prompt "  Press any key to continue..."
}
until ($userinput -eq 'q')
