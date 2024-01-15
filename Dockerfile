FROM ubuntu:latest

RUN [ "apt", "update" ]
RUN [ "apt", "install", "-y", "qemu-system-x86" ]
RUN [ "apt", "install", "-y", "wget" ]

WORKDIR /real
RUN [ "wget", "https://templeos.org/Downloads/TempleOSLite.ISO" ]
ENTRYPOINT [ "qemu-system-x86_64", "-cdrom", "./TempleOSLite.ISO", "-nographic" ]