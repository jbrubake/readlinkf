FROM debian:8
ENV DEBCONF_NOWARNINGS yes
RUN apt-get update \
 && apt-get install -y tree bash busybox dash ksh mksh posh yash zsh
RUN ln -s /bin/busybox /usr/local/bin/ash
COPY ./ /
