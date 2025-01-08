![Code Size](https://img.shields.io/github/languages/code-size/ariel-lindemann/nvim) [![Requires](https://img.shields.io/badge/requires-nvim%200.10%2B-9cf?logo=neovim)](https://neovim.io//)

# Neovim Configuration

These are my neovim configuration files.

## Requirements

+  [Neovim (v0.10.0)](https://github.com/neovim/neovim/releases/tag/v0.10.0) or newer
+  [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
+  a C compiler, such as [GCC](https://gcc.gnu.org/)

## Setup

Place the folder in `~/.config`. 
Run `./bootstrap.sh` to install the dependencies (including neovim). Only works on Debian-based Linux (apt) and macOS (homebrew) for now.

For toubleshooting, from inside neovim run `:checkhealth nvim` and `:checkhealth Lazy`.
