# Pre-install Things

## Setup Git

```
sudo pacman -S git
```

1. Set username and email [(🔗)](https://docs.github.com/en/get-started/git-basics/set-up-git#setting-up-git)
```
# git config --global user.name "Mona Lisa"
# git config --global user.email "YOUR_EMAIL"
```
2. Create ssh key for authentication [(🔗)](https://docs.github.com/en/get-started/git-basics/set-up-git#connecting-over-ssh)
```
# ssh-keygen -t ed25519 -C "your_email@example.com"
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_ed25519
```
3. Add ssh key to account (copy key using command below) [(🔗)](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account)
```
# cat ~/.ssh/id_ed25519.pub | copyq copy -
```

4. Test if ssh key works
```
# ssh -T git@github.com
```
