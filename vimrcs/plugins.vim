"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/gponsinet/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Installation
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugins')

    " Addon Manager
    Plug 'marcweber/vim-addon-manager'

    " Tabline
    Plug 'vim-airline/vim-airline'

    " Javscript
    Plug 'pangloss/vim-javascript'

    " ES7
    " Plug 'kern/vim-es7'

    " JSX
    Plug 'mxw/vim-jsx'

    " HTML5
    " Plug 'othree/html5.vim'

    " Prettier
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

    " VSCode +Dark Theme
    Plug 'tomasiser/vim-code-dark'

    " ES6 Scheme for neovim
    Plug 'mhartington/oceanic-next'

    " Nova Theme
    Plug 'trevordmiller/nova-vim'

    " Asynchronous Lint Engine
    Plug 'w0rp/ale'

    " Find file with Ctrl+P
    Plug 'ctrlpvim/ctrlp.vim'

    " Search & Replace String with Ctrl+Shift+F
    Plug 'dyng/ctrlsf.vim'

    " Nerd Tree
    Plug 'scrooloose/nerdtree'

    " Auto complete
    Plug 'valloric/youcompleteme'

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

call plug#end()

""""""""""""""""""""""""""""""
" => Ale
""""""""""""""""""""""""""""""
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_text_changed = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {
\   'javascript': ['prettier-eslint'],
\}

""""""""""""""""""""""""""""""
" => Javascript
""""""""""""""""""""""""""""""
let g:javascript_plugin_flow = 1


""""""""""""""""""""""""""""""
" => VSCode +Dark
""""""""""""""""""""""""""""""
colorscheme codedark

""""""""""""""""""""""""""""""
" => Airline
""""""""""""""""""""""""""""""
let g:airline_theme = 'codedark'


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <C-p> :CtrlP<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

""""""""""""""""""""""""""""""
" => Addon Manager
""""""""""""""""""""""""""""""
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


""""""""""""""""""""""""""""""
" Snippets
"""""""""""""""""""""""""""""
VAMActivate vim-snippets snipmate


""""""""""""""""""""""""""""""
" => CtrlSF
""""""""""""""""""""""""""""""
"nmap     <C-S-f> <Plug>CtrlSFPrompt
"vmap     <C-S-f> <Plug>CtrlSFVwordPath
"vmap     <C-S-F> <Plug>CtrlSFVwordExec
"nmap     <C-F>n <Plug>CtrlSFCwordPath
"nmap     <C-F>p <Plug>CtrlSFPwordPath
"nnoremap <C-F>o :CtrlSFOpen<CR>
"nnoremap <C-F>t :CtrlSFToggle<CR>
"inoremap <C-F>t <Esc>:CtrlSFToggle<CR>


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
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-d>"


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
nnoremap <silent> <leader>d :GitGutterToggle<cr>
