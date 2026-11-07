------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/configuring/core/monitors/
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})


-- settings for the screen of desktop
hl.monitor({
    output   = "DP-3",
    mode     = "1920x1080@144",
    position = "0x0",
    scale    = "1",
})
---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "be",
	numlock_by_default = true,
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",
	

        follow_mouse = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
		    natural_scroll = false,
		},
	    },
	})

	hl.gesture({
	    fingers = 3,
	    direction = "horizontal",
	    action = "workspace"
	})

	-- Example per-device config
	-- See https://wiki.hypr.land/configuring/core/devices/ for more
	hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})
