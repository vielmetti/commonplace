FROM klakegg/hugo:0.49-onbuild AS hugo
FROM nginx
COPY --from=hugo /onbuild /usr/share/nginx/html
