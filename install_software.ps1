Set-PSDebug -Strict

#we need elevation for this script
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{   
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb runAs -ArgumentList $arguments
    Break
}

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
cinst paint.net
cinst GoogleChrome-AllUsers
cinst firefox
cinst keepass