sudo pacman -S --needed git base-devel zsh --noconfirm
chsh -s /usr/bin/zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"


git clone https://aur.archlinux.org/yay-bin.git
cd ~/yay-bin
makepkg -si --noconfirm

yay -S --noconfirm --needed $(grep -v '^#' packages.txt)

tldr --update
