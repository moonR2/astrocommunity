return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table or string "all".
      if not opts.ensure_installed then
        opts.ensure_installed = {}
      elseif opts.ensure_installed == "all" then
        return
      end
      -- Add the "python" and "toml" language to opts.ensure_installed.
      vim.list_extend(opts.ensure_installed, { "python", "toml" })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table.
      if not opts.ensure_installed then opts.ensure_installed = {} end
      -- Add pyright lsp to opts.ensure_installed using table.insert.
      vim.list_extend(opts.ensure_installed, { "pyright", "ruff_lsp" })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table.
      if not opts.ensure_installed then opts.ensure_installed = {} end
      -- Add to opts.ensure_installed using vim.list_extend.
      vim.list_extend(opts.ensure_installed, { "isort", "black" })
    end,
  },
  {
    "AckslD/swenv.nvim",
    opts = {},
    ft = "python",
    keys = { { "<leader>lv", function() require("swenv.api").pick_venv() end, desc = "Select VirtualEnv" } },
  },
}
