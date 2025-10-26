#!/usr/bin/env bash
set -e

echo "==> Creating Hugo cache directory"
mkdir -p "$(pwd)/.hugo_cache"
chmod -R 777 "$(pwd)/.hugo_cache"

echo "==> Installing Hugo Extended v0.158.0"
wget -q https://github.com/gohugoio/hugo/releases/download/v0.158.0/hugo_extended_0.158.0_Linux-64bit.deb
sudo dpkg -i hugo_extended_0.158.0_Linux-64bit.deb
rm hugo_extended_0.158.0_Linux-64bit.deb

echo "==> Installing Node.js & TailwindCSS"
sudo apt update
sudo apt install -y nodejs npm
npm install -g tailwindcss@3.3.3

echo "==> Creating minimal config.toml if missing"
if [ ! -f config.toml ]; then
  cat <<EOF > config.toml
baseURL = "http://example.org/"
languageCode = "en-us"
title = "My Hugo Site"
theme = ""
EOF
fi

echo "==> Pinning HugoBlox modules"
if ! grep -q 'github.com/HugoBlox/hugo-blox-builder' config.toml; then
cat <<EOF >> config.toml

[module]
  [[module.imports]]
    path = "github.com/HugoBlox/hugo-blox-builder"
    version = "v4.8.0"

  [[module.imports]]
    path = "github.com/HugoBlox/hugo-blox-builder/modules/blox-tailwind"
    version = "v0.9.0"
EOF
fi

echo "==> Cleaning Hugo modules & cache"
hugo --cacheDir "$(pwd)/.hugo_cache" mod clean
hugo mod tidy

echo "==> Installing modules"
hugo --cacheDir "$(pwd)/.hugo_cache" mod get

echo "==> Building site"
hugo --cacheDir "$(pwd)/.hugo_cache"

echo "==> Setup complete! Your site is built and ready."
