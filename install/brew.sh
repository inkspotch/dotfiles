ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask

cask_apps=(
  android_studio
  slack
  intellij-idea
  google-chrome
  java
)

brew cask install "${cask_apps[*]}"

apps=(
  git
  vim
  dex2jar
  apktool
  zsh
  mercurial
)

brew install "${apps[*]}"


