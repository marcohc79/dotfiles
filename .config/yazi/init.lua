-- full-border plugin configuration
require("full-border"):setup()

-- DuckDB plugin configuration
require("duckdb"):setup()

-- sshfs plugin configuration
require("sshfs"):setup()

-- Choose the variant you like ("rose_pine" | "moon" | "dawn" )
local rose_pine_theme = require("yatline-rosepine"):setup("rose_pine")
require("yatline"):setup({
	theme = rose_pine_theme,
})
