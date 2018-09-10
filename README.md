# docker-openvpn-client

Docker image for OpenVPN client. Make sure to do next three things when initializing container:
- map your config to `/etc/openvpn/client/config`
- add `NET_ADMIN` capability
- add `/dev/net/tun` device

To connect other containers to the VPN, specify their network as `container:nameofyouropenvpnclientcontainer` (where you of course replace `nameofyouropenvpnclientcontainer` with the name of your OpenVPN client container).