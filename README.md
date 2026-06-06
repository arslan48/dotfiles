# arslan dotfiles

<p align="center">
  <img src="assets/banner.svg" alt="arslan dotfiles" width="600" />
</p>

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

---

## 📂 File Structure

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

---

## ⌨️ Keybindings Cheat Sheet

Here are the primary hotkeys configured in [hypr/modules/binds.lua](file:///home/arslan/dotfiles/hypr/modules/binds.lua):

### Applications
- `SUPER + Enter` ➔ Open Terminal (**Kitty**)
- `SUPER + E` ➔ Open File Manager (**Dolphin**)
- `SUPER + C` ➔ Open Application Launcher (**Rofi**)
- `SUPER + B` ➔ Open Browser (**Brave**)
- `SUPER + X` ➔ Open Text Editor (**VS Code**)
- `SUPER + W` ➔ Open **Wallpaper Picker**
- `SUPER + .` ➔ Open **Emoji Selector**

### Window & Workspace Control
- `SUPER + Shift + Q` ➔ Close active window
- `SUPER + F` ➔ Toggle fullscreen
- `SUPER + Space` ➔ Toggle floating state (auto-resizes and centers window)
- `SUPER + V` ➔ Toggle dwindle split (`togglesplit`)
- `SUPER + H/J/K/L` (or Arrow keys) ➔ Focus left/down/up/right
- `SUPER + Shift + H/J/K/L` (or Arrow keys) ➔ Move active window left/down/up/right
- `SUPER + U/I/O/P` ➔ Resize window (repeating keys)
- `SUPER + [1-10]` ➔ Switch to workspace 1-10
- `SUPER + Shift + [1-10]` ➔ Move active window to workspace 1-10
- `SUPER + ~` (Grave key) ➔ Toggle Special Workspace (Scratchpad)
- `SUPER + Shift + ~` ➔ Move active window to Special Workspace
- `SUPER + S / A` ➔ Navigate to next / previous workspace
- `SUPER + D` ➔ Switch to previous workspace per monitor

### Media & Volume
- `Print` ➔ Screenshot selected area (saves to clipboard)
- `Shift + Print` ➔ Screenshot entire screen (saves to clipboard)
- `AudioRaiseVolume` / `AudioLowerVolume` ➔ Adjust system volume (using `wpctl`)
- `AudioMute` ➔ Mute/unmute audio sink
- `MonBrightnessUp` / `MonBrightnessDown` ➔ Adjust screen brightness (using `brightnessctl`)
- `AudioNext` / `AudioPrev` / `AudioPlay` / `AudioPause` ➔ Media controls (using `playerctl`)

---

## 🔗 Custom Scripts & Integrations

Some Waybar widgets integrate custom scripts placed in `~/.local/bin/`. You can copy or write simple wrappers for these features:
- `toggle_bluetooth` ➔ Toggles Bluetooth power state.
- `refreshrate [rate]` ➔ Dynamically adjusts display refresh rates (e.g. `60`, `90`, `144`).
- `caffeine` ➔ Prevents system sleep/suspension on lid close.
- `powersafe` ➔ Switches to power-saving configuration profiles.

---

## 📄 License

This setup is open-source under the **MIT License**. Check out the [LICENSE](file:///home/arslan/dotfiles/LICENSE) file for more information.
