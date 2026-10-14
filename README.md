# CSNE 2026 Docker Network Lab

DNS (BIND9), DHCP and Squid proxy services running as Docker containers on an AWS EC2 (Ubuntu) instance, built with Docker Compose.

## Repo structure
    docker-compose.yml
    dns/     Dockerfile, named.conf, db.csne2026.test
    dhcp/    Dockerfile, dhcpd.conf
    squid/   Dockerfile, squid.conf
    client/  Dockerfile for the test client

## Services
| Service | Image | IP |
|---|---|---|
| DNS | chethiya02/csne-dns:2026 | 192.168.26.10 |
| DHCP | chethiya02/csne-dhcp:2026 | 192.168.26.5 |
| Squid | chethiya02/csne-squid:2026 | 192.168.26.20 |

Network: `labnet` (bridge), subnet 192.168.26.0/24. Squid is limited to 1 CPU and 512 MB RAM.

## Run
    docker compose up -d
    docker compose ps

## Test
    dig @192.168.26.10 proxy.csne2026.test +short
    curl -I -x http://192.168.26.20:3128 http://example.com
