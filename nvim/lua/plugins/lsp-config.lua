return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    lazy = false,
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local mason_tool_installer = require("mason-tool-installer")

      mason.setup()

      mason_lspconfig.setup({
        ensure_installed = {
          "solargraph",
          "tailwindcss",
          "lua_ls",
        },
        automatic_installation = true, -- not the same as ensure_installed
      })

      mason_tool_installer.setup({
        ensure_installed = {
          "stylua", -- lua formatter
          "isort", -- python formatter
          "black", -- python formatter
          "pylint", -- python linter
          "eslint_d", -- js linter
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local solargraph_cmd = function()
        local jid = vim.fn.jobstart("cat Gemfile | grep solargraph", {
          on_exit = function(_) end,
        })
        vim.fn.jobwait({ jid }, 5000)
        return { "solargraph", "stdio" }
      end

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.solargraph.setup({ cmd = solargraph_cmd() })
    end,
  },
}
