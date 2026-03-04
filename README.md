# TODO

☐ keyd setup
☐ aconfmgr setup from fresh manual install

# Instructions

## Pre-install things

### Install useful utilities + dependencies
```
sudo pacman -S --noconfirm --needed eza copyq nvim btop man-db man-pages tealdeer brightnessctl git base-devel zsh stow
echo "alias ls='eza -l'" >> ~/.bashrc
```

### Setup Git

1. Set username and email - [🔗](https://docs.github.com/en/get-started/git-basics/set-up-git#setting-up-git) -
```
git config --global user.name "<username>"
git config --global user.email "<email>"
```
2. Create ssh key for authentication - [🔗](https://docs.github.com/en/get-started/git-basics/set-up-git#connecting-over-ssh) -
```
ssh-keygen -t ed25519 -C "<email>"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
3. Add ssh key to account (copy key using command below) - [🔗](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account) -
```
cat ~/.ssh/id_ed25519.pub | copyq copy -
```

4. Test if ssh key works
```
ssh -T git@github.com
```

### Install yay - [🔗](https://github.com/Jguer/yay) -
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### Setup zsh + zsh theme
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
```

## Install things
### Clone the repo + symbolic link it
```
git clone git@github.com:HiddenKendo/dotfiles.git
cd dotfiles
stow . --adopt
```
