brew:
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap caskroom/cask

apps:
	brew cask install visual-studio-code
	brew cask install google-chrome
