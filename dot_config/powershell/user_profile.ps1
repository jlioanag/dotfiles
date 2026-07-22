#Prompt
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\spaceship.omp.json" | Invoke-Expression

#Icons
Import-Module -Name Terminal-Icons

# z!!!!
Import-Module z

# IntelliSense
Import-Module PSReadLine
# Set-PSReadLineOption -Colors @{ InlinePrediction = $PSStyle.Background.Blue }
# Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView
# Set-PSReadLineOption -EditMode Windows

#Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Github Projects
function gtp { Set-Location "C:\Users\JtheMage\Documents\GitHub\"} 

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
