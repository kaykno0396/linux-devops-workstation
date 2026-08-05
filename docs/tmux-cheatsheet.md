# tmux Cheatsheet

The default tmux prefix is retained:

```text
Ctrl+b

| Action                   | Command               |
| ------------------------ | --------------------- |
| Start a session          | `tmux`                |
| Start a named session    | `tmux new -s name`    |
| List sessions            | `tmux ls`             |
| Attach to latest session | `tmux attach`         |
| Attach to named session  | `tmux attach -t name` |
| Detach                   | `Ctrl+b d`            |

| Action                  | Binding      |
| ----------------------- | ------------ |
| Create window           | `Ctrl+b c`   |
| Next window             | `Ctrl+b n`   |
| Previous window         | `Ctrl+b p`   |
| Select window by number | `Ctrl+b 0-9` |
| Rename window           | `Ctrl+b ,`   |
| Close current window    | `exit`       |

| Action             | Binding                           |
| ------------------ | --------------------------------- |
| Vertical split     | `Ctrl+b %`                        |
| Horizontal split   | `Ctrl+b "`                        |
| Move between panes | `Ctrl+b` followed by an arrow key |
| Show pane numbers  | `Ctrl+b q`                        |
| Close current pane | `exit`                            |
| Toggle pane zoom   | `Ctrl+b z`                        |

| Action          | Binding                            |
| --------------- | ---------------------------------- |
| Enter copy mode | `Ctrl+b [`                         |
| Exit copy mode  | `q`                                |
| Scroll          | Arrow keys, Page Up or mouse wheel |

