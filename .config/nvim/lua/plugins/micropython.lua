return {
  'jim-at-jibba/micropython.nvim',
  dependencies = { 'akinsho/toggleterm.nvim', 'stevearc/dressing.nvim' },
  keys = {
    {
      '<leader>mr',
      function()
        require('micropython_nvim').run()
      end,
      desc = 'Run MicroPython',
    },
  },
  -- optional: load the plugin lazily
  ft = { 'python' }, -- only load for Python files
}
