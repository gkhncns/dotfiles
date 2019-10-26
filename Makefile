brew:
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap caskroom/cask

utils:
	brew install tmux
	brew install httpie
	brew install jq
	brew install zsh

apps:
	brew cask install visual-studio-code
	brew cask install google-chrome
	brew cask install docker
