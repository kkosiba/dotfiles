-- Disable snacks animations
vim.g.snacks_animate = false

local root_patterns = {
	-- version control
	".git",

	-- build tools
	"Makefile",
	"CMakeLists.txt",
	"build.gradle",
	"build.gradle.kts",
	"pom.xml",
	"build.xml",

	-- docker
	"Dockerfile",
	"docker-compose.yml",

	-- node.js and javascript
	"package.json",
	"package-lock.json",
	"yarn.lock",
	".nvmrc",

	-- python
	"requirements.txt",
	"Pipfile",
	"pyproject.toml",
	"setup.py",
	"tox.ini",

	-- rust
	"Cargo.toml",

	-- go
	"go.mod",

	-- configuration files
	".prettierrc",
	".prettierrc.json",
	".prettierrc.yaml",
	".prettierrc.yml",
	".eslintrc",
	".eslintrc.json",
	".eslintrc.js",
	".eslintrc.cjs",
	".eslintignore",
	".stylelintrc",
	".stylelintrc.json",
	".stylelintrc.yaml",
	".stylelintrc.yml",
	".editorconfig",
	".gitignore",

	-- miscellaneous
	"README.md",
	"README.rst",
	"LICENSE",
	"Procfile",
	".env",
	".env.example",
	"config.yaml",
	"config.yml",
}
-- vim.g.root_spec = { "lsp", root_patterns, "cwd" }

return {
	"folke/snacks.nvim",
	opts = {
		-- need notifier for disabling "No notifications available"
		notifier = { enabled = true },
		image = { enabled = true },
		picker = {
			sources = {
				projects = {
					dev = {
						"~/dotfiles",

						"~/dev",
					},
					patterns = root_patterns,
					-- <leader>fp will always open picker_files
					confirm = "picker_files",
				},
				files = {
					hidden = true,
					ignored = true,
				},
			},
			-- show hidden files like .env
			hidden = true,
			-- show files ignored by git like node_modules
			ignored = true,

			exclude = {
				"node_modules/",
				"dist/",
				".next/",
				".vite/",
				".git/",
				".gitlab/",
				-- "build/",
				-- "target/",

				"package-lock.json",
				"pnpm-lock.yaml",
				"yarn.lock",
			},
		},
	},
}
