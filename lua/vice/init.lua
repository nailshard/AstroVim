vim.cmd "hi clear"
if vim.fn.exists "syntax_on" then
  vim.cmd "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "vice"

C = require "vice.colors"

local util = require "vice.util"
local base = require "vice.base"
local treesitter = require "vice.treesitter"
local lsp = require "vice.lsp"
local others = require "vice.others"

local vice = {
  base,
  treesitter,
  lsp,
  others,
}

for _, file in ipairs(vice) do
  for group, colors in pairs(file) do
    util.highlight(group, colors)
  end
end
