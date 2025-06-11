# Dotfiles
> Pragmatic and comfy setup on the latest Windows with WSL2 Arch Linux!

# Steps to reproduce
1. Debloat(https://github.com/Raphire/Win11Debloat)
2. Redistributables(https://github.com/abbodi1406/vcredist)
3. Install Updates and change Settings(nothing has to get in the way, i.e. no animations)
4. Enable WSL2 and install Arch Linux(wsl.exe --install -d archlinux")
5. Winget(run winget.ps1 for my selection or cherry pick with "winget.exe install Org.Application")
```
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
```
6. Get a font(I like [CommitMono](https://commitmono.com/), but do check out [JetBrainsMono](https://www.jetbrains.com/lp/mono/), [Monaspace](https://monaspace.githubnext.com/), [Mononoki](https://madmalik.github.io/mononoki/) and [Iosevka](https://typeof.net/Iosevka/))
7. Check out my dotfiles and choose which ones you'd like to use or write your own

# WSL2(Arch Linux)
1. Make a standard user("useradd -m -s /bin/<shell> <username>; passwd <username>; sudo usermod -aG wheel <username>; export EDITOR="<editor>"; visudo)
2. Pacman(run pacman.sh for my selection or cherry pick with "pacman -Syu <program>")
```
#!/bin/sh
pacman -Syu base-devel binutils file which tree \
sudo man-db bash-completion \
curl wget aria2 openssh openssl \
aws-cli azure-cli terraform \
bc fd ripgrep \
git git-lfs go \
neovim xsel \
cmatrix \
sqlite go nodejs pnpm
```
3. Install Go packages(if you want them)
```
go install github.com/0xlover/squanchy/cmd/squanchy@latest
go install github.com/ffuf/ffuf/v2@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/pressly/goose/v3/cmd/goose@latest
```
4. Again, check out my dotfiles and choose which ones you'd like to use or write your own
5. Get Cheat Engine and dnSpy


> [!TIP]
> Are you new to all of this? Check out my selection one program at a time and get to know them the best you can.
