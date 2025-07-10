require('lazy').setup(
  {
    { import = 'plugins' },

    'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
    {
      'norcalli/nvim-colorizer.lua',
      config = function()
        require('colorizer').setup()
      end,
    },
    { 'numToStr/Comment.nvim', opts = {} },
    {
      'navarasu/onedark.nvim',
      priority = 1000,
      config = function()
        require('onedark').setup { style = 'deep' }
        require('onedark').load()
      end,
    },

    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  },
  -- NOTE: this is the end of the lazy plugin setup function
  {
    ui = {
      icons = vim.g.have_nerd_font and {} or {
        cmd = '⌘',
        config = '🛠',
        event = '📅',
        ft = '📂',
        init = '⚙',
        keys = '🗝',
        plugin = '🔌',
        runtime = '💻',
        require = '🌙',
        source = '📄',
        start = '🚀',
        task = '📌',
        lazy = '💤 ',
      },
    },
  }
)
