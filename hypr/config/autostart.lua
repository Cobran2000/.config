-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/configuring/core/autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function ()

 	--shell of cachyOS only use until own shell is made
  	--hl.exec_cmd()
	hl.exec_cmd("hyprpm reload -n")
	hl.exec_cmd("python3 ~/.config/hypr/scripts/monitor-reload.py >/tmp/hypr-monitor-reload.log 2>&1 &")

--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
end)
