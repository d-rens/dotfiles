vim.g.vimtex_view_general_viewer = 'zathura'
vim.g.vimtex_compiler_latexmk_engines = {
  _ = '-xelatex'
}
vim.g.tex_comment_nospell = 1
vim.g.vimtex_compiler_progname = 'nvr'
vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
vim.g.vimtex_quickfix_ignore_filters = {
  'Underfull',
  'Overfull',
  'Negative'
}

vim.keymap.set("n", "<Leader>fg", '<Esc>:!inkscape-figures create figures/')
vim.keymap.set("n", "<Leader>efg", ':!inkscape-figures edit figures/ <Enter>')
