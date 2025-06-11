Set-ExecutionPolicy Bypass -Scope CurrentUser
winget install 7zip.7zip OBSProject.OBSStudio
winget install Alex313031.Mercury Alex313031.Thorium
winget install Bitwarden.Bitwarden ByteDance.CapCut
# I don't know why that is versioned
winget install ComfortSoftwareGroup.FreeAlarmClock5.2.0.0
winget install Google.GoogleDrive Discord.Discord Spotify.Spotify
winget install HTTPie.HTTPie Hex-Rays.IDA.Free
winget install JeffreyPfau.mGBA
winget install Microsoft.PowerToys
# Use that flag to add "Open with Code" to Windows context menu
winget install Microsoft.VisualStudioCode --override "/verysilent /suppressmsgboxes /mergetasks='!runcode,addcontextmenufiles,addcontextmenufolders,associatewithfiles,addtopath'"
winget install VideoLan.VLC qBittorrent.qBittorrent Alacritty.Alacritty