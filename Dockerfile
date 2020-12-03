FROM alpine
RUN apk add --no-cache ca-certificates curl
RUN curl -L -H "Cache-Control: no-cache" -o /config.json https://raw.githubusercontent.com/lytccc/kthp/master/config.json && \
    curl -L -H "Cache-Control: no-cache" -o /entrypoint.sh https://raw.githubusercontent.com/lytccc/kthp/master/entrypoint.sh
RUN chmod 755 /entrypoint.sh
CMD ["/entrypoint.sh"]
