local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt
local ai = require("luasnip.nodes.absolute_indexer")

-- :set filetype to see filetype

vim.keymap.set({ "i", "s" }, "<A-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<A-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

for _, filetype in ipairs({'elixir', 'heex'}) do
  ls.add_snippets(filetype, {
    s("et", {
      t('<%= '),
      i(1),
      t(' %>'),
      i(2),
    })
  })

  ls.add_snippets(filetype, {
    s("tag", fmt(
      [[
      <{}>
        {}
      </{}>
      ]], {
        i(1), i(0), rep(ai[1])
      }
    ))
  })
end

