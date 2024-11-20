return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  {
  	"williamboman/mason.nvim",
  },

  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require "configs.nvim-tree"
    end,
  },

  {
    "sindrets/diffview.nvim",
    config = function(_, opts)
      local diffview = require("diffview")
      diffview.setup(opts)
    end,
    lazy = false,
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function(_, opts)
      require("gitsigns").setup({
        current_line_blame = true,
      })
    end,
    lazy = false,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css", "markdown",
  		},
  	},
  },

  {
    'akinsho/git-conflict.nvim',
    version = "*",
    config = true,
    lazy = false,
  },
}
