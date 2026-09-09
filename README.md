# .eiskaffee — Personal macOS Dev Environment

My personal, idempotent bootstrap for setting up a macOS development machine from
scratch: Homebrew packages, pnpm/Node.js, Docker via Colima, VS Code extensions,
Zsh (Oh My Zsh) theme/plugins, and Ghostty terminal config.

> ℹ️ This started as a fork/base of another developer's dotfiles and was trimmed
> down to only the tools I actually use.

## 🚀 Quick start

```sh
git clone https://github.com/JuniorCapelli/macos-setup.git ~/.eiskaffee
cd ~/.eiskaffee
bash os/scripts/bootstrap.sh
```

Simulate everything first (no changes made):

```sh
bash os/scripts/bootstrap.sh --dry-run
```

## 📦 What it installs

- **Homebrew** + a curated `Brewfile` (git, gh, colima, docker, docker-compose,
  kubernetes-cli, neovim, marp-cli, mkcert, direnv, tree, and more).
- **pnpm** (standalone) + **Node.js** managed by `pnpm env`.
- **Docker** via **Colima** (no Docker Desktop).
- **VS Code** extensions (opt-in — Settings Sync usually handles these).
- **Oh My Zsh** with the eiskaffee theme + plugins.
- **Ghostty** terminal with a versioned config.

## 📖 Full documentation

The complete step-by-step guide, module breakdown, dry-run usage, corporate
certificate setup, and secrets handling live in [`os/README.md`](./os/README.md)
and [`os/docs/`](./os/docs/).

## 🗂️ Layout

```
os/
├── brew/Brewfile          # source of truth for Homebrew packages
├── dotfiles/ghostty/      # Ghostty terminal config
├── docs/                  # certificates, secrets, zsh/terminal notes
├── scripts/               # numbered, idempotent bootstrap modules
└── vscode/extensions.txt  # VS Code extensions list
```

## 📄 License

MIT
