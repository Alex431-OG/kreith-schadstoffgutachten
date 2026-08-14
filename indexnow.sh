#!/bin/bash
# IndexNow Ping - benachrichtigt Bing/Yandex/Seznam/Naver über Updates
# Aufrufen nach jedem Deploy: ./indexnow.sh
KEY="c5fe25996d0f40f989b29d6ad4953fc4"
HOST="kreith-schadstoffgutachten.de"
URLS=(
  "https://$HOST/"
  "https://$HOST/impressum.html"
  "https://$HOST/datenschutz.html"
)
JSON='{"host":"'$HOST'","key":"'$KEY'","keyLocation":"https://'$HOST'/'$KEY'.txt","urlList":['
for i in "${!URLS[@]}"; do
  JSON+='"'${URLS[$i]}'"'
  [ $i -lt $((${#URLS[@]} - 1)) ] && JSON+=','
done
JSON+=']}'
curl -X POST https://api.indexnow.org/indexnow \
  -H "Content-Type: application/json" \
  -d "$JSON"
echo " (Erledigt — Suchmaschinen wurden benachrichtigt)"
