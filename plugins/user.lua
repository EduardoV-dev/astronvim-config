return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "tpope/vim-fugitive",
    ft = "git tooling",
    event = "VeryLazy",
  },
  {
    "tpope/vim-surround",
    ft = "productivity",
    event = "VeryLazy",
  },
  {
    "mg979/vim-visual-multi",
    ft = "productivity",
    event = "VeryLazy",
  },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = function() vim.fn["mkdp#util#install"]() end,
  },
}
