# My dotfiles

## Packages (system)

Required:

```shell
sudo apt install -y \
    apt-transport-https \
    borgbackup \
    ca-certificates \
    curl \
    doas \
    fd-find \
    ffmpeg \
    flatpak \
    gimp \
    git \
    gnupg \
    htop \
    net-tools \
    netcat-openbsd \
    network-manager-openvpn \
    openssl \
    p7zip-full \
    pipx \
    python3-pip
    pv \
    qbittorrent \
    ripgrep \
    tree \
    vlc \
    wget \
    wl-clipboard \
    zsh
```

On-Demand:

* `docker`
* `trivy`
* `1password`
* `brave`
* `node`
* `protonvpn`
* `code`
* `dropbox`
* `zoom`
* `tilix`
* `meld`
* `dive`

## Packages (other)

* `bat` ([sharkdp/bat](https://github.com/sharkdp/bat))
* `git-delta` ([dandavison/delta](https://github.com/dandavison/delta))
* `git-credential-oauth` ([hickford/git-credential-oauth](https://github.com/hickford/git-credential-oauth))
* `cz` ([twpayne/chezmoi](https://github.com/twpayne/chezmoi))
* `nvim` ([neovim/neovim](https://github.com/neovim/neovim))
* `just` ([casey/just](https://github.com/casey/just/))
* `mkcert` ([FiloSottile/mkcert](https://github.com/FiloSottile/mkcert))
* `gron` ([tomnomnom/gron](https://github.com/tomnomnom/gron))
* `stylua` ([JohnnyMorganz/StyLua](https://github.com/JohnnyMorganz/StyLua))

## Packages (pipx)

* black
* httpie
* ipython
* poetry
* reuse
* yq
* ansible-core
* ansible-lint
* speedtest-cli
* yt-dlp
* mitmproxy

## Packages (flatpak)

Required:

```shell
flatpak install -y \
    com.slack.Slack \
    io.github.Qalculate.qalculate-qt \
    org.signal.Signal \
    de.bund.ausweisapp.ausweisapp2
```

On-Demand:

* Flatseal (`flatpak install com.github.tchx84.Flatseal`)
* ExtensionManager (`flatpak install com.mattjakeman.ExtensionManager`)
