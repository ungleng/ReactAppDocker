FROM node:14.19.0 as build 

WORKDIR /app

COPY package*.json .
COPY . .


ENV REACT_APP_APP_NAME="Build from Docker v2"

RUN npm install
RUN npm run build


FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
COPY --from=build /app/nginx/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]