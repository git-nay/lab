# Define the URL to the installer
$installerUrl = "https://tfstorageacc3434.blob.core.windows.net/tfcontainer-public/RuneMate_4_13_4_0_windows_amd64_setup.exe?sp=r&st=2025-07-05T14:31:45Z&se=2025-07-05T22:31:45Z&spr=https&sv=2024-11-04&sr=b&sig=a960epFntnVYvYYAmrlMnemHEfjlR3gGK2kPJvXG7Mg%3D"

# Define the local path to download the installer
$installerPath = "$env:TEMP\RuneMateSetup.exe"

# Download the installer
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Run the installer silently (modify if RuneMate doesn't support silent flags)
Start-Process -FilePath $installerPath -ArgumentList "/S" -Wait

# Optional: Clean up
Remove-Item $installerPath -Force
