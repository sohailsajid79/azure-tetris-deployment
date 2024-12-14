# Stage 1: build application
FROM node:18.16.0-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Stage 2: production - serve application with NGINX
FROM nginx:1.25.1-alpine
COPY --from=builder /app/dist /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 CMD curl -f http://localhost || exit 1
CMD ["nginx", "-g", "daemon off;"]
