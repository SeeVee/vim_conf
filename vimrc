" To disable a plugin, add its bundle name to the following list
let g:pathogen_disabled = []

" Example disabling vim-eco below
" call add(g:pathogen_disabled, 'vim-eco')
"call add(g:pathogen_disabled, 'vim-eco')
"call add(g:pathogen_disabled, 'vim-cjsx')
"call add(g:pathogen_disabled, 'vim-ruby')
"call add(g:pathogen_disabled, 'vim-rails')
"call add(g:pathogen_disabled, 'vim-rspec')
"call add(g:pathogen_disabled, 'vim-sensible')
"call add(g:pathogen_disabled, 'vim-sleuth')
"call add(g:pathogen_disabled, 'html5.vim')
"call add(g:pathogen_disabled, 'ultisnips')
"call add(g:pathogen_disabled, 'vim-bundler')
"call add(g:pathogen_disabled, 'vim-snippets')
"call add(g:pathogen_disabled, 'vim-surround')
"call add(g:pathogen_disabled, 'vim-coffee-script')
"call add(g:pathogen_disabled, 'vim-colors-solarized')

" Removed due to bad jsx syntax highlighting (mismatched braces)
" Replaced with yajs.vim
call add(g:pathogen_disabled, 'vim-es6')
"call add(g:pathogen_disabled, 'vim-javascript')

call pathogen#infect()
syntax on
filetype plugin indent on

set omnifunc=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 1

set autoread
set tabstop=2
"set mouse=a

" Allow backspace over everything in insert mode
:set backspace=indent,eol,start

" Solarized Theme
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
colorscheme solarized

" Dirty Cygwin hack to use block cursor for normal mode
"let &t_ti.="\e[1 q"
"let &t_SI.="\e[5 q"
"let &t_EI.="\e[1 q"
"let &t_te.="\e[0 q"

" Allow JSX highlighting in .js files
let g:jsx_ext_required = 0

" Allow manual folding by indent
"augroup vimrc
"  au BufReadPre * setlocal foldmethod=indent
"  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END

" Allow folding by indentation in coffee files
"autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
" Set default indentation to two spaces for coffee files
autocmd BufNewFile,BufReadPost *.coffee,*.eco setl shiftwidth=2 expandtab
" Set default indentation to two spaces for js and html files
autocmd BufNewFile,BufReadPost *.js,*.ejs,*.html setl shiftwidth=2 expandtab
" Set default indentation to two spaces for css, scss, and sass files
autocmd BufNewFile,BufReadPost *.css,*.scss,*.sass setl shiftwidth=2 expandtab
" Set syntax highlighting for ejs files to html
au BufNewFile,BufRead *.ejs set filetype=html
