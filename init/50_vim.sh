mkdir -p ~/.vim/.temp
mkdir -p ~/.vim/plugged

# dowload vim-plug plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Download Vim plugins.
if [[ "$(type -P vim)" ]]; then
  vim +PlugUpgrade +PlugUpdate +qall
fi
