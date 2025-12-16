IMAGE_TAG="ghcr.io/tianocore/containers/fedora-40-dev:latest"

mkdir -p workdir

podman run --rm -it -v ./workdir:/workdir -w /workdir -v ./build.sh:/workdir/build.sh -v ./target.txt:/workdir/target.txt --entrypoint /bin/bash "$IMAGE_TAG" build.sh
