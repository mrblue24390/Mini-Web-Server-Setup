nano /usr/local/bin/log_cleaner.sh

# after this add below lines
#!/bin/bash
find /var/log/apache2/*.log -mtime +7 -exec rm {} \;


# make it executable
sudo chmod +x /usr/local/bin/log_cleaner.sh


# Schedule it with cron:
sudo crontab -e
# Add this line:
0 0 * * 0 /usr/local/bin/log_cleaner.sh
