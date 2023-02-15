local wezterm = require("wezterm")

-- A helper function for my fallback fonts
local function font_with_fallback(name, params)
    local names = {
        name,
        "FiraCode Nerd Font Mono",
        "Iosevka Nerd Font Mono",
        "JetBrainsMono Nerd Font",
        "VictorMono Nerd Font",
    }
    return wezterm.font_with_fallback(names, params)
end

return {
    bold_brightens_ansi_colors = true,
    check_for_updates = false,
    color_scheme = "tokyonight-storm",
    colors = {
        tab_bar = {
            -- The color of the inactive tab bar edge/divider
            inactive_tab_edge = '#575757',
        },
    },
    cursor_blink_rate = 0,
    enable_kitty_keyboard = true,
    enable_scroll_bar = false,
    enable_tab_bar = false,
    exit_behavior = "Close",
    font = font_with_fallback("JetBrainsMono Nerd Font"),
    font_rules = {
        {
            intensity = "Bold",
            italic = true,
            font = font_with_fallback("JetBrainsMono Nerd Font", { italic = true, bold = true }),
        },
        {
            intensity = "Bold",
            font = font_with_fallback("JetBrainsMono Nerd Font", { bold = true }),
        },
        {
            italic = true,
            font = font_with_fallback("JetbrainsMono Nerd Font",
                { weight = "Regular", stretch = "Normal", style = "Italic" }),
        },
    },
    font_size = 18.5,
    initial_cols = 180,
    initial_rows = 45,
    keys = {
        { key = "F11", mods = "", action = "ToggleFullScreen" },
        { key = "Home", mods = "SHIFT", action = "ScrollToTop" },
        { key = "End", mods = "SHIFT", action = "ScrollToBottom" },
    },
    line_height = 1.0,
    scrollback_lines = 5000,
    send_composed_key_when_left_alt_is_pressed = false,
    send_composed_key_when_right_alt_is_pressed = true,
    use_fancy_tab_bar = true,
    window_background_opacity = 0.95,
    window_close_confirmation = "NeverPrompt",
    window_frame = {
        -- The font used in the tab bar.
        -- Roboto Bold is the default; this font is bundled
        -- with wezterm.
        -- Whatever font is selected here, it will have the
        -- main font setting appended to it to pick up any
        -- fallback fonts you may have used there.
        font = wezterm.font { family = 'Roboto', weight = 'Bold' },

        -- The size of the font in the tab bar.
        -- Default to 10. on Windows but 12.0 on other systems
        font_size = 16.0,

        -- The overall background color of the tab bar when
        -- the window is focused
        active_titlebar_bg = '#333333',

        -- The overall background color of the tab bar when
        -- the window is not focused
        inactive_titlebar_bg = '#333333',
    },
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
}
