local function on_attach()
end

require('vim.lsp.diagnostic')._define_default_signs_and_highlights()

require'lspconfig'.tsserver.setup{ on_attach=on_attach }
require'lspconfig'.clangd.setup {
    on_attach = on_attach,
    root_dir = function() return vim.loop.cwd() end
}


local opts = {
    highlight_hovered_item = true,
    show_guides=true,
}

require('symbols-outline').setup(opts)

