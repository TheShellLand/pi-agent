#!/bin/bash
# This script wraps local-update.sh
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
"$DIR/local-update.sh" "$@"
