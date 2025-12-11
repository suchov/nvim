# The Lua config for Neovim

Based on [The Pirmagen](https://www.youtube.com/watch?v=w7i4amO_zaE)
And on [config](https://github.com/ThePrimeagen/init.lua/tree/master)

Great — here is a **clean, polished, drop-in cheatsheet** for your Neovim config.

I formatted it so you can:

* paste it into your `README.md`
* or `:help mykeys` if you want a custom help file
* or print it as a quick-reference sheet

---

# 🔵 **Leader Key = SPACE**

Throughout this cheatsheet:

```
<leader> = Space
```

---

# 📁 File Navigation & Editing

| Keys            | Action                                    |
| --------------- | ----------------------------------------- |
| **Space p v**   | Open file explorer (`:Ex` / netrw)        |
| **Space Space** | Reload Neovim config (`:source`)          |
| **Space x**     | Make current file executable (`chmod +x`) |

---

# 📋 Clipboard / Yank / Delete

| Keys                      | Action                                                         |
| ------------------------- | -------------------------------------------------------------- |
| **Space y**               | Yank to system clipboard                                       |
| **Space Y**               | Yank entire line to system clipboard                           |
| **Space d**               | Delete to *black-hole* register (does not overwrite clipboard) |
| **Space p** (visual mode) | Paste without overwriting clipboard (`"_dP`)                   |

---

# 🔧 LSP Actions

| Keys        | Action                  |
| ----------- | ----------------------- |
| **Space f** | Format buffer using LSP |

---

# 🔍 Search & Jump Enhancements

| Keys                | Action                                    |
| ------------------- | ----------------------------------------- |
| **n** / **N**       | Move to search result *and center screen* |
| **Ctrl-d**          | Half-page down *and center screen*        |
| **Ctrl-u**          | Half-page up *and center screen*          |
| **J** (normal mode) | Join lines *without moving cursor*        |

---

# 🧩 Visual Mode Quality of Life

| Keys           | Action                     |
| -------------- | -------------------------- |
| **J** (visual) | Move selected block *down* |
| **K** (visual) | Move selected block *up*   |

---

# 🧰 Quickfix Navigation

| Keys        | Action                             |
| ----------- | ---------------------------------- |
| **Ctrl-k**  | Next quickfix entry (centered)     |
| **Ctrl-j**  | Previous quickfix entry (centered) |
| **Space k** | Next quickfix entry                |
| **Space j** | Previous quickfix entry            |

---

# 🖥️ TMUX Integration

| Keys       | Action                                       |
| ---------- | -------------------------------------------- |
| **Ctrl-f** | Open new tmux window with `tmux-sessionizer` |

---

# 🎯 Misc QoL

| Keys                     | Action                                 |
| ------------------------ | -------------------------------------- |
| **Ctrl-c** (insert mode) | Behave like Escape                     |
| **Q**                    | Disabled (prevents accidental Ex mode) |

---

# ✔️ Ready-to-Paste Markdown Version

If you want this in your GitHub README:

```md
# Neovim Keymap Cheatsheet (Leader = Space)

## File Navigation & Config
| Keys | Action |
|------|--------|
| `Space p v` | Open file explorer (`:Ex`) |
| `Space Space` | Reload config |
| `Space x` | Make file executable |

## Clipboard / Yank / Delete
| Keys | Action |
|------|--------|
| `Space y` | Yank to clipboard |
| `Space Y` | Yank line to clipboard |
| `Space d` | Delete without affecting clipboard |
| `Space p` (visual) | Paste without overwriting clipboard |

## LSP
| Keys | Action |
|------|--------|
| `Space f` | LSP format |

## Search / Motion Enhancements
| Keys | Action |
|------|--------|
| `n` / `N` | Next/prev search result (centered) |
| `Ctrl-d` | Half-page down (centered) |
| `Ctrl-u` | Half-page up (centered) |
| `J` | Join lines (cursor stays in place) |

## Visual Mode Movement
| Keys | Action |
|------|--------|
| `J` | Move selection down |
| `K` | Move selection up |

## Quickfix Navigation
| Keys | Action |
|------|--------|
| `Ctrl-k` | Next quickfix |
| `Ctrl-j` | Prev quickfix |
| `Space k` | Next quickfix |
| `Space j` | Prev quickfix |

## TMUX Integration
| Keys | Action |
|------|--------|
| `Ctrl-f` | Open tmux-sessionizer |

## Misc
| Keys | Action |
|------|--------|
| `Ctrl-c` | Escape in insert mode |
| `Q` | Disabled |
```

---

