FROM docker.repository.cloudera.com/cdsw/engine:2
RUN echo "cdsw    ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN wget https://downloads.sourceforge.net/project/ta-lib/ta-lib/0.4.0/ta-lib-0.4.0-src.tar.gz
RUN tar -zxvf ta-lib-0.4.0-src.tar.gz

RUN cd ta-lib && \
    ./configure --prefix=/usr && \
        make && \
           make install
