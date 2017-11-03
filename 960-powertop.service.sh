#!/bin/sh

echo '[Unit]
Description=Powertop tunings

[Service]
ExecStart=/usr/bin/powertop --auto-tune
RemainAfterExit=true

[Install]
WantedBy=multi-user.target
' | tee /etc/systemd/system/powertop.service
