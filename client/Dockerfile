FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends isc-dhcp-client dnsutils curl iproute2 iputils-ping \
&& rm -rf /var/lib/apt/lists/*
CMD ["sleep","infinity"]
