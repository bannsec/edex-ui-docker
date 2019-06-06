FROM ubuntu:bionic

# Run with: sudo docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix edex

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y && apt install -y libx11-xcb-dev libgtk-3-0 libxss1 libgconf-2-4 libnss3 libasound2 net-tools mount vim htop npm git && \
    mkdir -p /opt && cd /opt && git clone https://github.com/GitSquared/edex-ui.git && cd edex-ui && \
    npm run install-linux && \
    useradd -m edex

WORKDIR /opt/edex-ui
USER edex

CMD npm start

