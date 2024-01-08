local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  -- b.code_actions.xo,
  -- b.diagnostics.xo,
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- VSCode code completion
  b.completion.vsnip,

  -- ensure inclusive terminology
  b.diagnostics.alex,

  b.diagnostics.chktex,

  -- .env files
  b.diagnostics.dotenv_linter,

  b.diagnostics.pyproject_flake8,
  b.formatting.autopep8,
  b.formatting.isort,

  b.diagnostics.hadolint,

  -- b.diagnostics.gospel, Not working with Mason
  b.formatting.gofumpt,

  b.diagnostics.jsonlint,

  b.diagnostics.ktlint.with { filetypes = {"kts", "kt"} },

  b.diagnostics.markdownlint,
  b.formatting.mdformat,
  b.formatting.cbfmt,

  b.diagnostics.terraform_validate,
  b.diagnostics.tfsec,
  b.formatting.terraform_fmt,

  b.diagnostics.yamllint.with { filetypes = { "yml", "yaml"} },
  b.formatting.yamlfmt.with { filetypes = { "yml", "yaml"} },

  -- b.diagnostics.zsh,
  b.formatting.beautysh,

  -- b.formatting.codespell,
  -- b.formatting.format_r,

  b.formatting.rustfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
