require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline


-- OSC52 fuckery
local opt = vim.opt
local function my_paste(_)
    return function(_)
        local content = vim.fn.getreg('"')
        return vim.split(content, '\n')
    end
end

if (os.getenv('SSH_TTY') == nil)
then
    opt.clipboard:append("unnamedplus")
else
    opt.clipboard:append("unnamedplus")
    vim.g.clipboard = {
      name = 'OSC 52',
      copy = {
        ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
        ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
      },
      paste = {
        ["+"] = my_paste("+"),
        ["*"] = my_paste("*"),
    },
}
end

opt.colorcolumn = "80"
