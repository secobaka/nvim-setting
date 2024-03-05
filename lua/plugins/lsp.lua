return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    keys = {
      {"<leader>mm", ":Mason<CR>"},
      {"<leader>mp", ":MasonUpdate<CR>"},
    },
    config = function()
      require('mason').setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      local lspconfig = require('mason-lspconfig')
      lspconfig.setup()
      lspconfig.setup_handlers({
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end,
      })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvimtools/none-ls.nvim",
    },
    config = function()
      require('mason-null-ls').setup()
    end,
  },
}
