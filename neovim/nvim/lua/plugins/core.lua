return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = function()
                require("catppuccin").load()
            end,

            defaults = {
                autocmds = true,
                keymaps = true,

            },
            news = {
                lazyvim = false,
                neovim = false,
            },
        }
    }
}
