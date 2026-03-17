#!/bin/bash
# symlink-dotfiles.sh
# Creates symlinks from all files/folders in ~/dotfiles to ~ (home directory)

DOTFILES_DIR="$HOME/dotfiles"
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d%H%M%S)"

# List of files/folders to symlink
FILES=(
    ".zshrc"
    ".zprofile"
    ".vimrc"
    ".vim"
    ".ssh"
    ".vscode-oss"
    ".vibe"
)

echo "Backing up existing dotfiles to $BACKUP_DIR..."
mkdir -p "$BACKUP_DIR"

for file in "${FILES[@]}"; do
    TARGET="$HOME/$file"
    SOURCE="$DOTFILES_DIR/$file"

    if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
        echo "Backing up $TARGET"
        mv "$TARGET" "$BACKUP_DIR/"
    fi

    echo "Creating symlink for $file"
    ln -s "$SOURCE" "$TARGET"
done

echo "All symlinks created successfully."

