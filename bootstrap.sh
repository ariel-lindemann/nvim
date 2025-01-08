#!/bin/bash

download_nvim() {
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
	sudo rm -rf /opt/nvim
	sudo tar -C /opt -xzf nvim-linux64.tar.gz
	rm nvim-linux64.tar.gz
}

add_to_path() {

	NEW_PATH_DIR="/opt/nvim-linux64/bin"

	# Check if the directory already exists in the PATH
	if [[ ":$PATH:" == *":$NEW_PATH_DIR:"* ]]; then
	    echo "The directory '$NEW_PATH_DIR' is already in the PATH."
	    return 0
	fi

	# Check if the .bashrc file exists in the home directory
	BASHRC_FILE="$HOME/.bashrc"
	if [ ! -f "$BASHRC_FILE" ]; then
	    echo "No .bashrc file found in home directory. Creating one."
	    touch "$BASHRC_FILE"
	fi

	# Add the new PATH entry to the .bashrc file if not already present
	if ! grep -q "export PATH=.*$NEW_PATH_DIR.*" "$BASHRC_FILE"; then
	    echo "export PATH=\$PATH:$NEW_PATH_DIR" >> "$BASHRC_FILE"
	    echo "Added '$NEW_PATH_DIR' to PATH in .bashrc"
	else
	    echo "The directory '$NEW_PATH_DIR' is already set in .bashrc."
	fi

	# Source the .bashrc file to apply changes immediately
	source "$BASHRC_FILE"
}

add_to_path

printf "Installing dependencies ...\n"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	sudo apt update
	sudo apt install -y \
		curl \
		gcc \
		ripgrep
		nodejs \
		npm

elif [[ "$OSTYPE" == "darwin"* ]]; then
	brew install gcc \
		ripgrep \
		node
else
	echo "Automatic dependency installation not supported for $OSTYPE. Please install them manually"
fi

download_nvim

printf "\nChecking installation ...\n\n"

nvim --version

