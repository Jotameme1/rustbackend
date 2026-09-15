# rustbackend

docker build -t rust-lab .

# Montás el proyecto entero; te deja en una shell dentro de /app/src
docker run --rm -it -v "$(pwd):/app" rust-lab

## docker run
podman run -d \
  --name rust-dev \
  --userns=keep-id \
  -v $(pwd)/src:/home/rust/proyecto:Z \
  -v rust-cargo-cache:/usr/local/cargo/registry \
  -w /home/rust/proyecto \
  rust:latest \
  sleep infinity


  podman pull docker.io/library/rust:latest


  ## Agregar un package
  agregar en cargo.toml