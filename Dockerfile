FROM eiel/gentoo
MAINTAINER Tomohiko Himura <eiel.hal@gmail.com>

WORKDIR /usr
ADD install-portage.sh .
RUN sh /install-portage.sh
ADD make.conf /etc/portage/make.conf
RUN emerge eix
RUN eix-update
CMD bash
