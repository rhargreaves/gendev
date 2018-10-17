FROM ubuntu:14.04
WORKDIR /tmp
RUN apt-get update && \
	apt-get install -y \
	build-essential wget unzip \
	unrar-free texinfo git && \
	apt-get clean
RUN mkdir gendev
COPY . gendev/
RUN bash -c "cd gendev && make && rm -rf /tmp/*"
CMD /bin/bash
