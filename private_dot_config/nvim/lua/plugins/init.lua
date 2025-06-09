return {
  --{ "windwp/nvim-autopairs", enabled = false },

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

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "luadoc",
        "printf",
        "vim",
        "vimdoc",
        "html",
        "css",
        "clojure",
      },
    },
  },

  -- clojure
  {
    "Olical/conjure",
    ft = { "clojure" }, -- etc
    lazy = true,
  },
  
  -- sexp motion
  {
    "guns/vim-sexp",
    ft = { "clojure", "lisp", "fennel" },
    dependencies = {
      "tpope/vim-sexp-mappings-for-regular-people",
      "tpope/vim-repeat",
      "tpope/vim-surround",
    },
  },

  {
    "julienvincent/nvim-paredit",
    ft = { "clojure", "lisp", "fennel" },
    config = function()
      require("nvim-autopairs").disable()
      require("nvim-paredit").setup()
    end,
  },
  
  -- Optional: Rainbow parentheses (visual help)
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "BufReadPost",
    config = function()
      require("rainbow-delimiters.setup").setup()
    end,
  },

  -- get
  {
  "NeogitOrg/neogit",
  keys = { { "<leader>gs", "<cmd>Neogit<CR>", desc = "Neogit" } },
   dependencies = {
     "nvim-lua/plenary.nvim",         -- required
     "sindrets/diffview.nvim",        -- optional - Diff integration

     -- Only one of these is needed.
     "nvim-telescope/telescope.nvim", -- optional
   },
   config = function()
      require("neogit").setup()

      -- Key mapping for <leader>gs to open Neogit
      vim.api.nvim_set_keymap(
        "n",
        "<leader>gs",
        ":Neogit<CR>",
        { noremap = true, silent = true }
      )
    end,
  }
}
