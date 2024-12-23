# Install Neovim  
wget -q https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz  
tar -xzf nvim-linux64.tar.gz  
sudo rsync -a --update nvim-linux64/ /usr/local/
rm -rf nvim-linux64 nvim-linux64.tar.gz

# NvChad
git clone https://github.com/NvChad/starter ~/.config/nvim
