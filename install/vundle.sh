BUNDLE_DIR=~/.vim/bundle

mkdir -p "$BUNDLE_DIR" && (git clone https://github.com/VundleVim/Vundle.vim "$BUNDLE_DIR/vundle" || (cd "$BUNDLE_DIR/vundle" && git pull origin master))

vim +PluginInstall +qall

cd -
