---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  t = {
    ["<Esc>"] = { "<C-\\><C-n>", "escape terminal"}
  }
}

M.nvimtree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" }
  }
}

M.floatterm = {
  n = {
    ["<leader>lg"] = { "<cmd> FloatermNew --name=lazygit --title=Lazygit lazygit <CR>", "Show lazygit"},
  },
}

return M
