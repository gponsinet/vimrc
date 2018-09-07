"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
" This requries that you install https://github.com/gponsinet/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Installation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugins')

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

    " Javscript
    Plug 'pangloss/vim-javascript'

    " ES7
    " Plug 'kern/vim-es7'

    " JSX
    Plug 'maxmellon/vim-jsx-pretty'
    " Plug 'mxw/vim-jsx'

    " HTML5
    " Plug 'othree/html5.vim'

    " JS
    "Plug 'othree/javascript-libraries-syntax.vim'

    " Auto import JS
    Plug 'trotzig/import-js'

    " yajs
    Plug 'othree/yajs.vim'

    " ES
    Plug 'othree/es.next.syntax.vim'

    " Prettier
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

    " Solarized Themes
    Plug 'altercation/vim-colors-solarized'

    " VSCode +Dark Theme
    Plug 'tomasiser/vim-code-dark'

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Async Lint Error
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_text_changed = 1
let g:ale_fix_on_save = 1
let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_fixers = {
\   'javascript': ['prettier-eslint'],
\}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:javascript_plugin_flow = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Golang
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VSCode +Dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme codedark
let g:airline_theme = 'codedark'


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
