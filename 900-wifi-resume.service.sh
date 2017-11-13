#!/bin/sh

echo '[Unit]
Description=Restart networkmanager at resume
After=suspend.target
After=hibernate.target
After=hybrid-sleep.target

[Service]
Type=oneshot
ExecStart=wpa_cli resume
ExecStart=/bin/systemctl restart NetworkManager.service

[Install]
WantedBy=suspend.target
WantedBy=hibernate.target
WantedBy=hybrid-sleep.target' | tee /etc/systemd/system/wifi-resume.service
