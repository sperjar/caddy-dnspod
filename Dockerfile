FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/dnspod

FROM caddy

COPY --from=builder /usr/bin/caddy /usr/bin/caddy