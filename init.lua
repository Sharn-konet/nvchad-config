local autocmd = vim.api.nvim_create_autocmd
local format = vim.lsp.buf.format

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- autocmd("VimEnter", {
--   pattern = "*",
--   command = "FloatermNew --name=lazygit --title=Lazygit lazygit"
-- })

-- autocmd("VimEnter", {
--   pattern = "*",
--   command = "FloatermHide lazygit"
-- })

-- before writing to buffer, format the code
autocmd("BufWritePre", {
  pattern = "*",
  callback = format,
})
