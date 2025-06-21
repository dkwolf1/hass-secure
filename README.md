# hass-secure
Home assistant security suite


A powerful security auditing add-on for Home Assistant OS with a graphical interface.

This add-on scans your Home Assistant server and ecosystem for security vulnerabilities and best practices. It provides a clear dashboard showing which areas are secure, misconfigured, or exposed.

🔍 Features
🔓 Open port scanner (detects exposed or unknown ports)
🔐 SSL certificate check (expiration & HTTPS detection)
🌐 DuckDNS domain reachability and IP match
☁️ Cloudflare DNS record & proxy status (via optional API token)
📡 Mosquitto MQTT broker security validation (TLS & anonymous access)
🧩 Home Assistant config security parser (configuration.yaml)
🖥️ SSH terminal add-on check (auth & exposure)
🌐 Web-based interface with multilingual support (🇬🇧 English / 🇳🇱 Dutch)
Use the language selector at the top of the dashboard to switch translations
📝 Per-module logs + downloadable full report

## Build Process

The add-on's Dockerfile now uses the lightweight `python:3.11-alpine` image.
Python and `pip` are included, so only `bash` needs to be installed. Building
is as simple as running the command:

docker build -t hass-secure .
docker run -p 8080:8080 hass-secure

The container exposes port `8080`. Once running, open
`http://localhost:8080` in your browser to reach the web UI.
