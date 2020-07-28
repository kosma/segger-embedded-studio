ARG VERSION=4.50

FROM vicarahq/segger-embedded-studio:$VERSION

RUN apt update && \
    apt install -qy python3-pip git wget && \
    pip3 install -U pip && \
    pip3 install intelhex nrfutil && \
    wget https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-10-x-x/10-9-0/nRFCommandLineTools1090Linuxamd64tar.gz && \
    tar -xf nRFCommandLineTools1090Linuxamd64tar.gz && \
    apt install -y ./nRF-Command-Line-Tools_10_9_0_Linux-amd64.deb &&\
    rm nRFCommandLineTools1090Linuxamd64tar.gz nRF-Command-Line-Tools_10_9_0.tar nRF-Command-Line-Tools_10_9_0_Linux-amd64.deb && \
    rm -rf /var/lib/apt/lists/*
