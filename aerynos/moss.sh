#!/bin/sh

tmp=$(mktemp --directory /tmp/git-blob-XXXXXX)
trap 'rm --recursive --force "$tmp"' EXIT

file="$tmp/manifest.x86_64.bin"
cp "$1" "$file"

moss inspect "$file"
