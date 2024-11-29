#!/bin/bash 

SERVICEPATH="/etc/systemd/system/generate-index.service"
TIMERPATH="/etc/systemd/system/generate-index.timer"

cat <<EOL > "$SERVICE
[Unit]
Description=Generate index.html file 

[Service]
User=webgen
Group=webgen
ExecStart=/var/lib/webgen/bin/generate_index

[Install]
WantedBy=multi-user.target
EOL

echo "Created service file."

cat <<EOL > "$TIMER
[Unit] 
Description=Run generate index file daily at 5:00am

[Timer]
OnCalendar=*-*-* 05:00:00
Unit=generate-index.service

[Install]
WantedBy=timers.target
EOL

echo "Created timer file" 

systemctl daemon-reload

systemctl enable generate-index.timer

systemctl start generate-index.timer

system status generate-index.timer 

