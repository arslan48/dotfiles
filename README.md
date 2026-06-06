# arslan dotfiles

This repository contains all of my personal dotfiles.

---

## ⚙️ Configuration

This repository includes configuration for:
- **Terminal:** Kitty
- **Shell:** Fish
- **Statusbar:** Waybar
- **Notification:** SwayNC
- **Launcher:** Rofi
- **Audio Visualizer:** Cava
- **System Information:** Fastfetch

---

## 📂 File Structure

### Hyprland
```text
hypr/
├── hyprland.lua
└── modules/
    ├── autostart.lua
    ├── binds.lua
    ├── decorations.lua
    ├── env.lua
    ├── input.lua
    ├── layout.lua
    ├── misc.lua
    ├── monitors.lua
    └── windowsrules.lua
└── themes/
    └── catppuccin-mocha.lua
```

### Waybar
```text
waybar/
├── colors/
│   ├── colors.css -> colors.dark.css
│   ├── colors.dark.css
│   └── colors.light.css
├── config.jsonc
├── context/
│   ├── ctlcenter.xml
│   └── network.xml
├── modules.jsonc
├── scripts/
│   └── launch.sh
└── style.css
```

### Rofi
```text
rofi/
├── config.rasi
├── scripts/
│   └── wall-picker.sh
├── theme.rasi
├── wall-picker.sh
└── wall.rasi
```

### Terminal & Shell
```text
kitty/
├── current-theme.conf
└── kitty.conf
```

### System Tools
```text
btop/
└── themes/
    └── catppuccin_mocha.theme

cava/
└── config

fastfetch/
├── config.jsonc
└── marin.png
```

---

## 🙏 Credits

A huge thanks to the open-source community for making ricing possible and fun. Special credit goes to:

| Author | Project | Contribution |
| :--- | :--- | :--- |
| [**cebem1nt**](https://github.com/cebem1nt/dotfiles) | `cebem1nt/dotfiles` | Base Waybar layout from cebem1nt/dotfiles — customized with colors, module tweaks, and fixes to fit this setup |
| [**ayanrajpoot10**](https://github.com/ayanrajpoot10/dotfiles) | `ayanrajpoot10/dotfiles` | Base Fastfetch configuration — customized to match the Catppuccin Mocha theme |
| [**Catppuccin**](https://github.com/catppuccin/catppuccin) | `catppuccin/catppuccin` | Beautiful pastel color palette used throughout this setup (Mocha variant) |
| [**Hyprland**](https://github.com/hyprwm/Hyprland) | `hyprwm/Hyprland` | Amazing Wayland compositor that powers this setup |
