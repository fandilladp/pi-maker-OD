FROM multiarch/alpine:x86_64-v3.14


RUN apk update && apk upgrade
RUN apk add \
bash \
coreutils \
dosfstools \
e2fsprogs \
file \
libcap \
parted \
pv \
qemu \
shadow \
udev \
util-linux \
wget \
zip

COPY bin/* /usr/local/bin/

ENTRYPOINT "/usr/local/bin/entrypoint"
