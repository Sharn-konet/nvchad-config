local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "pyright",
  "terraformls",
  "tflint",
  "julials",
  "marksman",
  "yamlls",
  "taplo",
  "svelte",
  "kotlin_language_server",
  "ltex",
  "dockerls",
  "docker_compose_language_service",
  "bashls",
  "wgsl_analyzer",
  "gopls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.rust_analyzer.setup {
  settings = {
    ["rust_analyzer"] = {
      workspace = {
        symbol = {
          search = {
            kind = "all_symbols",
          },
        },
      },
    },
  },
}

--
-- lspconfig.pyright.setup { blabla}
