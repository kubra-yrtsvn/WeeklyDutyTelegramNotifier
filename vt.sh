#!/bin/bash

# Güncel tarih
tarih=$(date +"%Y-%m-%d")

# PostgreSQL bağlantı komutu
gorevli=$(psql -U kubra -d postgres -t -c "SELECT name FROM mytable  WHERE date = '$tarih';")

# Eğer görevli bulunamadıysa
if [ -z "$gorevli" ]; then
  echo "Eşleşen görevli bulunamadı: $tarih"
  # Telegram mesajı gönderme komutu 
  curl -s -X POST https://api.telegram.org/bot<BOT_TOKEN>/sendMessage -d chat_id=<CHAT_ID> -d text="Eşleşen görevli bulunamadı: $tarih"
else
  echo "Görevli: $gorevli"
  # Telegram mesajı gönderme komutu 
  curl -s -X POST https://api.telegram.org/bot<BOT_TOKEN>/sendMessage -d chat_id=<CHAT_ID> -d text="Haftanın görevlisi: $gorevli"
fi

