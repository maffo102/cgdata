#!/bin/bash
date
cd /home/pi/repos/cgdata 
#sleep $((RANDOM % 1800))
curl -m 60 'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=false' -A "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36" -o first.json 2>&1
#sleep $((RANDOM % 900))
curl -m 60 'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=2&sparkline=false' -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -o second.json 2>&1
git add * 2>&1
git commit -m "Updated lists" 2>&1
git push 2>&1
echo "-------------------------------------"
