#!/usr/bin/env bash

echo "[INFO] Starting Security Checker..."

# Voorbeeld: poortscan localhost
echo "[INFO] Running local port scan..."
nmap -p- 127.0.0.1 > /share/portscan.txt

# Voorbeeld: SSL-cert check (DuckDNS)
DOMAIN="jouwdomein.duckdns.org"
echo "[INFO] Checking SSL cert for $DOMAIN..."
echo | openssl s_client -connect "$DOMAIN:443" -servername "$DOMAIN" 2>/dev/null | openssl x509 -noout -dates > /share/ssl_info.txt

# Meer modules kunnen hierna worden toegevoegd

# Done
echo "[INFO] Security check completed. Results in /share/"
