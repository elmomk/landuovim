return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { hl = "GitSignsAdd", text = "加", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
          change = { hl = "GitSignsChange", text = "改", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
          delete = { hl = "GitSignsDelete", text = "刪", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
          -- topdelete = { hl = "GitSignsDelete", text = "t刪", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
          -- changedelete = { hl = "GitSignsChange", text = "改刪", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
        },
        signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
        watch_gitdir = {
          interval = 1000,
          follow_files = true,
        },
        attach_to_untracked = true,
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
          delay = 1000,
        },
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil, -- Use default
        preview_config = {
          -- Options passed to nvim_open_win
          border = "single",
          style = "minimal",
          relative = "cursor",
          row = 0,
          col = 1,
        },
      })
    end,
  },
}
