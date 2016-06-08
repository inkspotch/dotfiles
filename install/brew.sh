ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask

apps=(
  git
  vim
  dex2jar
  apktool
  zsh
  mercurial
)

brew install "${apps[*]}"

cask_apps=(
  android_studio
  slack
  intellij-idea
  google-chrome
)

brew cask install "${cask_apps[*]}"
