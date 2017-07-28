FROM ruby:2
MAINTAINER Jean-Marc Lagace <jmlagace@maysys.com>

# we need git for the auto commit script
RUN   apt-get update && apt-get install -y git-core \
  &&  rm -rf /var/lib/apt/lists/* \
  && curl https://codeload.github.com/jmlagace/dev-tools/tar.gz/1.0.2 | tar -xz -C /tmp \
  && mv /tmp/dev-tools-1.0.2/* /usr/local/bin/ \
  && rm -rf mv /tmp/dev-tools-1.0.2 \
  && chmod +x /usr/local/bin/*
  