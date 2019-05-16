FROM alpine:latest
RUN addgroup -S greetergroup && adduser -S greeter -G greetergroup
COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh
USER greeter
ENTRYPOINT ["/entrypoint.sh"]
CMD ["Bonjour"]