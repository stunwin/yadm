# stunwin.nvim

this neovim config started as a fork of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

## mvp pluggies

- [Obsidian.nvim](https://github.com/obsidian-nvim/obsidian.nvim) - used extensively for taking notes (shoutout to the community fork). Telescope searches have been added `<leader>so` and `<leader>sO` to search obsidian files, and grep the obsidian library respectively.
- [Yazi.nvim](https://github.com/mikavilpas/yazi.nvim) - the ultimate maximalist filebrowser
- [Harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2) - for quick file switching
- [Onedark.nvim](https://github.com/navarasu/onedark.nvim) - a colorshceme I like so much I made it the basis for my Hyprland config
- [lilguys.nvim](https://github.com/stunwin/lilguys.nvim) - my own plugin for prepending pipeline operators in functional languages!

## Toggles

I've added a set of toggle keymaps to help manage some plugins and features

| Keymap | Function|
|---|---|
|`<leader>tl`|Toggle in-line LSP diagnostics|
|`<leader>tf`|Toggle autoformat on save|
|`<leader>ta`|Toggle Hardtime plugin|
