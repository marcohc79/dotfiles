<p align="center">
    <img src="https://github.com/rose-pine/rose-pine-theme/raw/main/assets/icon.png" width="80" />
    <h2 align="center">Rosé Pine for Yatline</h2>
</p>

<p align="center">All natural pine, faux fur and a bit of soho vibes for the classy minimalist</p>

## Gallery

### Rosé Pine

<img width="600"  alt="Rosé Pine with Yatline" src="https://github.com/user-attachments/assets/a39747b4-3a8f-4e07-992b-c04f981593e1" />

<img width="600"  alt="Rosé Pine with Yatline" src="https://github.com/user-attachments/assets/63a9d053-4d06-4803-b4b3-22a260560d6b" />

### Rosé Pine Moon

<img width="600"  alt="Rosé Pine Moon with Yatline" src="https://github.com/user-attachments/assets/58482b81-7337-4a40-95d2-cb88f55aebd6" />

<img width="600"  alt="Rosé Pine Moon with Yatline" src="https://github.com/user-attachments/assets/2ff30098-3196-42f4-9732-86639660195b" />

### Rosé Pine Dawn

<img width="600"  alt="Rosé Pine Dawn with Yatline" src="https://github.com/user-attachments/assets/4d277e0a-1aac-4150-bdcf-fb8a26696981" />

<img width="600" alt="Rosé Pine Dawn with Yatline" src="https://github.com/user-attachments/assets/9d6211e7-bae4-46bd-8607-194a166d66a7" />


## Installation
```bash
ya pkg add VigneshR387/yatline-rosepine
```

## Usage

1. Add the following line in `init.lua`
```lua
-- Choose the variant you like ("rose_pine" | "moon" | "dawn" )
local rose_pine_theme = require("yatline-rosepine"):setup("dawn")

```
2. Pass the theme to `yatline` setup
```lua
-- init.lua

-- Load the theme inside `require("yatline"):setup`
```lua
require("yatline"):setup({
    theme = rose_pine_theme, -- pass the theme here

    -- Your remaining yatline configuration
    -- header_line = { ... },
    -- status_line = { ... },
})

```
# Resources

- [Rose pine theme for yazi](https://github.com/rose-pine/yazi)
- [Yatline](https://github.com/imsi32/yatline.yazi)

## Thanks to

- [imsi32](https://github.com/imsi32)
- [sxyazi](https://github.com/sxyazi)
- [Rose Pine Theme](https://github.com/rose-pine)


