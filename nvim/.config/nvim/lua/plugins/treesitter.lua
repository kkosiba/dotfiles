return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		ensure_installed = {
			-- for Rust
			"rust",
			"ron",
			-- for Python
			"ninja",
			"rst",
		},
	},
}
