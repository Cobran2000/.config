--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/configuring/core/rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Steam setting float center screen 
hl.window_rule({
  name = "steam-float-settings",
  match = {
    class = "steam",
    title = "Steam Settings",
  },
  float = true,
  center = true,
  size = "40% 30%", --Width and height
})

-- Steam friend float center screen
hl.window_rule({
  name = "steam-float-friend",
  match = {
    class = "steam",
    title = "Friends List",
  },
  float = true,
  --center = true,
  size = "300 600", --Width and height
})

-- Steam app
hl.window_rule({
  name = "steam-main-tile",
  match = {
    class = "steam",
    title = "Steam",
  },
  float = false,
})

-- Steam games auto full screen
hl.window_rule({
  name = "steam-games-fullscreen",
  match = {
    class = "steam_app_\\d+",
  },
  workspace = "r+1", --put it on the next workspace
  fullscreen = true,
})
