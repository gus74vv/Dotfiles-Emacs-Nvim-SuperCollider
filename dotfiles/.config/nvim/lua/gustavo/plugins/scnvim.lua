local scnvim = require("scnvim")
local map = scnvim.map
local map_expr = scnvim.map_expr
scnvim.setup({
  keymaps = {
    ["<M-e>"] = map("editor.send_line", { "i", "n" }),
    ["<C-e>"] = {
      map("editor.send_block", { "i", "n" }),
      map("editor.send_selection", "x"),
    },
    ["<CR>"] = map("postwin.toggle"),
    ["<M-CR>"] = map("postwin.toggle", "i"),
    ["<M-L>"] = map("postwin.clear", { "n", "i" }),
    ["<C-k>"] = map("signature.show", { "n", "i" }),
    ["<F12>"] = map("sclang.hard_stop", { "n", "x", "i" }),
    ["<leader>st"] = map("sclang.start"),
    ["<leader>sk"] = map("sclang.recompile"),
    ["<F1>"] = map_expr("s.boot"),
    ["K"] = map(function()
      vim.cmd("SCNvimHelp " .. vim.fn.expand("<cword>"))
    end),
    ["<leader>sb"] = map_expr("Server.local.boot", { "n", "x" }),
    ["<leader>sp"] = map_expr("Server.local.plotTree", { "n", "x" }),
    ["<leader>sm"] = map_expr("Server.local.meter", { "n", "x" }),
    ["<F2>"] = map_expr("s.meter"),
    ["<leader>rt"] = map(function()
      vim.cmd("SCNvimGenerateAssets")
    end, { "n", "x", "i" }),
  },
  editor = {
    force_ft_supercollider = true,
    highlight = {
      --color = "IncSearch",
      color = "IncSearch",
      type = 'flash',
      flash = {
        duration = 150,
        repeats = 3,
      },
      fade = {
        duration = 375,
      },
    },
  },
  --[[extensions = {
    tmux = {
      path = vim.fn.tempname(),
      horizontal = true,
      size = '35%',
      cmd = 'tail',
      args = { '-F', '$1' }
    },
  },--]]
  snippet = {
    engine = {
      name = "luasnip",
      options = {
        descriptions = true,
      },
    },
  },
  extensions = {
    tmux = {
      path = vim.fn.tempname(),
      horizontal = true,
      size = '35%',
      cmd = 'tail',
      args = { '-F', '$1' } }
    },
  postwin = {
    auto_toggle_error = true,
    direction = 'right',
    size = 25,
	},
})

--scnvim.load_extension("tmux")

scnvim.load_extension('piano')

require"luasnip".add_snippets("supercollider", require"scnvim/utils".get_snippets())
