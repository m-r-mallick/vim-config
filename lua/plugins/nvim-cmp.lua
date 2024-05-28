return {
  "hrsh7th/nvim-cmp",
  opts = function()
    require("cmp").setup.filetype({ "sql", "sqlite" }, {
      sources = {
        { name = "vim-dadbod-completion" },
        { name = "buffer" },
      },
    })
  end,
}
