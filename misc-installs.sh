# This script installs other programs that are not managed
# by brew or that didn't fit into any of the other scripts

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

echo "####################"
echo "Installing plug.vim!"
echo "####################"
if [ ! -f ~/.config/nvim/autoload/plug.vim ]; then
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "plug.vim already installed"
fi

echo "####################"
echo "Installing antigen!"
echo "####################"
if [ ! -f ~/antigen.zsh ]; then
    curl -L git.io/antigen > ~/antigen.zsh
else
    echo "antigen already installed"
fi

nvim +PlugClean! +qall
nvim +silent +PlugInstall +qall

echo "Open a new terminal!"
