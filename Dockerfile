FROM alpine:latest

RUN apk --update add openvpn

VOLUME [ "/etc/openvpn/client" ]

ENTRYPOINT [ "openvpn", "--config", "/etc/openvpn/client/config" ]