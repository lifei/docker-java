FROM lifei/baseimage

RUN curl -fSL /tmp/jre-8u51-linux-x64.tar.gz http://ftp.osuosl.org/pub/funtoo/distfiles/oracle-java/jre-8u51-linux-x64.tar.gz && \
    tar zxf /tmp/jre-8u51-linux-x64.tar.gz -C /usr/lib/jvm/ && \
    rm -f /tmp/jre-8u51-linux-x64.tar.gz
ENV JAVA_HOME /usr/lib/jvm/jre1.8.0_51
ENV PATH $JAVA_HOME/bin:$PATH
