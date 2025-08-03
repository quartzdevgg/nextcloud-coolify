FROM nextcloud:latest

HEALTHCHECK --interval=15s --timeout=10s --retries=8 --start-period=10s \
    CMD curl -f http://127.0.0.1:80