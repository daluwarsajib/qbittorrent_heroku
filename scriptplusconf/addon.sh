#!/bin/bash

mkdir --parents /qBittorrent/downloads/
curl "https://raw.githubusercontent.com/daluwarsajib/qbittorrent_heroku/main/scriptplusconf/about.html" > /var/www/html/about.html
curl "https://raw.githubusercontent.com/daluwarsajib/qbittorrent_heroku/main/scriptplusconf/index.html" >/var/www/html/index.html
