/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#!/bin/bash

# Path to your dotfiles repo

DOTFILES_DIR="$HOME/Desktop/dev/dotfiles"

# List of dotfiles to symlink

DOTFILES=(
.zshrc
.tmux.conf
.gitconfig

# Add more files here as needed

)

link_dotfile() {
local source_file="$DOTFILES_DIR/$1"
  local target_file="$HOME/$1"

if [ -L "$target_file" ]; then
echo "✅ Symlink already exists: $target_file"
  elif [ -e "$target_file" ]; then
echo "🔁 Backing up existing file: $target_file → ${target_file}.backup"
    mv "$target_file" "${target_file}.backup"
    ln -s "$source_file" "$target_file"
    echo "🔗 Created symlink: $target_file → $source_file"
  else
    ln -s "$source_file" "$target_file"
echo "🔗 Created symlink: $target_file → $source_file"
fi
}

echo "🔧 Linking dotfiles..."
for file in "${DOTFILES[@]}"; do
  link_dotfile "$file"
done

Save this in your setup.sh.

Make sure all listed dotfiles exist in your dotfiles repo at ~/Desktop/dev/dotfiles/.

Run chmod +x setup.sh if you haven’t already.

Then just run ./setup.sh.

---

Great question — and it’s a really important one to understand when working with symlinks in a dotfiles setup.

### Here's what happens:

If **a file already exists at the symlink destination** (e.g. `~/.zshrc`), and you try to create a symlink there (e.g. `ln -s ./dev/dotfiles/.zshrc ~/.zshrc`), it will **fail** with an error like:

```
ln: ~/.zshrc: File exists
```

### Key points:

- **Symlinks don’t merge files.** They’re just pointers. You can't have both the real file _and_ a symlink in the same location.
- If you want the symlink to be there, you need to **remove or rename the existing file first**.
- If you run `ln -sf`, the `-f` stands for **force**, and it will **replace** the existing file with the symlink (so the original is gone unless you backed it up).

---

### Recommended flow in your `setup.sh`:

Here’s a snippet to safely handle this:

```bash
link_dotfile() {
  local source_file=$1
  local target_file=$2

  if [ -L "$target_file" ]; then
    echo "Symlink already exists: $target_file"
  elif [ -e "$target_file" ]; then
    echo "Backing up existing file: $target_file -> ${target_file}.backup"
    mv "$target_file" "${target_file}.backup"
    ln -s "$source_file" "$target_file"
    echo "Symlink created: $target_file → $source_file"
  else
    ln -s "$source_file" "$target_file"
    echo "Symlink created: $target_file → $source_file"
  fi
}

# Example use:
link_dotfile "$HOME/Desktop/dev/dotfiles/.zshrc" "$HOME/.zshrc"
```

---

This way you don’t accidentally delete your existing config, and you still get your dotfiles hooked up.

Want help adding a whole block to your setup script for this logic across multiple dotfiles (like `.zshrc`, `.tmux.conf`, etc)?

---

You're welcome — great to hear it worked! 🎉

Let’s tackle your questions piece by piece:

---

### ✅ What to add to your `README.md`

Here’s a suggested section to include under a heading like `# Setup Notes` or `# Post-Install Tasks`:

```md
### Visual Studio Code CLI (`code`) Command

If the `code` command doesn't work in terminal (e.g. "zsh: command not found: code"), follow these steps:

1. Move VS Code to the `/Applications` folder (if it's not already there).
2. Open it from `/Applications` (not from Downloads or Desktop).
3. In VS Code, press `Cmd+Shift+P` and run:
```

Shell Command: Install 'code' command in PATH

```
4. Restart your terminal and try:
```

code .

```
5. Confirm it's installed correctly with:
```

ls -l /usr/local/bin/code

```
It should point to:
```

/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code

```

**Important:** Don't run VS Code directly from the downloaded `.zip` file — it will be sandboxed (translocated) and `code` won't be reliable.
```

### 🤔 What you could have done differently

The hiccup happened because macOS runs apps from `.zip` files in a **quarantined sandbox location**, and the shell command (`code`) ends up pointing there. Next time, here’s the clean install flow to avoid it:

- After downloading VS Code, **drag it to `/Applications` before ever opening it**.
- Always run it from `/Applications` the first time.
- Install the `code` command from within VS Code.

This keeps the app from being sandboxed or “translocated,” and it avoids path issues altogether.

---

Would you like me to help you update your setup script to include the `code` CLI check above?
