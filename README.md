# Mini-Web-Server-Setup
Developed and configured an Apache web server on Ubuntu Linux to host a static website. Implemented virtual host configuration, UFW firewall rules, and optimized server performance. 


# Mini Web Server Setup on Linux

This project demonstrates the setup, configuration, and automation of a mini web server using Apache on Ubuntu Linux.

## Features
- Host a static website on Apache
- Virtual host configuration
- Automated log cleanup
- System resource monitoring
- Apache health check and auto-restart
- Firewall setup using UFW

## Tech Stack
Linux (Ubuntu) • Apache2 • Bash Scripting • Cron Jobs • UFW • Systemd

## How to Run
```bash
git clone https://github.com/<your-username>/mini-web-server-linux.git
cd mini-web-server-linux/setup
bash install_apache.sh
bash configure_virtualhost.sh
bash firewall_rules.sh
