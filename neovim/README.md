# neovim

I use LazyVim with Catppuccin theme and pre-configured language extras (C/C++,
Rust, Zig, Java, Python, Markdown, etc.)

## **Prerequisites & Dependencies:**

Before anything else, make sure you have these installed:

- **Editor:** Neovim (>= 0.10.0 recommended, minimum 0.9.0)
- **Framework:** LazyVim (bootstrapped automatically by lazy.nvim)
- **Theme:** Catppuccin
- **Compiler & Build Tools:** gcc or clang, make (essential for building
Treesitter parsers and native C extensions)
- **Treesitter:** tree-sitter-cli (required by nvim-treesitter to compile
syntax parsers without errors)
- **Search & Navigation:** ripgrep, fd (for ultra-fast file navigation and grep
via fzf-lua)
- **LSP & Tooling Providers (Mason):** git, curl, unzip, tar, gzip, nodejs &
npm, python3 & venv
- **Fonts:** JetBrainsMono Nerd Font
- **Clipboard:** wl-clipboard (Sway - which I use - uses Wayland;
use xclip or xsel if your system uses X11)

## **Getting started:**

If you are setting up on a brand new, empty system without neovim:

### 1. Install *Neovim* (>= 0.10.0)

> **Note:** LazyVim requires modern Neovim (>= 0.9.0, 0.10+ recommended).
Default package managers on Debian/Ubuntu stable often ship severely outdated
versions. Make sure to get a recent release!

- On Arch-based distros:

  ```sh
  sudo pacman -S neovim
  ```

- On Debian / Ubuntu:

  Using the official Neovim PPA or AppImage/prebuilt binary:

  ```sh
  # Option A: via Neovim Unstable/Stable PPA
  sudo add-apt-repository ppa:neovim-ppa/unstable
  sudo apt update
  sudo apt install neovim
  ```

  ```sh
  # Option B: via pre-built binary tarball (universal Linux x86_64)
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
  sudo rm -rf /opt/nvim
  sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
  sudo ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim
  ```

- On Redhat-based distros (Fedora):

  ```sh
  sudo dnf install neovim
  ```

### 2. Install Build Tools & Tree-sitter CLI

`nvim-treesitter` compiles syntax grammars from source code directly on your
machine. You **must** have a C compiler (`gcc` or `clang`)
and the `tree-sitter` CLI installed

- On Arch-based distros:

  ```sh
  sudo pacman -S base-devel tree-sitter-cli
  ```

- On Debian-based distros:

  ```sh
  sudo apt install build-essential cargo
  cargo install tree-sitter-cli
  # Ensure ~/.cargo/bin is in your PATH, or install via npm:
  # sudo npm install -g tree-sitter-cli
  ```

- On Redhat-based distros:

  ```sh
  sudo dnf groupinstall "Development Tools"
  sudo dnf install tree-sitter-cli
  ```

### 3. Install Search, Navigation & Archive Tools

These provide high-speed file discovery (`fd`), grep search (`ripgrep`),
and archive extraction needed by Mason:

- On Arch-based distros:

  ```sh
  sudo pacman -S ripgrep fd git curl unzip tar gzip wl-clipboard 
  ```

- On Debian-based distros:

  ```sh
  sudo apt install ripgrep fd-find git curl unzip tar gzip wl-clipboard 
  ln -sf $(which fdfind) ~/.local/bin/fd
  ```

- On Redhat-based distros:

  ```sh
  sudo dnf install ripgrep fd-find git curl unzip tar gzip wl-clipboard 
  ```

### 4. Install Node.js & Python (for Mason LSP servers & formatters)

Mason manages and downloads Language Server Protocols (LSPs), linters,
and formatters directly inside Neovim.
Many of these tools require Node.js/npm and Python:

- On Arch-based distros:

  ```sh
  sudo pacman -S nodejs npm python python-pip
  ```

- On Debian-based distros:

  ```sh
  sudo apt install nodejs npm python3 python3-pip python3-venv
  ```

- On Redhat-based distros:

  ```sh
  sudo dnf install nodejs npm python3 python3-pip
  ```

- On macOS:

  ```sh
  brew install node python
  ```

## **Apply the config:**

Once you have completed the Prerequisites, drop my configs into their places:

### 1. Copy the configuration

Execute this from the `neovim/` directory inside this dotfiles repository:

```sh
cp -r ./nvim ~/.config/nvim
```

### 2. Launch Neovim & let Lazy install everything

Start Neovim:

```sh
nvim
```

- `lazy.nvim` will automatically bootstrap itself and clone all plugins
(LazyVim, Catppuccin, LSP extras, etc.).
- Treesitter will compile all syntax parsers.
- Wait a minute or two until all installation bars complete.
- Press `q` to close the Lazy dashboard.

## Disclaimer

- **Fonts are key:** If you see square boxes / weird ass icon / broken glyphs
in your file tree or statusline, it is a font problem. Set your terminal
emulator font to **JetBrainsMono Nerd Font** (or any Nerd Font v3.0+ you're using).
- **Treesitter check:** If treesitter warns about missing parsers or compiler
errors, verify that `gcc` and `tree-sitter` are in your `$PATH`.
You can run `:checkhealth vim.treesitter` or `:TSUpdate` inside Neovim anytime.
- **LSP & Formatters:** Language servers, linters, and formatters are managed by
Mason. Type `:Mason` inside Neovim anytime to view installed servers or
install additional ones.
- **Keymaps:** Press `<Space>` (the leader key) and pause for a brief moment —
`which-key` will pop up with an interactive cheatsheet of all
available shortcuts.
- **Diagnostics check:** Run `:checkhealth` anytime to diagnose any system or
plugin issues.

**For anything else:**
Visit Reddit and Arch Forum, check the [LazyVim Docs](https://www.lazyvim.org),
or just RTFM
