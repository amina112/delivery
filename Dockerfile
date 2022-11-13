From nginx:1.17.1-alpine
COPY ./dist/appcloud /usr/share/nginx/html
EXHIBIT 4201
CMD ["nginx", "-g", "deamon off;"]
