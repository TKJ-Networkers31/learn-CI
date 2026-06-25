FROM nginx

COPY index.html /usr/share/nginx/html

RUN apt update && apt install curl && rm -rf /var/lib/apt/lists/*

EXPOSE 80

HEALTHCHECK --timeout=20s --interval=30s --retries=3 CMD curl -f http://localhost:80 || exit 1 
