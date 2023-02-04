return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local formatting = require("null-ls").builtins.formatting
      local diagnostics = require("null-ls").builtins.diagnostics
      local code_actions = require("null-ls").builtins.code_actions

      -- https://github.com/prettier-solidity/prettier-plugin-solidity
      require("null-ls").setup({
        debug = false,
        sources = {
          formatting.prettier.with({
            extra_filetypes = { "toml" },
            extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
          }),
          -- python
          formatting.black.with({ extra_args = { "--fast" } }),
          formatting.isort,
          formatting.autoflake,
          diagnostics.flake8,
          diagnostics.yamllint,
          diagnostics.jsonlint,
          -- diagnostics.mypy,
          -- diagnostics.pylint,
          -- lua
          formatting.stylua,
          -- java
          -- formatting.google_java_format,
          -- rust
          formatting.rustfmt,
          -- golang
          formatting.gofmt,
          formatting.gofumpt,
          formatting.goimports,
          formatting.goimports_reviser,
          diagnostics.staticcheck,
          -- terraform
          formatting.terraform_fmt,
          -- shell
          formatting.shfmt,
          formatting.beautysh,
          diagnostics.shellcheck,
          --  opa
          diagnostics.opacheck,
          -- formatting.codespell,
          -- require("null-ls").builtins.completion.spell.with { filetypes = { "markdown", "text" } },
          code_actions.shellcheck,
          code_actions.gomodifytags,
        },
      })
    end,
  },
}
