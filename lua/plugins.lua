return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {"nvim-tree/nvim-web-devicons"}
    },
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/nvim-cmp',
	"mbbill/undotree",
	"tpope/vim-fugitive",
	'tpope/vim-sensible',
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"  -- Runs :TSUpdate after installing to keep parsers up to date
	},
	{
		"rose-pine/neovim",
		name = "rose-pine"
	},
	'ThePrimeagen/vim-be-good',
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = {
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep"
		}
	}
}
