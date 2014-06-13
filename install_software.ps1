Set-PSDebug -Strict

$hasChocolatey = [System.IO.Directory]::Exists("c:\\Chocolatey")

if(!$hasChocolatey)
{
    #install Chocolatey
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
}
else
{
    Write-Output "Chocolatey exists already"
}

cinst git
cinst 7zip
cinst SublimeText3.app
cinst vlc
cinst notepadplusplus