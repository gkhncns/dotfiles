brew:
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

utils:
  brew install vim --with-override-system-vi
  brew install tmux
  brew install httpie
  brew install jq

apps:
  brew cask install visual-studio-code
  brew cask install google-chrome
  brew cask install docker
