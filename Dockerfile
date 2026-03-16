FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
# We proxy /api/* to backend via ALB rules or have frontend call backend via internal DNS
EXPOSE 80
CMD ["nginx","-g","daemon off;"]

