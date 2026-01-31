# heph.nvim

Neovim plugin for Heph build system support. Provides syntax highlighting, LSP integration,
and build file management for Heph projects.

## Pre-requisites

1. Requires `heph` in `$PATH`
2. Requires Nvim >= 0.11.0
3. Requires Treesitter

## Installation

### LazyVim

```lua
{
  "Beloin/heph.nvim",
  config = function()
    require("heph").setup()
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
},
```

## Locally test

To locally test it with a dev Heph, you can change the `lua/heph/init.lua:20` adding a local bin:

```lua
cmd = { "/home/user/my_heph/heph_test", "lsp", "serve" },
```
