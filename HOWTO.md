# how to use shortcuts in nvim

### telescope commands

```
"<leader>ff", -- find files within current working directory, respects .gitignore
"<leader>fs", -- find string in current working directory as you type
"<leader>fc", -- find string under cursor in current working directory
"<leader>fb", -- list open buffers in current neovim instance
"<leader>fh", -- list available help tags
```

### tab commands

```
"<leader>to" -- open new tab
"<leader>tx" -- close current tab
"<leader>tn" -- go to next tab
"<leader>tp" -- go to prev tab
```

### lsp saga commands

```
"gf"         : Lspsaga lsp_finder<CR>                  -- show definition, references
"gD"         :                                         -- got to declaration
"gd"         : Lspsaga peek_definition<CR>             -- see definition and make edits in window
"gi"         : lua vim.lsp.buf.implementation()<CR>    -- go to implementation
"<leader>ca" : Lspsaga code_action<CR>                 -- see available code actions
"<leader>rn" : Lspsaga rename<CR>                      -- smart rename
"<leader>D"  : Lspsaga show_line_diagnostics<CR>       -- show  diagnostics for line
"<leader>d"  : Lspsaga show_cursor_diagnostics<CR>     -- show diagnostics for cursor
"[d"         : Lspsaga diagnostic_jump_prev<CR>        -- jump to previous diagnostic in buffer
"]d"         : Lspsaga diagnostic_jump_next<CR>        -- jump to next diagnostic in buffer
"K"          : Lspsaga hover_doc<CR>                   -- show documentation for what is under cursor
"<leader>o"  : LSoutlineToggle<CR>                     -- see outline on right hand side
```
