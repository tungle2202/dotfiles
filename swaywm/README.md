# swaywm configuration

## **Prerequisite:**

Make sure you have these installed:

- **Bar:** waybar
- **Launcher:** [look](https://github.com/kunkka19xx/look)
- **Fonts:** JetBrainsMono Nerd Font
- **Terminal:** Alacritty

> You can replace 'look'(lookapp) and 'alacritty' with any launcher or terminal
emulator you like,
just remember to change the sway config file

## **Prerequisite season 2:**

Before you blindly copy-paste this into your system,
keep in mind that my Waybar config is tightly coupled with my own setup:

- **Audio Control:** The volume module (`pulseaudio`) is hard-coded to trigger
`pavucontrol` on click. Make sure you have `pavucontrol` installed,
or change it to whatever mixer you prefer.
- **Network Manager:** Clicking the network module launches `alacritty -e nmtui`
If you use a different terminal emulator or network tool, it will throw a tantrum.
- **Theme & Fonts:** It uses the **Catppuccin Frappé** palette and expects
`JetBrainsMono Nerd Font` to be installed. Ignore it if you prefer tofu boxes.

Some utilities listed in sway config are not even installed in my own system.
It was default config, idk, you can ignore them if you don't get any problems.

## **How to apply the config:**

Just copy the configs into their place:

```sh
cp -r ./sway/ ~/.config/
cp -r ./waybar/ ~/.config/
```
