local autocmd = vim.api.nvim_create_autocmd
local format = vim.lsp.buf.format

vim.filetype.add({extension = {wgsl = "wgsl"}})

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
