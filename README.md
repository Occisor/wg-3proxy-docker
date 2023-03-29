# Wireguard + 3proxy docker duet
A build for docker-compose, consisting of the builds of wireguard ([linuxserver/docker-wireguard](https://github.com/linuxserver/docker-wireguard)) and 3proxy ([3proxy/3proxy](https://github.com/3proxy/3proxy)), represented by separate images. Designed to connect to the wireguard server and then access this connection through a proxy.
Both own servers and vpn service providers are supported. Thanks to the 3proxy functionality, you can easily configure the access point to suit your needs: http, socks5, pop3 and other entry points, with or without a password.

## Setup
Enter the working directory `wg-3proxy-docker`

```
cd /path/to/dir/wg-3proxy-docker
```

Copy the WireGuard connection configuration file to the directory `./wg-3proxy-docker/wireguard/config/`. The file name should be `wg0.conf`.
This is enough for a basic startup.
Build containers with `docker-compose.yml` by running `docker-compose up` in the `wg-3proxy-docker` directory.
```
docker-compose up
```
If there are no errors in the output, then the wireguard connection is successful. You can connect to a proxy server.

`Web-admin: http://localhost:8080`

`HTTP proxy: localhost:3129`

`SOCKS5: localhost:1080`

## WSL2 "patch"

Error may occur when running in wsl2

`wg-3p.wireguard_cli.1 | Warning: Extension CONNMARK revision 0 not supported, missing kernel module?
wg-3p.wireguard_cli.1 | iptables-restore: line 7 failed`

Without stopping the container go to the directory `wg-3proxy-docker/wireguard`

And run `wsl2-patch.sh`

```
sh wsl2-patch.sh
```

This will make changes to the `wg-quick` file in the container `wg-3p.wireguard_cli.1`.
Then restart docker-compose `docker-compose restart` or `docker-compose stop` -> `docker-compose up`
