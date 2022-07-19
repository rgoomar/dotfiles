local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config
   local servers = {"html", "cssls", "terraformls", "bashls", "graphql", "jsonls", "tsserver", "vimls", "yamlls", "dockerls"}

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = function(client, bufnr)
            attach(client, bufnr)
            -- change gopls server capabilities
            if lsp == "gopls" then
               client.resolved_capabilities.document_formatting = true
               client.resolved_capabilities.document_range_formatting = true
               if client.resolved_capabilities.document_formatting then
                 vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
               end
            end
         end,
         capabilities = capabilities,
      }
   end
end

return M
