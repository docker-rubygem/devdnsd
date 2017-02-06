FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=4.0.0

RUN gem install devdnsd --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["devdnsd"]
CMD ["--help"]
