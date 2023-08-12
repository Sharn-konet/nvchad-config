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

M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode
    -- ["<M-i>"] = {
    --   function()
    --     require("nvterm.terminal").toggle "float"
    --   end,
    --   "toggle floating term",
    -- },

    -- toggle in normal mode
    ["<S-tab>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<M-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<M-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
  },

  n = {
    -- toggle in normal mode
    -- ["<M-i>"] = {
    --   function()
    --     require("nvterm.terminal").toggle "float"
    --   end,
    --   "toggle floating term",
    -- },


    -- toggle in normal mode
    ["<S-tab>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    -- toggle in normal mode
    ["<leader>i"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<M-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<M-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },

    ["<leader>h"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "new horizontal term",
    },

    ["<leader>v"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "new vertical term",
    },
  },
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
