-- ██████╗ ██╗███╗   ██╗██████╗ ███████╗
-- ██╔══██╗██║████╗  ██║██╔══██╗██╔════╝
-- ██████╔╝██║██╔██╗ ██║██║  ██║███████╗
-- ██╔══██╗██║██║╚██╗██║██║  ██║╚════██║
-- ██████╔╝██║██║ ╚████║██████╔╝███████║
-- ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝

local terminal    = "kitty"
local fileManager = "dolphin"
local menu        = "rofi -show drun"
local browser     = "brave"
local editor      = "code"


local mainMod = "SUPER" 

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + W", hl.dsp.exec_cmd("/home/arslan/.config/rofi/scripts/wall-picker.sh"))
hl.bind("SUPER + R", hl.dsp.exec_cmd("/home/arslan/.config/waybar/scripts/launch.sh"))
hl.bind(mainMod .. " + CTRL + L", hl.dsp.exit())
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd(editor))

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "down" }))

-- Resize windows

local resizeStep = 30

hl.bind(mainMod .. " + U", 
    hl.dsp.window.resize({ x = -resizeStep, y = 0, relative = true }), { repeating = true })

hl.bind(mainMod .. " + P", 
    hl.dsp.window.resize({ x = resizeStep, y = 0, relative = true }), { repeating = true })

hl.bind(mainMod .. " + O", 
    hl.dsp.window.resize({ x = 0, y = resizeStep, relative = true }), { repeating = true })

hl.bind(mainMod .. " + I", 
    hl.dsp.window.resize({ x = 0, y = -resizeStep, relative = true }), { repeating = true })

-- Window state
hl.bind(mainMod .. " + V", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + SPACE", function()
    hl.dispatch(hl.dsp.window.float({ action = "toggle" }))
    hl.dispatch(hl.dsp.window.resize({ x = 800, y = 490, relative = false }))
    hl.dispatch(hl.dsp.window.center())
end)

hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Workspace navigation 
hl.bind(mainMod .. " + S", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + A", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + D", hl.dsp.focus({ workspace = "previous_per_monitor" }))



-- Move current workspace to a monitor
-- hl.bind(mainMod .. " + SHIFT + A", hl.dsp.window.move({ monitor = "l" }))
-- hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.move({ monitor = "r" }))
-- hl.bind(mainMod .. " + SHIFT + D", hl.dsp.window.move({ monitor = "u" }))
-- hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ monitor = "d" }))
-- Special workspace (scratchpad)

hl.bind(mainMod .. " + grave", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + grave", hl.dsp.window.move({ workspace = "special:magic" }))

-- open Rofi in emoji mode
hl.bind(mainMod .. " + PERIOD", hl.dsp.exec_cmd("rofi -show emoji"))

-- Scroll through existing workspaces with mainMod + scroll

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Screenshot an area and copy to clipboard
hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))

-- Screenshot the entire screen and copy to clipboard
hl.bind("SHIFT + Print", hl.dsp.exec_cmd('grim - | wl-copy'))
