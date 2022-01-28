FROM perl:latest
LABEL maintainer="Joerg Meltzer <joerg.meltzer@tngtech.com>" \
      p.version="0.0400"

ENV TZ Europe/Berlin

RUN apt-get update && apt-get install -y libyaml-dev libxml2-dev

RUN cpanm -v YAML::XS Text::CSV_XS File::Slurper List::AllUtils Data::Dump L JSON Types::Serialiser XML::Hash::LX XML::Simple Hash::Flatten Data::DPath https://github.com/code-acrobat/App-p/releases/download/0.0400/App-p-0.0400.tar.gz
