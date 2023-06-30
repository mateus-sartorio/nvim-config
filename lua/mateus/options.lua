-- :help options

local options = {
    backup = false,					                        -- creates a backup file
    clipboard = "unnamedplus",			                    -- allows neovim to acces the system clipboard
    cmdheight = 1,					                        -- height of the neovim command line
    completeopt = { "menuone", "noselect" },		        -- don't know exacly what this does (TODO: find out)
    conceallevel = 0,				                        -- so that `` is visible in markdown file
    fileencoding = "utf-8",				                    -- the encoding written to a file
    hlsearch = true,					                    -- highlight all matches on previous search pattern
    ignorecase = false,				                        -- (do not) ignore case in search patters
    mouse = "a",					                        -- allow the mouse to be used in neovim
    pumheight = 10,					                        -- pop up menu height (TODO: yet to see what is means)
    showmode = true,					                    -- shows (or not) the mode
    showtabline = 4,					                    -- always show tabs
    smartcase = true,				                        -- enables smart case (TODO: find out what it is)
    smartindent = true,				                        -- make indenting smarter again
    splitbelow = true,				                        -- force all horizontal splits to go below the current window
    splitright = true,				                        -- force all vertical splits to go to the right of current window
    swapfile = false,				                        -- creates (or not) a swap file
    termguicolors = true,				                    -- set term gui colors (most terminals support this)
    timeoutlen = 1000,				                        -- time to wait for a mapped sequence to complete (in milliseconds (TODO: find out what it means)
    undofile = true,					                    -- enable persistent undo
    updatetime = 300,				                        -- faster completion (4000ms default)
    writebackup = false,				                    -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    expandtab = true,				                        -- convert tab to spaces
    shiftwidth = 4,					                        -- the number of spaces inserted for each indentation
    tabstop = 4,					                        -- insert 4 spaces for a tab
    cursorline = true,                                      -- highlight the current line
    number = true,                                          -- set numbered lines
    relativenumber = false,                                 -- set relative numbered lines
    numberwidth = 4,                                        -- set number column width to 4 {default 4}
    signcolumn = "yes",                                     -- always show the sign column, otherwise it would shift the text each time
    wrap = true,                                            -- wraps text (or not)
    scrolloff = 8,                                          -- don't know what it does (TODO: find out)
    sidescrolloff = 8,                                      -- same as above (TODO: find out)
    guifont = "JetBrainsMono:h13",                              -- the font used in graphical neovim applications
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
