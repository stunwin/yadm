-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>tl', function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = '[T]oggle [L]SP Diagnostics' })

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- set default go-to-mark behavior for ' to jump to the cursor position
vim.keymap.set('n', "'", '`', { noremap = true })

-- actual shortcuts
vim.keymap.set({ 'n', 'v' }, '<Space>w', '<cmd>:w<CR>', { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<Space>c', 'ZZ', { noremap = true })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>t', '', { desc = '[T]oggles' })
vim.keymap.set('n', '<leader>ta', '<Cmd>:Hardtime toggle<CR>', { desc = '[T]oggle H[a]rdtime' })

-- NOTE: this lil chunk here is to disable autoformatting when working on files with
-- weirdly-formatted arrays like keymaps

local format_enabled = true

-- Function to toggle between FormatEnable and FormatDisable

local function toggle_format()
  if format_enabled then
    vim.cmd 'FormatDisable'
    format_enabled = false
    print 'Format Disabled'
  else
    vim.cmd 'FormatEnable'
    format_enabled = true
    print 'Format Enabled'
  end
end

vim.keymap.set('n', '<leader>tf', toggle_format, { noremap = true, silent = true, desc = '[T]oggle Auto[F]ormatting' })

vim.keymap.set('n', 'zz', 'za', { noremap = true, silent = true, desc = 'Toggle fold under cursor' })

vim.api.nvim_create_user_command('FormatDisable', function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    vim.b.disable_autoformat = true
  else
    vim.g.disable_autoformat = true
  end
end, {
  desc = 'Disable autoformat-on-save',
  bang = true,
})
vim.api.nvim_create_user_command('FormatEnable', function()
  vim.b.disable_autoformat = false
  vim.g.disable_autoformat = false
end, {
  desc = 'Re-enable autoformat-on-save',
})
--#ADDKEYBINDSHERE
