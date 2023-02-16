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
["K"]  = { "Show hover"             }
["gd"] = { "Goto Definition"        }
["gD"] = { "Goto declaration"       }
["gr"] = { "Goto references"        }
["gI"] = { "Goto Implementation"    }
["gs"] = { "show signature help"    }
["gl"] = { "Show line diagnostics"  }
```

#### VIM Surround uses

    For example, if you have the following sentence:

    "Vim plugins are awesome !"

    You can remove the quotation marks around the sentence by pressing the
    combination `ds"` while your cursor is anywhere between the quotation marks:

    Vim plugins are awesome !

    You can also change the double quotation marks to single quotation marks with the command `cs"'`:

    'Vim plugins are awesome !'

    Or replace them with brackets by pressing `cs'[`

    [ Vim plugins are awesome ! ]

#### snipsets for c program

https://github.com/rafamadriz/friendly-snippets/blob/main/snippets/c.json
