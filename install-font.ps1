$url = "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"
$zipPath = "$env:TEMP\JetBrainsMono.zip"
$extractPath = "$env:TEMP\JetBrainsMono"
$userFontsFolder = "$env:LOCALAPPDATA\Microsoft\Windows\Fonts"

if (-not (Test-Path $userFontsFolder)) {
    New-Item -Path $userFontsFolder -ItemType Directory | Out-Null
}

Write-Host "Downloading JetBrainsMono Nerd Font..."
Invoke-WebRequest -Uri $url -OutFile $zipPath

Write-Host "Extracting fonts..."
Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force

Write-Host "Installing fonts..."
$fonts = Get-ChildItem -Path $extractPath -Filter "*.ttf" -Recurse
$regKey = "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Fonts"

foreach ($font in $fonts) {
    $dest = Join-Path $userFontsFolder $font.Name
    Copy-Item $font.FullName -Destination $dest -Force
    $fontName = $font.BaseName + " (TrueType)"
    Set-ItemProperty -Path $regKey -Name $fontName -Value $dest
}

Write-Host "Cleaning up..."
Remove-Item -Path $zipPath -Force
Remove-Item -Path $extractPath -Recurse -Force

Write-Host "JetBrainsMono Nerd Font installation complete! Please restart your terminal."
