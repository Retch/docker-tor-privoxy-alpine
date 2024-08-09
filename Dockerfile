FROM alpine:3.20

RUN addgroup -S nonroot && adduser -S nonroot -G nonroot

RUN apk --update add privoxy tor runit tini && rm -rf /var/cache/apk/*

COPY service /etc/service/

RUN chown -R nonroot:nonroot /etc/service

USER nonroot

EXPOSE 8118 9050

ENTRYPOINT ["tini", "--"]
CMD ["runsvdir", "/etc/service"]
