require("chris.compe")
require("chris.lsp")
require("chris.galaxyline")
require("chris.treesitter")
require("lspsaga").init_lsp_saga()
require("todo-comments").setup{}

P = function(v)
    print(vim.inspect(v))
    return v
end

if pcall(require, 'plenary') then
    RELOAD = require('plenary.reload').reload_module

    R = function(name)
        RELOAD(name)
        return require(name)
    end
end
