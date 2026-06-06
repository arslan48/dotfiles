# Dotfiles Structure

This file provides a structured overview of the configuration files (dotfiles) in this repository.

## Directory Tree

```text
.
├── btop/
│   └── themes/
│       └── catppuccin_mocha.theme
├── cava/
│   └── config
├── fastfetch/
│   ├── config.jsonc
│   └── marin.png
├── hypr/
│   ├── hyprland.lua
│   ├── modules/
│   │   ├── autostart.lua
│   │   ├── binds.lua
│   │   ├── decorations.lua
│   │   ├── env.lua
│   │   ├── input.lua
│   │   ├── layout.lua
│   │   ├── misc.lua
│   │   ├── monitors.lua
│   │   └── windowsrules.lua
│   └── themes/
│       └── catppuccin-mocha.lua
├── kitty/
│   ├── current-theme.conf
│   └── kitty.conf
├── rofi/
│   ├── config.rasi
│   ├── scripts/
│   │   └── wall-picker.sh
│   ├── theme.rasi
│   ├── wall-picker.sh
│   └── wall.rasi
└── waybar/
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

## Description of Directories & Files

### 🌌 Hyprland (`hypr/`)
Hyprland configuration organized as modular Lua scripts.
- **[hyprland.lua](file:///home/arslan/dotfiles/hypr/hyprland.lua)**: The main entry point for the Hyprland configuration.
- **[modules/](file:///home/arslan/dotfiles/hypr/modules/)**: Contains individual configuration modules:
  - **[autostart.lua](file:///home/arslan/dotfiles/hypr/modules/autostart.lua)**: Programs that run on startup.
  - **[binds.lua](file:///home/arslan/dotfiles/hypr/modules/binds.lua)**: Keyboard shortcuts and mouse bindings.
  - **[decorations.lua](file:///home/arslan/dotfiles/hypr/modules/decorations.lua)**: Blur, opacity, shadows, rounded corners, etc.
  - **[env.lua](file:///home/arslan/dotfiles/hypr/modules/env.lua)**: Environment variables setup.
  - **[input.lua](file:///home/arslan/dotfiles/hypr/modules/input.lua)**: Keyboard, mouse, and touchpad settings.
  - **[layout.lua](file:///home/arslan/dotfiles/hypr/modules/layout.lua)**: Window layout (dwindle/master) rules.
  - **[misc.lua](file:///home/arslan/dotfiles/hypr/modules/misc.lua)**: Miscellaneous configs (vrr, splash screen, etc.).
  - **[monitors.lua](file:///home/arslan/dotfiles/hypr/modules/monitors.lua)**: Monitor configuration and scaling.
  - **[windowsrules.lua](file:///home/arslan/dotfiles/hypr/modules/windowsrules.lua)**: Specific behavior rules for application windows.
- **[themes/catppuccin-mocha.lua](file:///home/arslan/dotfiles/hypr/themes/catppuccin-mocha.lua)**: Catppuccin Mocha colors and styling constants.

### 📊 Waybar (`waybar/`)
A highly customizable status bar for Wayland.
- **[config.jsonc](file:///home/arslan/dotfiles/waybar/config.jsonc)**: Main layout structure of Waybar.
- **[modules.jsonc](file:///home/arslan/dotfiles/waybar/modules.jsonc)**: Module definitions (battery, clock, network, cpu, ram, workspaces).
- **[style.css](file:///home/arslan/dotfiles/waybar/style.css)**: Visual styles and animations.
- **[colors/](file:///home/arslan/dotfiles/waybar/colors/)**: Contains stylesheets for color palettes:
  - `colors.dark.css` (Dark theme palette)
  - `colors.light.css` (Light theme palette)
  - `colors.css` (Symlink pointing to the active color palette)
- **[context/](file:///home/arslan/dotfiles/waybar/context/)**: Custom widget templates/schemas for menus.
- **[scripts/launch.sh](file:///home/arslan/dotfiles/waybar/scripts/launch.sh)**: Script to restart waybar and apply configurations.

### 🔍 Rofi (`rofi/`)
Application launcher, window switcher, and custom menu tool.
- **[config.rasi](file:///home/arslan/dotfiles/rofi/config.rasi)**: Global Rofi configuration.
- **[theme.rasi](file:///home/arslan/dotfiles/rofi/theme.rasi)**: Global layout and UI configuration.
- **[wall.rasi](file:///home/arslan/dotfiles/rofi/wall.rasi)**: Wallpaper selector theme/dimensions.
- **[wall-picker.sh](file:///home/arslan/dotfiles/rofi/wall-picker.sh)**: Custom interactive wallpaper picker script.

### 🐱 Kitty (`kitty/`)
A fast, feature-rich, GPU-based terminal emulator.
- **[kitty.conf](file:///home/arslan/dotfiles/kitty/kitty.conf)**: Main terminal emulator configuration.
- **[current-theme.conf](file:///home/arslan/dotfiles/kitty/current-theme.conf)**: Colorscheme file (imported in `kitty.conf`).

### 🎵 Cava (`cava/`)
- **[config](file:///home/arslan/dotfiles/cava/config)**: Console-based audio visualizer configuration.

### 📈 Btop (`btop/`)
- **[themes/catppuccin_mocha.theme](file:///home/arslan/dotfiles/btop/themes/catppuccin_mocha.theme)**: Catppuccin Mocha theme config for the btop system resource monitor.

### ⚡ Fastfetch (`fastfetch/`)
- **[config.jsonc](file:///home/arslan/dotfiles/fastfetch/config.jsonc)**: Configuration for the system information fetch tool.
- **[marin.png](file:///home/arslan/dotfiles/fastfetch/marin.png)**: Custom image/logo displayed alongside fastfetch stats.
