# Developer: TriuHv <ms@ngacareer.com>
#
# GitHub:   https://github.com/ngacareer
# Twitter:  https://twitter.com/ngacareer
# Docker:   https://hub.docker.com/ngacareer
# Facebook: https://facebook.com/ngacareer 
# Linkedin: https://www.linkedin.com/in/ngacareer/
# website:  https://ngacareer.com

FROM ngacareer/alpine-curl

#Update Jan,2021. Support jdk7, jdk8, jdk9, jdk10 and jdk11

ENV JAVA_VERSION 11

RUN apk --update --no-cache add openssl
RUN apk --no-cache add openjdk$JAVA_VERSION --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

RUN  rm -r /var/cache/apk \
    && rm -r /usr/share/man

ENV JAVA_HOME=/usr/lib/jvm/java-1.$JAVA_VERSION-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"

ENTRYPOINT ["/sbin/tini", "--", "entrypoint.sh"]
