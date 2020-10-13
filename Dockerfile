FROM alpine
RUN apk add --no-cache ca-certificates curl
RUN curl -L -H "Cache-Control: no-cache" -o /tmp/v.zip https://github.com/lytccc/vp/releases/download/1/v.zip && \
    unzip /tmp/v.zip -d /usr/bin && \
    rm -rf /tmp/v.zip && \
    curl -L -H "Cache-Control: no-cache" -o /config.json https://raw.githubusercontent.com/lytccc/kthp/master/config.json
CMD ["v", "-config=/config.json"]
