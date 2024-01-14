return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "RRethy/nvim-treesitter-endwise" },
  opts = function(_, opts)
    opts.endwise = { enable = true }
    opts.indent = { enable = true }
    opts.highlight = { enable = true }
    opts.auto_install = true
  end,
}
