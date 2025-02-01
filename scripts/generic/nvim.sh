# Install Neovim  
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz  
tar -xzf nvim-linux-x86_64.tar.gz  
sudo rsync -a --update nvim-linux-x86_64/ /usr/local/
rm -rf nvim-linux-x86_64 nvim-linux-x86_64.tar.gz

# NvChad
git clone https://github.com/NvChad/starter ~/.config/nvim
