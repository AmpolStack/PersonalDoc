local Menu = require("nui.menu")
local event = require("nui.utils.autocmd").event

local menu = Menu({
  position = "50%",
  size = {
    width = 30,
    height = 10,
  },
  border = {
    style = "single",
    text = {
      top = " 󰽭 CREATE A TYPE FILE 󰽭",
      top_align = "center",
    },
  },
  win_options = {
    winhighlight = "Normal:Normal,FloatBorder:Normal",
  },
}, {
  lines = {
    Menu.item("Class"),
    Menu.item("Carbon (C)"),
    Menu.item("Nitrogen (N)"),
    Menu.separator("Noble-Gases", {
      char = "-",
      text_align = "right",
    }),
    Menu.item("Helium (He)"),
    Menu.item("Neon (Ne)"),
    Menu.item("Argon (Ar)"),
  },
  max_width = 20,
  keymap = {
    focus_next = { "j", "<Down>", "<Tab>" },
    focus_prev = { "k", "<Up>", "<S-Tab>" },
    close = { "<Esc>", "<C-c>" },
    submit = { "<CR>", "<Space>" },
  },
  on_close = function()
    print("Menu Closed!")
  end,
  on_submit = function(item)
    print("Menu Submitted: ", item.text)
  end,
})

-- mount the component
menu:mount()
