return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    { "stevearc/dressing.nvim", opts = {} },
  },
  keys = {
    { "<leader>ch", "<cmd>CodeCompanionChat<cr>", desc = "Open Chat Buffer" },
    { "<leader>ce", "<cmd>CodeCompanion /explain<cr>", desc = "Explain Current Line" },
    { "<leader>cL", "<cmd>CodeCompanionActions<cr>", desc = "List Possible Companion Actions" },
  },
  config = function()
    require("codecompanion").setup({
      strategies = {
        chat = {
          adapter = "ollama",
        },
        inline = {
          adapter = "ollama",
        },
        agent = {
          adapter = "ollama",
        },
      },
      adapters = {
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            env = {
              url = "http://127.0.0.1:11434",
            },
            headers = {
              ["Content-Type"] = "application/json",
            },
            parameters = {
              sync = true,
            },
            num_ctx = {
              default = 100000,
            },
          })
        end,
      },
    })
  end,
}
