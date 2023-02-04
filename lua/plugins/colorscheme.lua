return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({ transparent = false })
    end,
  },
  { "LazyVim/LazyVim", opts = {
    colorscheme = "kanagawa",
  } },
}
