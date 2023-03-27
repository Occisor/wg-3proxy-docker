# wg-3proxy-docker
A build for docker-compose, consisting of the official builds of wireguard and 3proxy, represented by separate images. Designed to connect to the wireguard server and then access this connection through a proxy.
Both own servers and vpn service providers are supported. Thanks to the 3proxy functionality, you can easily configure the access point to suit your needs: http, socks5, pop3 and other entry points, with or without a password.
