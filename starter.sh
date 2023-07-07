#!/bin/bash

# RabbitMQ servisini başlat
docker-compose up rabbitmq -d
echo "RabbitMQ servisi başlatılıyor..."

# 5 saniye bekle
sleep 5

# Diğer servisleri başlat
docker-compose up -d
echo "Diğer servisler başlatılıyor..."