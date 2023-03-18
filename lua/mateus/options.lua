-- :help options
vim.opt.backup = false					                      -- creates a backup file
vim.opt.clipboard = "unnamedplus"			                -- allows neovim to acces the system clipboard
vim.opt.cmdheight = 1					                        -- height of the neovim command line
vim.opt.completeopt = { "menuone", "noselect" }		    -- don't know exacly what this does (TODO: find out)
vim.opt.conceallevel = 0				                      -- so that `` is visible in markdown file
vim.opt.fileencoding = "utf-8"				                -- the encoding written to a file
vim.opt.hlsearch = true					                      -- highlight all matches on previous search pattern
vim.opt.ignorecase = false				                    -- (do not) ignore case in search patters
vim.opt.mouse = "a"					                          -- allow the mouse to be used in neovim
vim.opt.pumheight = 10					                      -- pop up menu height (TODO: yet to see what is means)
vim.opt.showmode = true					                      -- shows (or not) the mode
vim.opt.showtabline = 4					                      -- always show tabs
vim.opt.smartcase = true				                      -- enables smart case (TODO: find out what it is)
vim.opt.smartindent = true				                    -- make indenting smarter again
vim.opt.splitbelow = true				                      -- force all horizontal splits to go below the current window
vim.opt.splitright = true				                      -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false				                      -- creates (or not) a swap file
vim.opt.termguicolors = true				                  -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000				                      -- time to wait for a mapped sequence to complete (in milliseconds (TODO: find out what it means)
vim.opt.undofile = true					                      -- enable persistent undo
vim.opt.updatetime = 300				                      -- faster completion (4000ms default)
vim.opt.writebackup = false				                    -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true				                      -- convert tab to spaces
vim.opt.shiftwidth = 4					                      -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4					                          -- insert 4 spaces for a tab
vim.opt.cursorline = true                             -- highlight the current line
vim.opt.number = true                                 -- set numbered lines
vim.opt.relativenumber = false                        -- set relative numbered lines
vim.opt.numberwidth = 4                               -- set number column width to 4 {default 4}
vim.opt.signcolumn = "yes"                            -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = true                                   -- wraps text (or not)
vim.opt.scrolloff = 8                                 -- don't know what it does (TODO: find out)
vim.opt.sidescrolloff = 8                             -- same as above (TODO: find out)
vim.opt.guifont = "monospace:h15"                                  -- the font used in graphical neovim applications

vim.opt.shortmess:append("c")
