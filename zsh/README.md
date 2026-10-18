# zsh

I use ohmyzsh and powerlevel10k theme

## **Prerequisites & Dependencies:**

Before anything else, make sure you have these installed:

- **Shell:** zsh

- **Framework:** oh-my-zsh

- **Theme:** powerlevel10k

- **Plugins:** zsh-autosuggestions, zsh-syntax-highlighting

- **Fonts:** JetBrainsMono Nerd Font

## **Getting started:**

If you are setting up on a brand new, empty system without zsh:

### 1. Install *zsh* and *git*

- On Arch-based distros:

  ```sh
  sudo pacman -S zsh git curl
  ```

- On Debian-based distros:

  ```sh
  sudo apt install zsh git curl
  ```

- On Redhat-based distros:

  ```sh
  sudo dnf install zsh git curl
  ```

### 2. Change your default shell to zsh

Execute this on your terminal:

```sh
chsh -s $(which zsh)
```

Then, log out and log back in for this to take effect

### 3. Install Oh My Zsh

Run the official installer script:

```sh
sh -c "$(curl -fsSL [https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh](https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh))"
```

(Don't worry if it overwrites your default .zshrc, we don't need it anyway)

### 4. Install Powerlevel10k

Clone the theme into your Oh My Zsh custom themes directory:

```sh
git clone --depth=1 [https://github.com/romkatv/powerlevel10k.git](https://github.com/romkatv/powerlevel10k.git) ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### 5. Install Essential Plugins

Clone the autosuggestions and syntax highlighting plugins:

```sh
git clone [https://github.com/zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone [https://github.com/zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## **Apply the config:**

Once you have completed the Prerequisites, drop my configs into their places:

```sh
cp ./.zshrc ~/.zshrc
cp ./.p10k.zsh ~/.p10k.zsh
```

## Disclaimer

- **Fonts are key:** If you see square boxes / weird ass icon / Netanyahu images
in your zsh, it might be font problem, check the terminal emulator preferences.
- **Customization:** type p10k configure anytime if you want to return the
wizard and change your prompt style.

**For anything else:** (There's Mastercard)
Visit Reddit and Arch Forum, or just RTFM
