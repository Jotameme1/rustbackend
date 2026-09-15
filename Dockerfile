FROM rust:1-bookworm

# Cosas útiles para experimentar (saca lo que no uses)
RUN apt-get update && apt-get install -y --no-install-recommends \
        pkg-config libssl-dev git \
    && rm -rf /var/lib/apt/lists/*

# Componentes y utilidades de dev
RUN rustup component add clippy rustfmt \
    && cargo install cargo-watch

# El proyecto se monta en /app; src/ queda como workdir
WORKDIR /app/src

EXPOSE 8080

CMD ["bash"]