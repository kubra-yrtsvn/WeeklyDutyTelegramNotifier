#!/bin/bash

# Güncel tarih
tarih=$(date +"%Y-%m-%d")

# PostgreSQL bağlantı komutu
gorevli=$(psql -U kubra -d postgres -t -c "SELECT name FROM mytable  WHERE date = '$tarih';")

# Eğer görevli bulunamadıysa
if [ -z "$gorevli" ]; then
  echo "Eşleşen görevli bulunamadı: $tarih"
  # Telegram mesajı gönderme komutu 
  curl -s -X POST https://api.telegram.org/bot7207999152:AAGiJRGHJDx6lbzuOQMK9Og6FLPeeUAcVPk/sendMessage -d chat_id=5969240980 -d text="Eşleşen görevli bulunamadı: $tarih"
else
  echo "Görevli: $gorevli"
  # Telegram mesajı gönderme komutu 
  curl -s -X POST https://api.telegram.org/bot7207999152:AAGiJRGHJDx6lbzuOQMK9Og6FLPeeUAcVPk/sendMessage -d chat_id=5969240980 -d text="Haftanın görevlisi: $gorevli"
fi

