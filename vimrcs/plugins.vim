"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
" This requries that you install https://github.com/gponsinet/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Installation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugins')

" Language server client
Plug 'natebosch/vim-lsc', { 'do': './install-langserver.sh' }

" Coc
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Denite
Plug 'Shougo/denite.nvim'

" Flutter hot reload
Plug 'reisub0/hot-reload.vim'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Objective C
Plug 'b4winckler/vim-objc'

" Editor Config
Plug 'editorconfig/editorconfig-vim'

" Fugitive
Plug 'tpope/vim-fugitive'

" Graphql
Plug 'jparise/vim-graphql'

" Swift
Plug 'keith/swift.vim'

" GoLang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Ctags
Plug 'craigemery/vim-autotag'

" Colorizer
Plug 'chrisbra/colorizer'

" Addon Manager
Plug 'marcweber/vim-addon-manager'

" Tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" JSON
Plug 'leshill/vim-json'

" Javscript
Plug 'pangloss/vim-javascript'

" ES7
" Plug 'kern/vim-es7'

" JSX
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'mxw/vim-jsx'

" HTML5
" Plug 'othree/html5.vim'

" JS
"Plug 'othree/javascript-libraries-syntax.vim'

" Auto import JS
" Plug 'trotzig/import-js
Plug 'Galooshi/vim-import-js', { 'do': 'yarn global add import-js' }

" yajs
" Plug 'othree/yajs.vim'

" ES
" Plug 'othree/es.next.syntax.vim'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Solarized Themes
Plug 'altercation/vim-colors-solarized'

" Base16 theme
Plug 'chriskempson/base16-vim'

" VSCode +Dark Theme
Plug 'tomasiser/vim-code-dark'

" Glow in the dark
Plug 'kenwheeler/glow-in-the-dark-gucci-shark-bites-vim'

" Challenger deep
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" ES6 Scheme for neovim
Plug 'mhartington/oceanic-next'

" Nova Theme
Plug 'trevordmiller/nova-vim'

" Asynchronous Lint Engine
Plug 'w0rp/ale'

" Syntastic
" Plug 'vim-syntastic/syntastic'

" Find file with Ctrl+P
Plug 'ctrlpvim/ctrlp.vim'

" AG
Plug 'rking/ag.vim'

" ACK
Plug 'mileszs/ack.vim'

" Search & Replace String with Ctrl+Shift+F
Plug 'dyng/ctrlsf.vim'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Nerd Tree
Plug 'scrooloose/nerdtree'

" Auto complete
Plug 'valloric/youcompleteme', { 'do': './install.py --all' }

" Snippets
Plug 'honza/vim-snippets'

" Auto Indent
Plug 'godlygeek/tabular'

" Display Trailing Whitespace
Plug 'bronson/vim-trailing-whitespace'

" Surrounding
Plug 'tpope/vim-surround'

" Show Git Info
Plug 'airblade/vim-gitgutter'

" Eslint
Plug 'eslint/eslint'


call plug#end()




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editor Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:autotagExcludeSuffixes = [
      \ '.git',
      \ '.svn',
      \ '.hg',
      \ 'min',
      \ 'vendor',
      \ '\*.min.\*',
      \ '\*.map',
      \ '\*.swp',
      \ '\*.bak',
      \ '\*.pyc',
      \ '\*.class',
      \ '\*.sln',
      \ '\*.Master',
      \ '\*.csproj',
      \ '\*.csproj.user',
      \ '\*.cache',
      \ '\*.dll',
      \ '\*.pdb',
      \ 'tags',
      \ 'cscope.\*',
      \ '\*.tar.\*',
      \ 'node_modules',
      \ 'bower_components',
      \ 'dist',
      \ 'test',
      \ 'tests',
      \ '.tmp',
      \ '*bundle.*'
      \]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => JS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:used_javascript_libs = 'react'
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
" TODO: import on save
" fun! ImportJS()
" call :ImportJSFix
" endfun
" if has("autocmd")
"      autocmd BufWritePre *.js :call ImportJS()
" endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Golang
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VSCode +Dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme base16-default-dark
" let base16colorspace=256  " Access colors present in 256 colorspace
" set termguicolors

colorscheme codedark
" set g:airline_theme = 'codedark'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Glow in the +Dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme sharkbites
" set background=dark
" let g:airline_theme = 'sharkbites'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Challenger Deep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme challenger_deep
" set g:airline_theme = 'codedark'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Solarized Dark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme solarized
"set background=dark
"let g:airline_theme = 'solarized'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CTRL-P
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-n>'
map <C-p> :CtrlP<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Addon Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible | filetype indent plugin on | syn on
fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/addons'

  " Force your ~/.vim/after directory to be last in &rtp always:
  " let g:vim_addon_manager.rtp_list_hook = 'vam#ForceUsersAfterDirectoriesToBeLast'

  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
          \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif

  " This provides the VAMActivate command, you could be passing plugin names, too
  call vam#ActivateAddons([], {})
endfun
call SetupVAM()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
VAMActivate vim-snippets snipmate


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlSF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlsf_ackprg = 'ag'

nnoremap  <C-F> :CtrlSF<space>
vnoremap  <C-F> :CtrlSF<space><C-R>"
"nmap     <C-S-f> <Plug>CtrlSFPrompt
"vmap     <C-S-f> <Plug>CtrlSFVwordPath
"vmap     <C-S-F> <Plug>CtrlSFVwordExec
"nmap     <C-F>n <Plug>CtrlSFCwordPath
"nmap     <C-F>p <Plug>CtrlSFPwordPath
"nnoremap <C-F>o :CtrlSFOpen<CR>
"nnoremap <C-F>t :CtrlSFToggle<CR>
"inoremap <C-F>t <Esc>:CtrlSFToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  Multiple Cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


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
" => surround.vim config
" Annotate strings with gettext
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1
let g:gitgutter_highlight_lines = 0
nnoremap <silent> <leader>d :GitGutterToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Swift
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Async Lint Error
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ale_completion_enabled = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_text_changed = 1
let g:ale_fix_on_save = 1
let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_fixers = {
      \   'javascript': ['prettier-eslint'],
      \   'dart': ['dartfmt'],
      \}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Language server client
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:lsc_server_commands = {
"       \  'dart': 'dart_language_server',
"       \ 'javascript': 'js-langserver',
"       \ 'typescript': 'javascript-typescript-langserver',
"       \ 'flow': 'flow-language-server',
"       \  'go': 'golsp',
"       \}
" let g:lsc_enable_autocomplete = v:true
" let g:lsc_auto_map = {
"       \ 'GoToDefinition': 'C-d',
"       \ 'FindReferences': 'gr',
"       \ 'NextReference': '<C-n>',
"       \ 'PreviousReference': 'gn',
"       \ 'FindImplementations': 'gI',
"       \ 'FindCodeActions': 'ga',
"       \ 'DocumentSymbol': 'go',
"       \ 'WorkspaceSymbol': 'gS',
"       \ 'ShowHover': 'v:true',
"       \ 'SignatureHelp': '<C-m>',
"       \ 'Completion': 'completefunc',
"       \}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Conquer of completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" if hidden not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

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

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'codedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }

" Shortcuts for denite interface
" Show extension list
nnoremap <silent> <space>e  :<C-u>Denite coc-extension<cr>
" Show symbols of current buffer
nnoremap <silent> <space>o  :<C-u>Denite coc-symbols<cr>
" Search symbols of current workspace
nnoremap <silent> <space>t  :<C-u>Denite coc-workspace<cr>
" Show diagnostics of current workspace
nnoremap <silent> <space>a  :<C-u>Denite coc-diagnostic<cr>
" Show available commands
nnoremap <silent> <space>c  :<C-u>Denite coc-command<cr>
" Show available services
nnoremap <silent> <space>s  :<C-u>Denite coc-service<cr>
" Show links of current buffer
nnoremap <silent> <space>l  :<C-u>Denite coc-link<cr>

