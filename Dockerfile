ARG VERSION=4.18

FROM vicarahq/segger-embedded-studio:$VERSION

RUN apt update && \
    apt install -qy python3-pip && \
    pip3 install intelhex nrfutil && \
    rm -rf /var/lib/apt/lists/*
