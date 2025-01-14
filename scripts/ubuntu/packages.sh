sudo apt install -y \
    build-essential \
    jq yq \
    wget curl aria2 \
    tar gzip zip unzip \
    net-tools lsof traceroute nmap mtr whois \
    fail2ban \
    htop \
    rsync \
    ripgrep fzf \
    screen tmux \
    python3-full

echo "source /usr/share/doc/fzf/examples/key-bindings.zsh" >> ~/.zshrc
echo "source /usr/share/doc/fzf/examples/completion.zsh" >> ~/.zshrc
