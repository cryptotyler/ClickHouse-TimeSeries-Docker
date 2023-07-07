#!/bin/bash

# ClickHouse servisinin tamamen başlamasını bekleyin
while ! nc -z clickhouse 9000; do
  sleep 1
done

# Komutunuzun çalıştırılmasını sağlayın
cat /opt/init.sql | clickhouse-client -m -n

# ClickHouse servisini çalıştırın
clickhouse-server