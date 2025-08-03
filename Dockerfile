FROM nextcloud:latest

HEALTHCHECK --interval=2s --timeout=10s --retries=15 \
    CMD curl -f http://127.0.0.1:80