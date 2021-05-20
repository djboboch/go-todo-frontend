FROM node:14.15.4-alpine as build-stage

WORKDIR /app

COPY . .

ENV VITE_BACKEND_URL=$BACKEND_URL

RUN npm install 

RUN npm run build

FROM nginx:stable-alpine as production-stage

COPY --from=build-stage /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

