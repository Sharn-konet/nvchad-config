local autocmd = vim.api.nvim_create_autocmd
local format = vim.lsp.buf.format

vim.filetype.add({extension = {wgsl = "wgsl"}})

vim.g.neovide_input_macos_alt_is_meta = true

vim.o.guifont = "Lilex Nerd Font Mono:h16:#h-none"

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- before writing to buffer, format the code
autocmd("BufWritePre", {
  pattern = "*",
  callback = format,
})
