local M = {}

M.setup_lsp = function(attach, capabilities)
  local lspconfig = require "lspconfig"

  -- lspservers with default config

  local servers = {"html", "cssls", "terraformls", "bashls", "gopls", "graphql", "jsonls", "tsserver", "vimls", "yamlls"}

  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = attach,
      capabilities = capabilities,
      -- root_dir = vim.loop.cwd,
      flags = {
        debounce_text_changes = 150,
      },
    }
  end
  -- custom setups

  lspconfig.dockerls.setup {
    filetypes = {"Dockerfile", "dockerfile", "Dockerfile.*"},
  }
end

return M
