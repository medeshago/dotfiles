"indentacion
set shiftwidth=2
set tabstop=2

set number
set autoindent
set mouse=a

"Sintaxis e indentación
syntax on
filetype plugin indent on

"Grep
set grepprg=grep\ -nH\ $*

let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

set wildmode=longest:full
set wildmenu
set autochdir

"StatusLine
set laststatus=2
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor
set statusline+=%P

colorscheme desert256

"delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

"Resaltar línea y columna
hi CursorLine term=bold cterm=bold guibg=Grey40 ctermbg=235
hi CursorColumn ctermbg=000
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"Cursor
highlight Cursor guifg=white guibg=black

"Arreglo incompatibilidad delimitMate y supertab
let g:SuperTabCrMapping = 0

call pathogen#infect() 

no - $
no _ ^
no N <C-w><C-w>
no H 8<Down>
no T 8<Up>
no D <C-w><C-r>
"map! ii <Esc>

set t_Co=256
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,htmldjango,jinjahtml,eruby,mako source ~/.vim/plugin/closetag.vim

"Detect sql as filetype

augroup filetypedetect
	  au! BufRead,Bufnewfile *.sql setfiletype sql
augroup END

