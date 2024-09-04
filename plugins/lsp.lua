return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "intelephense",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              -- Add any custom settings for Intelephense here
              -- For example, you can specify the license key, filetypes, etc.
              -- licenseKey = "your-license-key"
              environment = {
                includePaths = { "/Users/k33f/Library/Application Support/Herd/bin//php" }, -- Ensure correct PHP include paths
              },
              licenseKey = "00AS9JEOJQ1NX1E",
            },
          },
        },
      },
    },
  },
  {
    "nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },
}
