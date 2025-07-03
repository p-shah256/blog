---
title: "Neovim"
date: 2024-01-31T13:37:00+00:00
lastmod: 2025-07-03T14:20:00+00:00
draft: false
tags: ["neovim"]
---

## Common Editing Motions

| Keybind | Description                                                                     |
| ------- | ------------------------------------------------------------------------------- |
| `ciw`   | Change inner word                                                               |
| `di"`   | Delete inside double quotes                                                     |
| `yi]`   | Yank inside square brackets                                                     |
| `>i{`   | Indent inside curly braces                                                      |
| `V`     | Visual-select the entire line                                                   |
| `yy`    | Yank (copy) current line                                                        |
| `cc`    | Change (cut+insert) current line                                                |
| `%`     | Jump to matching parenthesis, bracket, or quote                                 |
| `$`     | Jump to EOL                                                                     |
| `a`     | Insert after current postion (we can skip moving one char and then hitting `i`) |
| `dd`    | clear the entire line                                                           |
| `D`     | clear line from current position                                                |

## Line Operations

| Keybind     | Description                                      |
| ----------- | ------------------------------------------------ |
| `Shift + J` | Join the next line to the current one with space |
| `gJ`        | Join next line with no space                     |

## Command Mode Essentials

| Command               | Description                                    |
| --------------------- | ---------------------------------------------- |
| `.`                   | Repeat the last change                         |
| `:set relativenumber` | Enable relative line numbers                   |
| `:%s/old/new/gc`      | Find and replace across file with confirmation |
