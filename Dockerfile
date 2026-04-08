FROM alpine:3

ENV JAVA_HOME=/opt/openjdk
ENV PATH="$JAVA_HOME/bin:$PATH"

RUN mkdir -p $JAVA_HOME \
  && wget -q -O /tmp/java.tar.gz https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.2%2B10/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.2_10.tar.gz \
  && tar --extract --file /tmp/java.tar.gz --directory $JAVA_HOME --strip-components 1 --no-same-owner \
  && rm -rf /tmp/*