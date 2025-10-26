# Create the script:
sudo nano /usr/local/bin/system_monitor.sh

# paste below code 
#!/bin/bash
# System Monitor Script

LOGFILE="/var/log/system_monitor.log"
{
  echo "=============================="
  echo "System Report: $(date)"
  echo "------------------------------"
  echo "CPU Usage:"
  top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4"% used"}'
  echo
  echo "Memory Usage:"
  free -h | awk '/Mem/{print $3 "/" $2}'
  echo
  echo "Disk Usage:"
  df -h / | awk 'NR==2 {print $5 " used on " $1}'
  echo
  echo "Running Apache Processes:"
  ps aux | grep apache2 | grep -v grep | wc -l
  echo
} >> "$LOGFILE"


# Make it executable:
sudo chmod +x /usr/local/bin/system_monitor.sh

# Schedule with cron:
sudo crontab -e

#Add this line:
0 * * * * /usr/local/bin/system_monitor.sh


## This runs the script every hour, saving system stats into /var/log/system_monitor.log.

