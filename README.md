# Windows 11 Upgrade Script
## SYNOPSIS  
Automatically Download/Install Windows 11 quickly and easily with powershell and a URL  
## DESCRIPTION  
Downloads the Windows 11 ISO from the any URL hosting it, mounts it to the Windows Operating system, and then attempts to install it will fail if it doesn't meet the strict Windows 11 requirements.  
## PARAMETER arguments  
These are the arguments to give to the Windows 11 setup.exe after it is mounted.  
These switches can be found here - https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-setup-command-line-options  
Default: /auto upgrade /DynamicUpdate Disable /quiet  

## PARAMETER DownloadPath  
The path where the Windows 11 ISO will be downloaded.   
Default: C:\windows\temp\win11.iso  

## PARAMETER DownloadURL  
The URL for the Windows 11 ISO you can grab a download link here https://www.microsoft.com/en-us/software-download/windows11 that lasts for 24 hours  

## EXAMPLE  
        Install-Windows11 -DownloadURL "https://software-download.microsoft.com/pr/Win11_English_x64.iso?t=91df36a5-c6e0-46b5-8ad8-960c29aae6a4&e=1634707003&h=1f1e014b5f7389e51b98958c9c2d0949"  
        Install-Windows11 -arguments "/auto upgrade /DynamicUpdate Disable" -DownloadURL "https://software-download.microsoft.com/pr/Win11_English_x64.iso?t=91df36a5-c6e0-46b5-8ad8-960c29aae6a4&e=1634707003&h=1f1e014b5f7389e51b98958c9c2d0949"  
        Install-Windows11 -DownloadPath "C:\temp\win11.iso" `  
            -DownloadURL "https://software-download.microsoft.com/pr/Win11_English_x64.iso?t=91df36a5-c6e0-46b5-8ad8-960c29aae6a4&e=1634707003&h=1f1e014b5f7389e51b98958c9c2d0949" `  
            -arguments "/auto upgrade /quiet"  

### Discord - https://discord.gg/hyE2a9KMKP
