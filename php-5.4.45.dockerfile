FROM php:5.4.45
MAINTAINER Jean-Marc Lagace <jmlagace@maysys.com>

RUN   apt-get update && apt-get install -y git-core \
  &&  rm -rf /var/lib/apt/lists/* \
  && curl -L https://github.com/jmlagace/dev-tools/archive/v1.0.2.tar.gz | tar -xz -C /tmp \
  && mv /tmp/dev-tools-1.0.2/* /usr/local/bin/ \
  && rm -rf mv /tmp/dev-tools-1.0.2 \
  && chmod +x /usr/local/bin/*
  