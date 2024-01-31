mkdir -p ~/.fonts
cd ~/.fonts
wget  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/GeistMono.zip
unzip Hack.zip
unzip GeistMono.zip
rm Hack.zip
rm GeistMono.zip
fc-cache -f

