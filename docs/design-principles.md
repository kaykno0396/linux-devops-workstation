# Workstation Design Principles

## Learn Standard Behaviour First

Default commands and key bindings should be retained where practical so that
skills remain transferable to standard Linux and production environments.

Examples include:

- Standard tmux prefix: `Ctrl+b`
- Standard tmux split bindings: `%` and `"`
- Standard Git command-line workflow
- Standard OpenSSH tooling

## Configure for Productivity

Customisation should solve a practical problem rather than exist only for
novelty or appearance.

Useful examples include:

- Larger terminal and tmux scrollback
- Mouse support in tmux
- Predictable i3 workspace assignments
- Shell history, completion and aliases
- Clear Git and infrastructure context in the prompt

## Keep Configuration Understandable

Avoid large frameworks and prebuilt configurations that obscure how tools work.

Current examples:

- Zsh without Oh My Zsh
- Neovim built incrementally rather than using a preconfigured distribution
- Small, documented tmux configuration
- Explicit i3 configuration

## Version-Control Configuration

Configuration files should be stored in this repository and linked to their
normal system locations using symbolic links.

Changes follow this workflow:

1. Edit
2. Test
3. Review with Git
4. Commit one logical change
5. Push to GitHub

## Optimise for Remote Use

The Fedora workstation is primarily accessed using xRDP from Windows 11 and
Remmina from CachyOS.

Configuration should therefore favour:

- Reliable X11-native tools
- Low graphical overhead
- Keyboard navigation
- Opaque backgrounds
- Minimal reliance on desktop portals and compositing effects
