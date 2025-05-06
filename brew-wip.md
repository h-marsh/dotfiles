You're right again—thanks for the reminder! Here's your fully updated **Brewfile** with everything currently on your list:

---

### 🧪 **Your Brewfile**

#### 📦 **Command Line Tools**

```bash
brew "git"
brew "gh"         # GitHub CLI
brew "tmux"
brew "htop"
```

#### 🧰 **GUI Applications (Casks)**

```bash
cask "visual-studio-code"
cask "pycharm"
cask "virtualbox"
cask "rectangle"
cask "stats"
```

---

You can drop this into `~/Desktop/dev/dotfiles/Brewfile`, and your `setup.sh` script can automate running:

```bash
brew bundle --file=~/Desktop/dev/dotfiles/Brewfile
```
