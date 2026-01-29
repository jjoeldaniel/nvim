return {
  "https://codeberg.org/andyg/leap.nvim",
  config = function()
    local map = vim.keymap.set

    map({ 'n', 'x', 'o', 'v' }, 's', '<Plug>(leap)')
    map({ 'n', 'v'}, 'S', '<Plug>(leap-backward)')
  end,
  lazy = false,
}
