rm -rf ~/.gitconfig
ln -sf $(pwd)/gitconfig ~/.gitconfig

rm -rf ~/.tmux.conf
ln -sf $(pwd)/tmux.conf ~/.tmux.conf

rm -rf ~/.bashrc
ln -sf $(pwd)/bashrc ~/.bashrc

mkdir -p ~/.config
rm -rf ~/.config/nvim
ln -sf $(pwd)/nvim ~/.config/nvim

echo "Create ~/.gitconfig-work"
echo "Create ~/.gitconfig-priv"
