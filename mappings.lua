---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.nvimtree = {
  n = {
    ["<leader>e"] = {"<cmd> NvimTreeToggle <CR>", "toggle nvimtree"}
  }
}

-- M.floaterm = {
--   n = {
--     ["<leader>lg"] = {
--       function()
--         require("nvterm.terminal").toggle "float"
--       end,
--       "open lazygit"
--     },
--   },
--
--   t = {
--     ["<leader>lg"] = {
--       function()
--         require("nvterm.terminal").toggle "float"
--       end,
--       "open lazygit"
--     },
--   }
-- }

return M
