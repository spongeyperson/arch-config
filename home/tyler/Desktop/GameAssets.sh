#!/bin/bash
rclone mount --allow-other --cache-dir "/mnt/Cache/VFS/Rclone/" --attr-timeout 8700h -vv --stats 10s --buffer-size 16M --vfs-cache-poll-interval 30s --poll-interval 60s --dir-cache-time 2h --async-read --vfs-cache-mode full --vfs-read-ahead 16M --vfs-read-chunk-size 16M --vfs-read-chunk-size-limit 1G --use-mmap --local-no-check-updated --onedrive-chunk-size=320000K --multi-thread-streams=4 --multi-thread-cutoff 250M --transfers 8 --fast-list --vfs-case-insensitive --vfs-cache-max-size 30G --no-checksum --no-modtime "OneDrivePlx-enc_GameAssets:" "/mnt/Game Assets/"
