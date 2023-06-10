local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "markdown",
    "markdown_inline",
    "cmake",
    "dockerfile",
    "gitcommit",
    "gitignore",
    "javascript",
    "json",
    "julia",
    "kotlin",
    "make",
    "bibtex",
    "cpp",
    "go",
    "latex",
    "matlab",
    "python",
    "ruby",
    "rust",
    "sql",
    "svelte",
    "terraform",
    "toml",
    "typescript",
    "yaml",
    "wgsl"
  },
  indent = {
    enable = true,
    disable = {
      "python"
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    
    -- python
    "autopep8",
    "autoflake",
    "pyproject-flake8",
    "pyright",
    "python-lsp-server",
    "isort",
    
    -- bash
    "beautysh",
    "bash-language-server",

    -- dockerfiles
    "dockerfile-language-server",
    "docker-compose-language-service",

    -- json
    "jsonlint",

    -- julia
    "julia-lsp",

    -- kotlin
    "kotlin-language-server",

    -- latex
    "ltex-ls",

    -- markdown
    "markdownlint",
    "marksman",

    -- R 
    "r-languageserver",

    -- rust
    "rust-analyzer",
    "rustfmt",

    -- sql
    "sql-formatter",
    "sqlfluff",
    "sqlls",
    
    -- svelte
    "svelte-language-server",

    -- terraform
    "terraform-ls",
    "tflint",

    --WGSL
    "wgsl-analyzer",

    -- yaml
    "yaml-language-server",
    "yamlfmt",
    "yamllint",

    -- misc
    "alex",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}


M.nvterm = {
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = 'editor',
        row = 0.075,
        col = 0.05,
        width = 0.9,
        height = 0.8,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = .3, },
      vertical = { location = "rightbelow", split_ratio = .5 },
    }
  },
  behavior = {
    autoclose_on_quit = {
      enabled = true,
      confirm = false,
    },
    close_on_exit = true,
    auto_insert = false,
  },
}

return M
