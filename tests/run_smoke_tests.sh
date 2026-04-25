#!/usr/bin/env bash
#
# Smoke-test the structural validator against the example recon outputs.
# Run from the repo root or from tests/. Exits non-zero if any check fails.

set -euo pipefail

# Resolve repo root regardless of where the script is invoked from
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "${script_dir}/.." && pwd)"
cd "${repo_root}"

failed=0

check() {
    local file="$1"
    shift
    if ! python3 tests/check_recon_structure.py "${file}" "$@"; then
        failed=1
    fi
}

check "examples/explore-example.md" --mode explore
check "examples/focus-example.md" --mode focus

if [[ $failed -eq 1 ]]; then
    echo
    echo "Smoke tests failed. The example files no longer match the structural contract."
    exit 1
fi

echo
echo "All smoke tests passed."
