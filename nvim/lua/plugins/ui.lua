return {
  {
    "catppuccin/nvim",
    opts = {
      -- Sử dụng custom_highlights để ép đè màu trực tiếp
      custom_highlights = function(colors)
        return {
          CursorLineNr = { fg = colors.peach, bold = true },
          LineNr = { fg = colors.text },
          LineNrAbove = { fg = colors.subtext0 },
          LineNrBelow = { fg = colors.subtext0 },
        }
      end,
      transparent_background = true,
    },
  },
}
