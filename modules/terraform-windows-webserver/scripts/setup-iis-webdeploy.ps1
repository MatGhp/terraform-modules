# Install IIS
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Install Web Deploy
$webdeployUrl = "https://download.microsoft.com/download/E/3/C/E3C611DA-ADF4-4F6B-BEF0-F403A1C58898/WebDeploy_amd64_en-US.msi"
$webdeployInstaller = "C:\WebDeploy.msi"
Invoke-WebRequest -Uri $webdeployUrl -OutFile $webdeployInstaller
Start-Process -Wait -FilePath msiexec.exe -ArgumentList "/I $webdeployInstaller /quiet /norestart"

# Cleanup
Remove-Item -Path $webdeployInstaller -Force
