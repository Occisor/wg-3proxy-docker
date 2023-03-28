# wg-3proxy-docker
A build for docker-compose, consisting of the builds of wireguard ([linuxserver/docker-wireguard](https://github.com/linuxserver/docker-wireguard)) and 3proxy ([3proxy/3proxy](https://github.com/3proxy/3proxy)), represented by separate images. Designed to connect to the wireguard server and then access this connection through a proxy.
Both own servers and vpn service providers are supported. Thanks to the 3proxy functionality, you can easily configure the access point to suit your needs: http, socks5, pop3 and other entry points, with or without a password.

## Setup
Enter the working directory `wg-3proxy-docker`

`cd /path/to/dir/wg-3proxy-docker`

Copy the WireGuard connection configuration file to the directory `./wg-3proxy-docker/wireguard/config/`. The file name should be `wg0.conf`.
This is enough for a basic startup.
Build containers with `docker-compose.yml` by running `docker-compose up` in the `wg-3proxy-docker` directory.

If there are no errors in the output, then the wireguard connection is successful. You can connect to a proxy server.

`Web-admin: http://localhost:8080`

`HTTP proxy: localhost:3129`

`SOCKS5: localhost:1080`
