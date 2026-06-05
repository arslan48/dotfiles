# arslan48 Dotfiles

Simple Hyprland dotfiles with Waybar, Rofi, Kitty, Fastfetch, Cava, Btop, and
a Catppuccin-style theme.

## Preview

![Desktop](assets/screenshots/desktop-widgets.jpeg)

![Waybar](assets/screenshots/waybar-expanded.jpeg)

![Rofi](assets/screenshots/rofi-launcher.png)

## Install

Hyprland's current official docs recommend installing it from your distro
packages. On Arch, that is:

```bash
sudo pacman -S hyprland
```

Then copy the configs:

```bash
git clone https://github.com/arslan48/dotfiles.git ~/dotfiles

rsync -av hypr/ ~/.config/hypr/
rsync -av waybar/ ~/.config/waybar/
rsync -av rofi/ ~/.config/rofi/
rsync -av kitty/ ~/.config/kitty/
rsync -av fastfetch/ ~/.config/fastfetch/
rsync -av cava/ ~/.config/cava/
rsync -av btop/ ~/.config/btop/
```

Make the scripts executable:

```bash
chmod +x ~/.config/rofi/scripts/wall-picker.sh
chmod +x ~/.config/rofi/wall-picker.sh
chmod +x ~/.config/waybar/scripts/launch.sh
```

## Dependencies

Install the basics:

```bash
sudo pacman -S \
  waybar kitty rofi-wayland swaync dolphin \
  pipewire wireplumber pipewire-pulse pavucontrol \
  networkmanager network-manager-applet bluez bluez-utils blueman \
  brightnessctl playerctl grim slurp wl-clipboard \
  fastfetch btop cava htop libnotify \
  papirus-icon-theme qt5ct qt6ct kvantum nwg-look \
  awww mission-center
```

Extra apps used in keybinds:

- `brave`
- `code`
- `alacritty`
- `nvtop`
- `powertop`
- `peaclock`

## Fonts

Install these fonts so the icons and UI render correctly:

- `JetBrains Mono Nerd Font`
- `CaskaydiaCove Nerd Font Propo`

If icons are missing, refresh the font cache:

```bash
fc-cache -fv
```

## Keybinds

| Key | Action |
| --- | --- |
| `SUPER + Enter` | Terminal |
| `SUPER + E` | File manager |
| `SUPER + C` | App launcher |
| `SUPER + B` | Browser |
| `SUPER + X` | Editor |
| `SUPER + W` | Wallpaper picker |
| `Print` | Area screenshot |
| `Shift + Print` | Full screenshot |
| `SUPER + Shift + R` | Reload Hyprland |
| `SUPER + Shift + E` | Exit Hyprland |

## Notes

- Wallpaper picker path is in `rofi/scripts/wall-picker.sh`.
- If you do not use my apps, change the hardcoded commands in
  `hypr/modules/binds.lua`.
- The Waybar Bluetooth and control-center actions reference a few local scripts
  in `~/.local/bin/`; remove them if you do not use those scripts.

## Credits

Waybar is based on the config from
[cebem1nt/dotfiles](https://github.com/cebem1nt/dotfiles/tree/main/.config/waybar).
I adapted it for my setup.

## License

MIT. See [LICENSE](LICENSE).
