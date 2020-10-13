FROM alpine
RUN apk add --no-cache ca-certificates curl
RUN curl -L -H "Cache-Control: no-cache" -o /tmp/v.zip https://github.com/lytccc/kthp/releases/download/1/v.zip && \
    unzip /tmp/v.zip -d /usr/bin && \
    rm -rf /tmp/v.zip
ADD config.json /config.json
CMD ["v", "-config=/config.json"]
