# Pull base image.
FROM spy86/ubuntu:latest

# Install Dart.
RUN \
  mkdir -p /tmp/dart && \
  cd /tmp/dart && \
  curl -O https://storage.googleapis.com/dart-archive/channels/stable/release/2.16.2/linux_packages/dart_2.16.2-1_amd64.deb && \
  dpkg -i dart_2.16.2-1_amd64.deb && \
  rm -fr /tmp/dart

# Set environment variables.
ENV PATH /usr/lib/dart/bin:$PATH

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
