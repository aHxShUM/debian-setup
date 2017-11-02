#!/bin/sh

# fs watcher
echo 'fs.inotify.max_user_watches = 524288' | tee /etc/sysctl.d/50-fs.inotify.conf
