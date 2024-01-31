curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir -p ~/bin/
mv nvim.appimage ~/bin/
ln -fs ~/bin/nvim.appimage ~/bin/nvim
