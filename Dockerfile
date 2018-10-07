FROM klakegg/hugo:0.49-onbuild AS hugo
FROM nginx:1.15-alpine
COPY --from=hugo /onbuild /usr/share/nginx/html
