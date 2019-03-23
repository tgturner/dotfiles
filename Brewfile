cask_args appdir: "/Applications"
tap "homebrew/cask"

###################################
####### BREWS #####################
###################################
brew "mas"

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew "coreutils"

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew "findutils"

# Install GNU `sed`.
brew "gnu-sed"

# Install GnuPG to enable PGP-signing commits.
brew "gnupg"

# This is needed for fzf to know how to ignore files listed in .gitignore
# and know how to show hidden files
# It is also a good CLI tool
brew "ag"

# Install `cmake` for YouCompleteMe
brew "cmake"

# Install `wget`and `curl`.
brew "wget"
brew "curl"

# Install more recent versions of some macOS tools.
brew "grep"
brew "openssh"

brew "python3"

# Change the user's life forever
# God bless the best text editor on earth
brew "vim", args: ["with-override-system-vi"]
brew "neovim", args: ["with-override-system-vi"]

# Install other useful binaries.
brew "git"
brew "yarn", args: ["ignore-dependencies"]
brew "tmux"
brew "imagemagick"
brew "mysql@5.6", restart_service: true, link: true, conflicts_with: ["mysql"]

###################################
####### CASKS #####################
###################################
# cask "google-chrome"
# cask "firefox"
# cask "docker"
# cask "iterm2"
# cask "spotify"
# cask "dropbox"

###################################
####### MAS #######################
###################################
# mas "1Password", id: 443987910