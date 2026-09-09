# Changelog

## 1.0.0

- Initial personal version, trimmed from the original `.eiskaffee` base.
- Kept only the `os/` bootstrap: Homebrew, pnpm/Node, Docker via Colima,
  VS Code extensions, Oh My Zsh theme/plugins, and Ghostty config.
- Removed the legacy bash-profile layer (`lib/`, `tools/`, `eiskaffee.sh`,
  `templates/`) and the Flutter/FVM module.
- Added a `50-docker.sh` module to start the Colima VM.
