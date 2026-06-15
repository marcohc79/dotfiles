

local  rose_pine_palette = {
    Base = "#191724",
    Surface = "#1f1d2e",
    Overlay = "#26233a",
    Muted = "#6e6a86",
    Subtle = "#908caa",
    Text = "#e0def4",
    Love = "#eb6f92",
    Gold = "#f6c177",
    Rose = "#ebbcba",
    Pine = "#31748f",
    Foam = "#9ccfd8",
    Iris = "#c4a7e7",
    HighlightLow = "#21202e",
    HighlightMed = "#403d52",
    HighlightHigh = "#524f67",
}

local rose_pine_moon_palette = {
    Base = "#232136",
    Surface = "#2a273f",
    Overlay = "#393552",
    Muted = "#6e6a86",
    Subtle = "#908caa",
    Text = "#e0def4",
    Love = "#eb6f92",
    Gold = "#f6c177",
    Rose = "#ea9a97",
    Pine = "#3e8fb0",
    Foam = "#9ccfd8",
    Iris = "#c4a7e7",
    HighlightLow = "#2a283e",
    HighlightMed = "#44415a",
    HighlightHigh = "#56526e",
  }

local rose_pine_dawn_palette = {
    Base = "#faf4ed",
    Surface = "#fffaf3",
    Overlay = "#f2e9e1",
    Muted = "#9893a5",
    Subtle = "#797593",
    Text = "#575279",
    Love = "#b4637a",
    Gold = "#ea9d34",
    Rose = "#d7827e",
    Pine = "#286983",
    Foam = "#56949f",
    Iris = "#907aa9",
    HighlightLow = "#f4ede8",
    HighlightMed = "#dfdad9",
    HighlightHigh = "#cecacd",
  }


local function rosepine_theme(flavor)
	local palettes = {
  	  rose_pine = rose_pine_palette,
  	  moon = rose_pine_moon_palette,
  	  dawn = rose_pine_dawn_palette,
	 }
	local rosepine_palette = palettes[flavor]
	
	local theme =  {
	 	section_separator = { open = "", close = "" }, --  icons ("", "") 
	 	part_separator = { open = "", close = "" },
	 	inverse_separator = { open = "", close = "" },
	 
	 	style_a = {
	 		fg = rosepine_palette.Text,
	 		bg_mode = {
	 			normal = rosepine_palette.Pine,
	 			select = rosepine_palette.Rose,
	 			un_set = rosepine_palette.Love ,
	 		}
	 	},
	 	style_b = { bg = rosepine_palette.Foam, fg = rosepine_palette.HighlightLow },
	 	style_c = { bg = rosepine_palette.Overlay, fg = rosepine_palette.Gold },
	 
	 	permissions_t_fg = rosepine_palette.Pine,
	 	permissions_r_fg = rosepine_palette.Gold,
	 	permissions_w_fg = rosepine_palette.Love,
	 	permissions_x_fg = rosepine_palette.Foam,
	 	permissions_s_fg = rosepine_palette.Text,
	 
	 	selected = { icon = "󰻭", fg = rosepine_palette.Gold },
	 	copied = { icon = "", fg = rosepine_palette.Foam },
	 	cut = { icon = "", fg = rosepine_palette.Love },
	 	files = { icon = "", fg = "blue" },
	 	filtereds = { icon = "", fg = "magenta" },
	 
	 	total = { icon = "󰮍", fg = rosepine_palette.Gold },
	 	success = { icon = "", fg = rosepine_palette.Foam },
	 	failed = { icon = "", fg = rosepine_palette.Love },
	 }
	if flavor == "dawn" then
			-- style a
			theme.style_a.fg = rosepine_palette.HighlightLow
	        theme.style_a.bg_mode.normal = rosepine_palette.Rose
	        theme.style_a.bg_mode.select = rosepine_palette.Gold
	        theme.style_a.bg_mode.un_set = rosepine_palette.Love

	        -- style b
	        theme.style_b.bg = rosepine_palette.Subtle
	       theme.style_b.fg = rosepine_palette.HighlightLow

	        -- style c
	        theme.style_c.bg = rosepine_palette.Overlay
	        theme.style_c.fg = rosepine_palette.Pine

	        
	 end
	return theme
end

return {
    setup = function(_, flavor)
        flavor = flavor or "moon"
        return rosepine_theme(flavor)
    end,
}

