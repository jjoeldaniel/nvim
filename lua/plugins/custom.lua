vim.opt.relativenumber = false

local notify = vim.notify
vim.notify = function(msg, ...)
  if msg:match "warning: multiple different client offset_encodings" then return end
  notify(msg, ...)
end

return {
  {
    "chrisgrieser/nvim-spider",
  },
  {
    "roobert/search-replace.nvim",
    config = function()
      require("search-replace").setup {
        -- optionally override defaults
        default_replace_single_buffer_options = "gcI",
        default_replace_multi_buffer_options = "egcI",
      }
    end,
  },
}
