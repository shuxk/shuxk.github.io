#!/bin/bash
set -euo pipefail

echo "Entry point script running"

CONFIG_FILE=_config.yml
DOCKER_DESTINATION=/tmp/_site

ensure_bundle_deps() {
    if bundle check >/dev/null 2>&1; then
        echo "Bundler dependencies already satisfied"
        return
    fi

    echo "Installing missing bundler dependencies"
    bundle install --jobs 4 --retry 3
}

ensure_bundle_deps
mkdir -p "$DOCKER_DESTINATION"

exec bundle exec jekyll serve \
    --watch \
    --port=8080 \
    --host=0.0.0.0 \
    --livereload \
    --verbose \
    --trace \
    --force_polling \
    --destination "$DOCKER_DESTINATION" \
    --config "$CONFIG_FILE"
