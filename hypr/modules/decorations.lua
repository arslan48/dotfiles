-- ██╗      ██████╗  ██████╗ ██╗  ██╗
-- ██║     ██╔═══██╗██╔═══██╗██║ ██╔╝
-- ██║     ██║   ██║██║   ██║█████╔╝
-- ██║     ██║   ██║██║   ██║██╔═██╗
-- ███████╗╚██████╔╝╚██████╔╝██║  ██╗
-- ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝

local colors = require('themes.catppuccin-mocha')

hl.config({
    general = {
        gaps_in  = 5.5,
        gaps_out = 10,

        border_size = 3,

        col = {

            active_border   = { colors = { colors.lavender }  },
            inactive_border = colors.surface0, 
        },

        resize_on_border = true,
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 10,
        rounding_power = 4,
        active_opacity   = 1.0,          
        inactive_opacity = 1.0,          
        shadow = {
            enabled      = true,
            range        = 25,
            render_power = 3,
            color        = "rgba(000000bb)",
            offset       =  "0 5" ,
            sharp        = false,
        },

        blur = {
            enabled   = true,
            size      = 10,
            passes    = 3,
            vibrancy  = 0.1696,
            new_optimizations = true,
            ignore_opacity    = true,              
            xray              = true,                    
        },
    },

    animations = {
        enabled = true,
    },
})


hl.curve("md_plus_bounce",    { type = "bezier", points = { {0.28, 1.20}, {0.55, 1.0} } })

hl.curve("smooth_steady",     { type = "bezier", points = { {0.25, 1.0},  {0.5, 1.0} } })
hl.curve("smooth_slide_out",  { type = "bezier", points = { {0.3, 0.0},   {0.1, 1.0} } })

hl.animation({ leaf = "global",           enabled = true,  speed = 6.5,  bezier = "smooth_steady" })

hl.animation({ leaf = "windows",          enabled = true,  speed = 6.0,  bezier = "md_plus_bounce", style = "popin 75%" })
hl.animation({ leaf = "windowsIn",        enabled = true,  speed = 6.0,  bezier = "smooth_steady",  style = "popin 75%" })
hl.animation({ leaf = "windowsOut",       enabled = true,  speed = 6.5,  bezier = "smooth_slide_out", style = "slide" })
hl.animation({ leaf = "windowsMove",      enabled = true,  speed = 5.5,  bezier = "md_plus_bounce" })

-- Fades & Layers
hl.animation({ leaf = "fadeIn",           enabled = true,  speed = 5.0,  bezier = "smooth_steady" })
hl.animation({ leaf = "fadeOut",          enabled = true,  speed = 4.0,  bezier = "smooth_slide_out" }) 
hl.animation({ leaf = "layers",           enabled = true,  speed = 5.5,  bezier = "smooth_steady",  style = "popin 85%" })

-- Workspaces
hl.animation({ leaf = "workspaces",       enabled = true,  speed = 6.5,  bezier = "md_plus_bounce",   style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true,  speed = 6.5,  bezier = "md_plus_bounce",   style = "slidevert" })

hl.animation({ leaf = "layersIn",         enabled = true,  speed = 5.0,  bezier = "smooth_steady",    style = "slide 25%" })
hl.animation({ leaf = "layersOut",        enabled = true,  speed = 5.0,  bezier = "smooth_slide_out", style = "slide 25%" })

