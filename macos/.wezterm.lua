local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- General
config.font_size = 14.0
config.line_height = 1.2
config.color_scheme = "Catppuccin Macchiato"
config.default_cursor_style = "BlinkingBar"
config.cursor_thickness = 2
config.cursor_blink_rate = 700
config.colors = {
    cursor_bg = "#FFFFFF"
    cursor_border = "#FFFFFF"
}

-- Tab bar
config.window_decorations = "RESIZE"
config.window_frame = {
    font_size = 12,
}

local custom_colors = {
    red = "#D06F79",
    cyan = "#88C0D0",
    magenta = "#B48EAD",
    yellow = "#EBCB8B",
    pink = "#F5D0F0"
}

config.use_fancy_tab_bar = false
config.status_update_interval = 1000
wezterm.on("update-status", function(window, pane)
    local basename = function(s)
        return string.gsub(s, "(.*[/\\])(.*)", "%2")
    end

    -- cwd
    local cwd pane:get_current_working_dir()
    if cwd then
        cwd = basename(cwd.file_path)
    else
        cwd = ""
    end

    -- Current command
    local cmd = pane:get_foreground_process_name()
    cmd = cmd and basename(cmd) or ""

    -- Right status
    window:set_right_status(wezterm.format({
        { Foreground = { Color = custom_colors.pink } },
        { Text = wezterm.nerdfonts.md_folder .. " " .. cwd },
        { Text = " | " },
        { Foreground = { Color = custom_colors.magenta } },
        { Text = wezterm.nerdfonts.fa_code .. " " .. cmd },
        { Text = " " },
    }))
end)

-- Key bindings
config.keys = {
    {
        key = "t",
        mods = "CMD",
        action = wezterm.action.SpawnTab("CurrentPaneDomain"),
    },
    {
        key = "w",
        mods = "CMD",
        action = wezterm.action.CloseCurrentPane({ confirm = false }),
    },
    {
        key = "w",
        mods = "CMD|SHIFT",
        action = wezterm.action.CloseCurrentTab({ confirm = false }),
    },
    {
        key = "d",
        mods = "CMD",
        action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
    {
        key = "d",
        mods = "CMD|SHIFT",
        action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
    },
    {
        key = "1",
        mods = "ALT",
        action = wezterm.action.ActivateTab(0),
    },
    {
        key = "2",
        mods = "ALT",
        action = wezterm.action.ActivateTab(1),
    },
    {
        key = "3",
        mods = "ALT",
        action = wezterm.action.ActivateTab(2),
    },
    {
        key = "4",
        mods = "ALT",
        action = wezterm.action.ActivateTab(3),
    },
    {
        key = "5",
        mods = "ALT",
        action = wezterm.action.ActivateTab(4),
    },
    {
        key = "6",
        mods = "ALT",
        action = wezterm.action.ActivateTab(5),
    },
    {
        key = "7",
        mods = "ALT",
        action = wezterm.action.ActivateTab(6),
    },
    {
        key = "8",
        mods = "ALT",
        action = wezterm.action.ActivateTab(7),
    },
    {
        key = "9",
        mods = "ALT",
        action = wezterm.action.ActivateTab(8),
    },
}

return config