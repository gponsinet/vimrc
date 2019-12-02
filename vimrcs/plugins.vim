"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
" This requries that you install https://github.com/gponsinet/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" .tsx
autocmd BufEnter *.tsx set filetype=typescript.tsx
autocmd BufEnter *.handlebars,*.hdbs,*.hbs,*.hb set filetype=html.handlebars

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Installation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugins')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" VSCode +Dark Theme
Plug 'tomasiser/vim-code-dark'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helpers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline
Plug 'vim-airline/vim-airline'

" Subvert (%s improvement, ex: :Subvert/child{,ren}/adult{,s}/g )
Plug 'tpope/vim-abolish'

" Show Git Info
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Nerd Tree
Plug 'scrooloose/nerdtree'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Trailing whitespaces
Plug 'ntpeters/vim-better-whitespace'

" Editor config
Plug 'editorconfig/editorconfig-vim'

" CtrlSF
Plug 'dyng/ctrlsf.vim'

" Tig
Plug 'iberianpig/tig-explorer.vim'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'

" Fast CtrlP
Plug 'raghur/fruzzy', {'do': { -> fruzzy#install()}}

" Denite
Plug 'Shougo/denite.nvim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Coc
Plug 'jsfaint/coc-neoinclude'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> InstallPlugins()}}

" Autocomplete
" Plug 'neoclide/coc-neco'
" Plug 'neoclide/coc-sources'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Temp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Asynchronous Lint Engine
" Plug 'w0rp/ale'


" Plug 'google/vim-maktaba'

" Plug 'neoclide/jsonc.vim'

" Plug 'joukevandermaas/vim-ember-hbs'

" Plug 'bazelbuild/vim-bazel'

" Plug 'keith/swift.vim'


" TS
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

" Protobuf
Plug 'uarun/vim-protobuf'
Plug 'uber/prototool'

" Vim go
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Vim JSX
" Plug 'neoclide/vim-jsx-improve'

" JS Import
" Plug 'Galooshi/vim-import-js', { 'do': 'npm install --global import-js' }

" Vim graphql
" Plug 'jparise/vim-graphql'

" Markdown
" Plug 'suan/vim-instant-markdown', { 'do': 'npm install --global instant-markdown-d' }

call plug#end()

" Typescript
" let g:tsuquyomi_completion_detail = 1

" Go
"let g:go_highlight_build_constraints = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_types = 1
"let g:go_auto_sameids = 0
"let g:go_auto_type_info = 0
"
"let g:go_fmt_command = "goimports"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helpers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Golang
autocmd BufWritePre *.go :CocCommand editor.action.organizeImport
" set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim
" autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VSCode +Dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme codedark

" Markdown
" let g:instant_markdown_slow = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:coc_filetype_map = {
	\ 'typescript.tsx': 'typescriptreact',
	\ }

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Airline
" if you want to disable auto detect, comment out those two lines
"let g:airline#extensions#disable_rtp_load = 1
"let g:airline_extensions = ['branch', 'hunks', 'coc']

let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

function! InstallPlugins()
  call coc#util#install()
  :CocInstall coc-json coc-html coc-highlight coc-snippets coc-go coc-eslint coc-tsserver
  :!go get -u golang.org/x/lint/golint
endfunction

" highlight
" enable highlight current symbol on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Denite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <C-p> :Denite file_rec<Enter>
nnoremap <C-S-f> :Denite grep<Enter>
call denite#custom#map('insert', '<Down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<Up>', '<denite:move_to_previous_line>', 'noremap')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

map <C-p> :CtrlP<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fruzzy#usenative = 1
let g:fruzzy#sortonempty = 1 " default value

" tell denite to use this matcher by default for all sources
call denite#custom#source('_', 'matchers', ['matcher/fruzzy'])

" tell CtrlP to use this matcher
let g:ctrlp_match_func = {'match': 'fruzzy#ctrlp#matcher'}
let g:ctrlp_match_current_file = 1 " to include current file in matches<Paste>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlSF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlsf_ackprg = 'ag'

nnoremap  <C-F> :CtrlSF<space>
vnoremap  <C-F> :CtrlSF<space><C-R>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ale_completion_enabled = 1
" let g:ale_sign_error = '>>'
" let g:ale_sign_warning = '--'
" let g:ale_lint_on_text_changed = 1
" let g:ale_fix_on_save = 1
" let g:ale_javascript_eslint_use_global = 0
" let g:ale_javascript_eslint_executable = 'eslint'
" let g:ale_typescript_eslint_use_global = 0
" let g:ale_typescript_eslint_executable = 'eslint'
" let g:ale_linters = {
"       \   'javascript': ['eslint'],
"       \   'typescript': ['eslint', 'tsserver'],
"       \}
" let g:ale_fixers = {
"       \   'javascript': ['eslint'],
"       \   'typescript': ['eslint'],
"       \   'dart': ['dartfmt'],
"       \   'go': ['gofmt', 'goimports'],
"       \}
" let g:airline#extensions#ale#enabled = 1
" let g:ale_open_list = 1
" autocmd FileType qf setlocal wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1
let g:gitgutter_override_sign_column_highlight = 1
let g:gitgutter_highlight_lines = 0
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif
nnoremap <silent> <leader>d :GitGutterToggle<cr>
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green guifg=darkgreen
highlight GitGutterChange ctermfg=yellow guifg=darkyellow
highlight GitGutterDelete ctermfg=red guifg=darkred
highlight GitGutterChangeDelete ctermfg=yellow guifg=darkyellow


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=50
map <C-e> :NERDTreeToggle<cr>
vmap <C-e> :NERDTreeToggle<cr>
nmap <C-e> :NERDTreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Better Whitespace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitelines_at_eof=1

