#!/usr/bin/env bash
# 50-docker.sh — starts the Colima VM so the `docker` CLI has a daemon to talk
# to. Colima replaces Docker Desktop (no license, no GUI). The `colima`,
# `docker` and `docker-compose` formulas are installed by the Brewfile.
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/lib.sh"
load_brew

if ! has colima; then
  if [[ "${DRY_RUN}" == "1" ]]; then
    log_warn "Colima not installed yet — in dry-run, only simulating the start."
  else
    log_error "Colima not found. Run the 20-brew-bundle.sh module first."
    exit 1
  fi
fi

# Colima is macOS/Linux only via Homebrew; nothing to do elsewhere.
if is_macos || is_linux; then
  if colima status >/dev/null 2>&1; then
    log_ok "Colima is already running."
  else
    log_info "Starting Colima VM..."
    run colima start
    log_ok "Colima started (docker CLI is ready)."
  fi
else
  log_warn "Colima is only supported on macOS/Linux — skipping."
fi
