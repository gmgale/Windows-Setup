#This will self elevate the script so with a UAC prompt since this script needs to be run as an Administrator in order to function properly.
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    Write-Host "You didn't run this script as an Administrator. This script will self elevate to run as an Administrator and continue."
    Start-Sleep 1
    Write-Host "                                               3"
    Start-Sleep 1
    Write-Host "                                               2"
    Start-Sleep 1
    Write-Host "                                               1"
    Start-Sleep 1
    Start-Process powershell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
    Exit
}

# Choco
choco install -y chocolatey-core.extension # core helper function for choco
choco install -y chocolateygui

# Web
choco install -y googlechrome
choco install -y firefox
choco install -y flashplayerplugin
choco install -y jre8 #java
choco install -y qbittorrent

# Social
choco install -y microsoft-teams.install
choco install -y slack
choco install -y zoom

# Utils
choco install -y 7zip.install
choco install -y winrar
choco install -y vlc
choco install -y autohotkey.portable
choco install -y openvpn
choco install -y rainmeter
choco install -y curl
choco install -y cygwin
choco install -y wd-backup

# Office
choco install -y adobereader
choco install -y libreoffice-fresh

# Programming
choco install -y python3
choco install -y php
choco install -y golang
choco install -y vscode
choco install -y curl
choco install -y wget
choco install -y vim
choco install -y virtualbox
choco install -y docker-desktop
choco install -y docker-cli

# VScode Extentions
choco install -y vscode-go
choco install -y vscode-python
choco install -y vscode-jupyter
choco install -y vscode-intellicode

# Anti-virus
choco install -y virustotaluploader
choco install -y vt-cli #Virustotal CLI
choco install -y avgantivirusfree
choco install -y malwarebytes
choco install -y avastfreeantivirus

# Oracle
choco install -y oraclejdk
choco install -y vscode-oracle-devtools


Write-Host "Congratulations! You installed everything!"
Write-Host "Please restart your computer"

Restart-Computer -Confirm
