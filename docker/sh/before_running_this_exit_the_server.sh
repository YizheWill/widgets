sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cd ~/.vim_runtime
git clone git://github.com/tpope/vim-rails.git my_plugins/vim-rails
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
cd ~
sed -ie 's/robbyrussell/powerlevel10k\/powerlevel10k/g' .zshrc
echo "color desert" >> .vimrc
