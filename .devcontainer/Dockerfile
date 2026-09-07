FROM mcr.microsoft.com/devcontainers/jekyll:2.2-bookworm

# Remove the broken Yarn repository before running apt.
RUN rm -f /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends imagemagick \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
