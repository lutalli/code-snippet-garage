local function open_win_config_func()
    local scr_w = vim.opt.columns:get()
    local scr_h = vim.opt.lines:get()
    local tree_w = 80
    local tree_h = math.floor(tree_w * scr_h / scr_w)
    return {
	border = "rounded",
	relative = "editor",
	width = tree_w,
	height = tree_h,
	col = (scr_w - tree_w) / 2,
	row = (scr_h - tree_h) / 2
    }
end

require("nvim-tree").setup {
    view = {
	signcolumn = "no",
	float = {
	    enable = true,
	    open_win_config = open_win_config_func
	},
	cursorline = false
    },
    renderer = {
	icons = {
	    git_placement = "after",
	    symlink_arrow = " 󰁕 ",
	    show = {
		hidden = true
	    },
	    glyphs = {
		default = "󱓻",
		symlink = "",
		bookmark = "",
		modified = "",
		hidden = "󰊠",
		folder = {
		    arrow_closed = " ",
		    arrow_open = " ",
		    default = "",
		    open = "",
		    empty = "",
		    empty_open = "",
		    symlink = "",
		    symlink_open = ""
		},
		git = {
		    unmerged = "",
		    untracked = "󰫢",
		    renamed = "",
		    deleted = "",
		    ignored = ""
		}
	    }
	}
    },
    hijack_cursor = true,
    sync_root_with_cwd = true
}
