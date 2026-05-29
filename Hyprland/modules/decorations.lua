-----------------------
---- LOOK AND FEEL ----
-----------------------
local colors = require('themes.catppuccin-mocha')

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 4,
        gaps_out = 10,

        border_size = 3,

        col = {
            -- Uses the theme variables (Mauve and Sapphire) instead of hardcoded strings
            active_border   = { colors = { colors.lavender }  },
            inactive_border = colors.surface0, 
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 8,
        rounding_power = 4,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,           -- 100% visible for the window you are working on
        inactive_opacity = 1.0,          
        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            -- Combines Crust alpha variable with 66 hex opacity (~40%) using the rgba function
            color        = "rgba(" .. colors.crustAlpha .. "66)",
        },

        blur = {
            enabled   = true,
            size      = 10,
            passes    = 3,
            vibrancy  = 0.1696,
            new_optimizations = true,
            ignore_opacity    = true,              -- Makes blur work beautifully behind transparent apps
            xray              = true,              -- Boosts floating window performance

        },
    },



    animations = {
        enabled = true,
    },
})

-- 1. Curves: Medium-plus responsive bounce and smooth sliding curves
hl.curve("md_plus_bounce",    { type = "bezier", points = { {0.28, 1.38}, {0.55, 1.0} } })
hl.curve("silk_decel",        { type = "bezier", points = { {0.16, 1.0},  {0.3, 1.0} } })
-- NEW: Clean curve that accelerates smoothly into a slide-out transition
hl.curve("smooth_slide_out", { type = "bezier", points = { {0.3, 0.0},    {0.1, 1.0} } })

-- 2. Animations (Lowered speed values to make the animations slower and more fluid)
hl.animation({ leaf = "global",           enabled = true,  speed = 6.5,  bezier = "md_plus_bounce" })

-- Windows: Slower, graceful pop-in with a relaxed elastic settle
hl.animation({ leaf = "windows",          enabled = true,  speed = 6.0,  bezier = "md_plus_bounce", style = "popin 72%" })
hl.animation({ leaf = "windowsIn",        enabled = true,  speed = 6.0,  bezier = "md_plus_bounce", style = "popin 72%" })
-- SMOOTH SLIDE EXIT: Slides out linearly and gracefully with a dedicated curve
hl.animation({ leaf = "windowsOut",       enabled = true,  speed = 6.5,  bezier = "smooth_slide_out", style = "slide" })
hl.animation({ leaf = "windowsMove",      enabled = true,  speed = 5.5,  bezier = "md_plus_bounce" })

-- Fades & Layers: Relaxed transparency transitions matching the window close
hl.animation({ leaf = "fadeIn",           enabled = true,  speed = 5.0,  bezier = "silk_decel" })
hl.animation({ leaf = "fadeOut",          enabled = true,  speed = 5.5,  bezier = "silk_decel" })
hl.animation({ leaf = "layers",           enabled = true,  speed = 5.5,  bezier = "md_plus_bounce",   style = "popin 78%" })

-- Workspaces: Restored to your favorite classic sliding animations
hl.animation({ leaf = "workspaces",       enabled = true,  speed = 6.5,  bezier = "md_plus_bounce",   style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true,  speed = 6.5,  bezier = "md_plus_bounce",   style = "slidevert" })
