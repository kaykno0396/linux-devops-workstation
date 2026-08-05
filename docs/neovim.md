# Neovim Workstation Configuration

## Purpose

Neovim will serve as the terminal-first editor for:

- Linux administration
- Bash
- Python
- YAML
- JSON
- Markdown
- Docker and Docker Compose
- Ansible
- Terraform or OpenTofu
- Kubernetes manifests

VS Code remains available for larger projects, graphical debugging and
extension-heavy workflows.

## Design Approach

The configuration will be built incrementally so every feature can be
understood, tested and committed independently.

The configuration will use Lua and will be divided into focused modules rather
than maintained as one large `init.lua`.

## Planned Components

- Core options and key mappings
- `lazy.nvim` plugin management
- Telescope fuzzy finding
- Treesitter parsing
- Native Neovim LSP
- Autocompletion
- Formatting and diagnostics
- Git integration
- DevOps-oriented language support

## Configuration Location

The repository copy will be stored at:

```text
configs/nvim/
