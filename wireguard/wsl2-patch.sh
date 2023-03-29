#!/bin/sh
#"Patch" the wg-quick file in the container 'wg-3p.wireguard_cli.1' to be able to run in WSL2. Do not apply if there is no error described in README.md.
#Run after containers start.
#After applying the patch, restart containers with 'docker-compose up' after stopping it (Ctrl+C).
mkdir ./patch-dir-tmp
docker cp wg-3p.wireguard_cli.1:/usr/bin/wg-quick ./patch-dir-tmp
sed -i 's/| cmd \$iptables-restore -n//g' ./patch-dir-tmp/wg-quick
docker cp ./patch-dir-tmp/wg-quick wg-3p.wireguard_cli.1:/usr/bin
rm -r ./patch-dir-tmp