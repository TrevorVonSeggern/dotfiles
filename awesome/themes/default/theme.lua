---------------------------
-- Default awesome theme --
---------------------------
local os = os

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")

local dpi = xresources.apply_dpi
local gfs = gears.filesystem

local themes_path = os.getenv('HOME') .. '/.config/awesome/themes/'

local theme = {}
theme.confdir = themes_path .. 'default/'

theme.font          = "Ubuntu mono 10"

theme.useless_gap   = dpi(10)
theme.border_width  = dpi(0)

-- colors
theme.menu_bg_normal                            = "#000000"
theme.menu_bg_focus                             = "#000000"
theme.bg_normal                                 = "#000000"
theme.bg_minimize                               = "#111111"
theme.bg_focus                                  = "#000000"
theme.bg_urgent                                 = "#000000"
theme.bg_systray = theme.bg_normal
theme.fg_normal                                 = "#aaaaaa"
theme.fg_focus                                  = "#ff8c00"
theme.fg_urgent                                 = "#af1d18"
theme.fg_minimize                               = "#ffffff"
theme.border_normal                             = "#1c2022"
theme.border_focus                              = "#606060"
theme.border_marked                             = "#3ca4d8"
theme.menu_fg_normal                            = "#aaaaaa"
theme.menu_fg_focus                             = "#ff8c00"
theme.menu_bg_normal                            = "#050505dd"
theme.menu_bg_focus                             = "#050505dd"

theme.wallpaper = theme.confdir .. "wallpaper.png"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

theme.menu_submenu_icon = theme.confdir .. "submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- Define the image to load
theme.titlebar_close_button_normal = theme.confdir .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus  = theme.confdir .. "titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = theme.confdir .. "titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = theme.confdir .. "titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme.confdir .. "titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme.confdir .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme.confdir .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme.confdir .. "titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme.confdir .. "titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme.confdir .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme.confdir .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme.confdir .. "titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme.confdir .. "titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme.confdir .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme.confdir .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme.confdir .. "titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.confdir .. "titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.confdir .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme.confdir .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme.confdir .. "titlebar/maximized_focus_active.png"

theme.tasklist_plain_task_name                  = true
--theme.tasklist_disable_icon                     = true


-- You can use your own layout icons like this:
theme.layout_fairh = theme.confdir .. "layouts/fairhw.png"
theme.layout_fairv = theme.confdir .. "layouts/fairvw.png"
theme.layout_floating  = theme.confdir .. "layouts/floatingw.png"
theme.layout_magnifier = theme.confdir .. "layouts/magnifierw.png"
theme.layout_max = theme.confdir .. "layouts/maxw.png"
theme.layout_fullscreen = theme.confdir .. "layouts/fullscreenw.png"
theme.layout_tilebottom = theme.confdir .. "layouts/tilebottomw.png"
theme.layout_tileleft   = theme.confdir .. "layouts/tileleftw.png"
theme.layout_tile = theme.confdir .. "layouts/tilew.png"
theme.layout_tiletop = theme.confdir .. "layouts/tiletopw.png"
theme.layout_spiral  = theme.confdir .. "layouts/spiralw.png"
theme.layout_dwindle = theme.confdir .. "layouts/dwindlew.png"
theme.layout_cornernw = theme.confdir .. "layouts/cornernww.png"
theme.layout_cornerne = theme.confdir .. "layouts/cornernew.png"
theme.layout_cornersw = theme.confdir .. "layouts/cornersww.png"
theme.layout_cornerse = theme.confdir .. "layouts/cornersew.png"


theme.widget_temp                               = theme.confdir .. "icons/temp.png"
theme.widget_uptime                             = theme.confdir .. "icons/ac.png"
theme.widget_cpu                                = theme.confdir .. "icons/cpu.png"
theme.widget_weather                            = theme.confdir .. "icons/dish.png"
theme.widget_fs                                 = theme.confdir .. "icons/fs.png"
theme.widget_mem                                = theme.confdir .. "icons/mem.png"
theme.widget_note                               = theme.confdir .. "icons/note.png"
theme.widget_note_on                            = theme.confdir .. "icons/note_on.png"
theme.widget_netdown                            = theme.confdir .. "icons/net_down.png"
theme.widget_netup                              = theme.confdir .. "icons/net_up.png"
theme.widget_mail                               = theme.confdir .. "icons/mail.png"
theme.widget_batt                               = theme.confdir .. "icons/bat.png"
theme.widget_clock                              = theme.confdir .. "icons/clock.png"
theme.widget_vol                                = theme.confdir .. "icons/spkr.png"
theme.taglist_squares_sel                       = theme.confdir .. "icons/square_a.png"
theme.taglist_squares_unsel                     = theme.confdir .. "icons/square_b.png"
theme.layout_tile                               = theme.confdir .. "icons/tile.png"
theme.layout_tilegaps                           = theme.confdir .. "icons/tilegaps.png"
theme.layout_tileleft                           = theme.confdir .. "icons/tileleft.png"
theme.layout_tilebottom                         = theme.confdir .. "icons/tilebottom.png"
theme.layout_tiletop                            = theme.confdir .. "icons/tiletop.png"
theme.layout_fairv                              = theme.confdir .. "icons/fairv.png"
theme.layout_fairh                              = theme.confdir .. "icons/fairh.png"
theme.layout_spiral                             = theme.confdir .. "icons/spiral.png"
theme.layout_dwindle                            = theme.confdir .. "icons/dwindle.png"
theme.layout_max                                = theme.confdir .. "icons/max.png"
theme.layout_fullscreen                         = theme.confdir .. "icons/fullscreen.png"
theme.layout_magnifier                          = theme.confdir .. "icons/magnifier.png"
theme.layout_floating                           = theme.confdir .. "icons/floating.png"
theme.titlebar_close_button_normal              = theme.confdir .. "icons/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme.confdir .. "icons/titlebar/close_focus.png"
theme.titlebar_minimize_button_normal           = theme.confdir .. "icons/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = theme.confdir .. "icons/titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive     = theme.confdir .. "icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.confdir .. "icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.confdir .. "icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.confdir .. "icons/titlebar/ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive    = theme.confdir .. "icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme.confdir .. "icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme.confdir .. "icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme.confdir .. "icons/titlebar/sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive  = theme.confdir .. "icons/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.confdir .. "icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.confdir .. "icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.confdir .. "icons/titlebar/floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = theme.confdir .. "icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.confdir .. "icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme.confdir .. "icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.confdir .. "icons/titlebar/maximized_focus_active.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

return theme
