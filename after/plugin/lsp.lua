local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)


lsp_zero.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
	servers = {
		['tsserver'] = {'javascript', 'typescript'},
		['rust_analyze'] = {'rust'},
		['pyright'] = {'python'},
		['gopls'] = {'go'},
	}
})

-- local lspconfig = require('lspconfig')
-- lspconfig.lua_ls.setup({})
-- lspconfig.rust_analyzer.setup({})
-- lspconfig.pylsp.setup({
-- 	settings = {
-- 		pyslsp = {
-- 			plugins = {
-- 				pycodestyle = {
-- 					-- ignore = {'W391'},
-- 					maxLineLength = 100
-- 				}
-- 			}
-- 		}
-- 	}
-- })
-- lspconfig.gopls.setup({})
require('mason').setup({})
require('mason-lspconfig').setup({
	-- Replace the language servers listed here 
	-- with the ones you want to install
	ensure_installed = {
		'clangd',
		'cmake',
		'dockerls',
		'gopls',
		'jsonls',
		'marksman',
		'intelephense',
		'pyright',
		'sqlls',
		'tsserver',
		'rust_analyzer',
		'lua_ls',
	},
	handlers = {
		lsp_zero.default_setup,
	},
})

