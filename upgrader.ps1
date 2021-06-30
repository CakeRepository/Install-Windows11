#Downloads files using .net $DownloadURL is the location of the iso and path is where you want the iso to go
function Download-GoodWay{param([string]$DownloadURL,[string]$DownloadPath)
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($DownloadURL, $DownloadPath)
}

#Mounts the ISO and runes the setup.exe with special parameters
#remember to remove /quiet switch if there are any issues to troubleshoot with the GUI
function Install-Windows10 { param( [string]$FilePath) 
$vol = Mount-DiskImage -ImagePath $FilePath  -PassThru |
	Get-DiskImage | 
	Get-Volume

$setup = '{0}:\setup.exe' -f $vol.DriveLetter

Start-Process cmd.exe -Wait -ArgumentList "/c $setup /auto upgrade /DynamicUpdate Disable /quiet"

}
$ISOpath = "c:\windows\temp\win10.iso"

Download-GoodWay -DownloadURL "https://software-download.microsoft.com/pr/Win10_21H1_English_x64.iso?t=04ed15f8-10b5-472b-b45e-2b95c56bde8f&e=1625098877&h=995085fe2f87d2c6e06627d2d7f801b3" -DownloadPath $ISOpath
Install-Windows10 -FilePath $ISOpath
