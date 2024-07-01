toggleterm = require 'toggleterm'
toggleterm.setup{
  size = 12,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '2',
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = 'shadow',  -- 边框样式可以是 'single', 'double', 'shadow' 或 'curved'
    winblend = 50,  -- 窗口透明度，值为 0-100
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
}
