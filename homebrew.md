Here’s your current up-to-date **Homebrew list** based on our recent conversations:

---

### 💻 **Applications and Tools:**

* **VS Code:** Code editor
* **Firefox:** Web browser
* **Rectangle:** Window management
* **Stats:** System monitoring
* **VirtualBox:** Virtualization
* **PyCharm:** Python IDE
* **Git:** Version control
* **GitHub CLI (gh):** GitHub tool
* **htop:** System monitoring
* **tmux: Terminal Multiplexer

---

### 📝 **Notes:**

* **Zsh**: Already installed by default on macOS, so no need to include it in the Brewfile.

---
config files


ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"
ln -sf "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES_DIR/.gitignore_global" "$HOME/.gitignore_global"
ln -sf "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
