#!/usr/bin/env bash
set -euo pipefail

required=(
  CODE_OF_CONDUCT.md
  CONTRIBUTING.md
  LICENSE
  README.md
  SECURITY.md
  SUPPORT.md
  profile/README.md
  profile/assets/opero-banner.png
)

for path in "${required[@]}"; do
  [[ -s $path ]] || {
    echo "required file is missing or empty: $path" >&2
    exit 1
  }
done

if grep -RInE \
  --exclude-dir=.git \
  --exclude=validate.sh \
  '(/Users/[^/$]+/|/home/[^/$]+/|BEGIN (RSA |EC |OPENSSH )?PRIVATE KEY|gh[pousr]_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{50,}|Co-Authored-By:|Generated with (Claude|Codex))' \
  .; then
  echo "prohibited credential, path or attribution detected" >&2
  exit 1
fi

git diff --check
