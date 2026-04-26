#!/usr/bin/env bash

set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
temp="$(mktemp -d)"
skills=(docx pdf pptx skill-creator xlsx)

cleanup() {
	rm -rf "$temp"
}

trap cleanup EXIT

git clone --depth 1 git@github.com:anthropics/skills.git "$temp/skills"

mkdir -p "$root/.github/skills"

for skill in "${skills[@]}"; do
	rm -rf "$root/.github/skills/$skill"
	cp -r "$temp/skills/skills/$skill" "$root/.github/skills/"
done

rm -rf "$root/.trae"
ln -s "$root/.github" "$root/.trae"
