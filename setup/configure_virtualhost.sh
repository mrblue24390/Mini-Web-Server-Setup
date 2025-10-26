#!/bin/bash
sudo cp ../config/mywebsite.conf /etc/apache2/sites-available/
sudo a2ensite mywebsite.conf
sudo a2dissite 000-default.conf
sudo systemctl reload apache2
