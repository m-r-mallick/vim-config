return {
  "hrsh7th/nvim-cmp",
  opts = function()
    require("cmp").setup.filetype({ "sql", "sqlite" }, {
      sources = {
        { name = "vim-dadbod-completion" },
        { name = "buffer" },
      },
    })
    -- require("cmp").setup.filetype({ "js", "ts" }, {
    --   sources = {
    --     { name = "buffer" },
    --     { name = "cmp_ai" },
    --   },
    -- })
  end,
}
