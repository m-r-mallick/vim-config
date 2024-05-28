return {
  "goolord/alpha-nvim",
  event = "VimEnter", -- load plugin after all configuration is set
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }
    dashboard.section.header.opts.hl = "Type"

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "   New file", ":ene <BAR> startinsert <CR>"),
      -- dashboard.button("f", "   Find file", ":cd $HOME/dotfiles | Telescope find_files<CR>"),
      dashboard.button("g", "󰱼   Live grep", ":Telescope live_grep<CR>"),
      -- dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
      -- dashboard.button("c", "   Config", ":e $MYVIMRC <CR>"),
      dashboard.button("s", "   Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),

      dashboard.button("m", "󱌣   Mason", ":Mason<CR>"),
      dashboard.button("l", "󰒲   Lazy", ":Lazy<CR>"),
      dashboard.button("x", "   Lazy Extras", ":LazyExtras<CR>"),
      -- dashboard.button("u", "󰂖   Update plugins", "<cmd>lua require('lazy').sync()<CR>"),
      dashboard.button("q", "   Quit Neovim", ":qa<CR>"),
    }

    local function footer()
      return "Mohd Rahmatullah Mallick"
    end
    dashboard.section.footer.val = footer()

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)

    require("alpha").setup(dashboard.opts)
  end,
}
