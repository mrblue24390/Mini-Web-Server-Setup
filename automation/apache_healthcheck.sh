# Edit Apache configuration:
sudo nano /etc/apache2/apache2.conf

# Scroll and modify/add these:
  KeepAlive On
  MaxKeepAliveRequests 100
  KeepAliveTimeout 3

  #  Enable compression
  AddOutputFilterByType DEFLATE text/html text/plain text/xml text/css text/javascript application/javascript


# Then restart Apache:
sudo systemctl restart apache2
