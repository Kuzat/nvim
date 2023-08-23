
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.set_server_config({
    on_init = function (client)
        client.server_capabilities.semanticTokensProvider = nil
    end,
})

lsp.setup()

local cmp = require('cmp')

cmp.setup({
	mapping = {
		['<CR>'] = cmp.mapping.confirm({select = true}),
		['<C-Space>'] = cmp.mapping.complete()
	}
})

