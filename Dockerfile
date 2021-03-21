FROM debian:10
ADD https://translators-connectors-releases.s3.amazonaws.com/mongomirror/binaries/linux/mongomirror-linux-x86_64-debian10-0.11.1.tgz mongomirror.tgz
WORKDIR /mongomirror
RUN tar xzf /mongomirror.tgz -C /mongomirror --strip-components=1
RUN apt-get update && apt-get install -y libssl-dev libsasl2-dev ca-certificates
CMD ["--help"]
ENTRYPOINT ["/mongomirror/bin/mongomirror"]
