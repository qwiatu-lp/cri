podman tag localhost/debian-mysql:latest quay.io/pie3ro/debian-mysql:latest
podman tag quay.io/pie3ro/debian-mysql:latest quay.io/pie3ro/debian-mysql:1.0.1-ocp
podman login quay.io
podman push quay.io/pie3ro/debian-mysql:1.0.1-ocp
