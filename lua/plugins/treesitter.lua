return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "markdown",
          "markdown_inline",
          "bash",
          "python",
          "go",
          "gomod",
          "rust",
          "hcl",
          "comment",
          "json",
          "yaml",
          "jsonnet",
          "sxhkdrc",
          "typescript",
          "astro",
          "terraform",
        }, -- put the language you want in this array
        -- ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "golang", "rust" }, -- put the language you want in this array
        -- ensure_installed = "all", -- one of "all" or a list of languages
        ignore_install = { "" }, -- List of parsers to ignore installing
        sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)

        highlight = {
          enable = true, -- false will disable the whole extension
          disable = { "css" }, -- list of language that will be disabled
        },
        autopairs = {
          enable = true,
        },
        indent = { enable = true, disable = { "python", "css" } },

        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
      })
    end,
  },
}
