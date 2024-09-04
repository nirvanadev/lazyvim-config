return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        typeStyle = {},
        transparent = true, -- do not set background color
      })
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },
}
