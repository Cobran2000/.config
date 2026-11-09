#!/usr/bin/env python3

import os
import socket
import subprocess
import time


def socket_path() -> str:
    runtime_dir = os.environ.get("XDG_RUNTIME_DIR", "/run/user/%s" % os.getuid())
    instance = os.environ["HYPRLAND_INSTANCE_SIGNATURE"]
    return os.path.join(runtime_dir, "hypr", instance, ".socket2.sock")


def listen() -> None:
    path = socket_path()

    while True:
        try:
            with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as connection:
                connection.connect(path)
                buffer = b""

                while True:
                    chunk = connection.recv(4096)
                    if not chunk:
                        break

                    buffer += chunk
                    while b"\n" in buffer:
                        raw_event, buffer = buffer.split(b"\n", 1)
                        event = raw_event.decode("utf-8", errors="replace")

                        if event == "monitoradded>>DP-3":
                            time.sleep(1)
                            subprocess.run(
                                ["hyprctl", "reload"],
                                check=False,
                                stdout=subprocess.DEVNULL,
                                stderr=subprocess.DEVNULL,
                            )
        except (FileNotFoundError, KeyError, OSError):
            time.sleep(2)


if __name__ == "__main__":
    listen()
