" Don't try to be vi compatible
set nocompatible

" helps force plugins to load correctly when it is turned back on below
filetype off

" ======= PLUGINS =====
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround' " surround selections with things like quotes, parens, brakcets, etc.
Plug 'tpope/vim-markdown'
Plug 'pangloss/vim-javascript'

  " NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'tpope/vim-fugitive' " Git utilities

Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter' " Comment stuff out 
Plug 'https://github.com/jalvesaq/Nvim-R.git'
Plug 'mhinz/vim-startify'  " Nice startup screen
Plug 'https://github.com/xolox/vim-session.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/nathanaelkane/vim-indent-guides.git'
Plug 'Shougo/deoplete.nvim'
Plug 'https://github.com/klen/python-mode.git'
Plug 'https://github.com/xolox/vim-misc.git'
Plug 'hynek/vim-python-pep8-indent'
Plug 'tmhedberg/SimpylFold'
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/kien/rainbow_parentheses.vim.git' " Nice parenthesis
Plug 'JuliaEditorSupport/deoplete-julia'
Plug 'JuliaLang/julia-vim'
Plug 'https://github.com/blueyed/vim-diminactive.git'
Plug 'lervag/vimtex'
Plug 'glts/vim-texlog'
Plug 'fs111/pydoc.vim'
Plug 'townk/vim-autoclose'
Plug 'sjl/gundo.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'https://github.com/notpratheek/Pychimp-vim.git'
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'KabbAmine/zeavim.vim'
Plug 'KabbAmine/vim-polyglot'
Plug 'honza/vim-snippets' " Snippets are separated from the engine. Add this if you want them:
Plug 'SirVer/ultisnips' " Track the engine.
Plug 'https://github.com/vim-scripts/gmsh.vim.git'
Plug 'https://github.com/vim-scripts/LanguageTool.git'

" Colorschemes
Plug 'flazz/vim-colorschemes' " Basic colorschemes
Plug 'KabbAmine/yowish.vim'
Plug 'vim-scripts/relaxed-green'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo'  " Better molokai, requires molokai though
Plug 'https://github.com/freeo/vim-kalisi'
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'https://github.com/hhsnopek/vim-firewatch.git'
Plug 'mhartington/oceanic-next'
Plug 'https://github.com/limadm/vim-blues.git'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/jacoborus/tender.vim.git'

call plug#end()


" ===== General configuration
    " Allow hidden buffers
    set hidden

    " Encoding
    set encoding=utf-8

    " Rendering
    set ttyfast

    " Turn on syntax highlighting
    let python_highlight_all=1
    filetype plugin indent on
    syntax on

    set laststatus=2

    " , is the leader key
    let mapleader = ","

    set splitbelow
    set splitright

    " Security
    set modelines=0

    " Show line numbers, and turn on relative line numbers
    set number
    set relativenumber

    " Show file stats
    set ruler

    " Blink cursor on error instead of beeping (grr)
    set visualbell

    " Whitespace
    set wrap
    set textwidth=120
    set colorcolumn=120
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab
    set autoindent
    set fileformat=unix
    set noshiftround

    " Cursor motion
    set scrolloff=3
    set backspace=indent,eol,start
    set matchpairs+=<:> " use % to jump between pairs
    runtime! macros/matchit.vim

    " enhanved command line completion
    set wildmenu
    set wrapmargin=8
    set linebreak
    set showbreak=...
    set list

    " Last line
    set showmode
    set showcmd

    "Enable the tabline at the top
    set showtabline=2
    set conceallevel=0
    let g:tex_conceal = ""

    " Highlight the curserline and column
    set cursorline
    set cursorcolumn

    " code folding
    set foldmethod=indent
    set foldlevel=4

    " Enable folding with the space bar
    nnoremap <space> za

    "autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
    " Searching
    set hlsearch
    set incsearch
    set ignorecase
    set smartcase
    set showmatch
    map <leader><space> :let @/=''<cr> " clear search

    " Set the backup directory
    set backupdir=~/.vim-tmp,~/.tmp,~/tmp,~/var/tmp,/tmp
    set directory=~/.vim-tmp,~/.tmp,~/.tmp,/var/tmp,/tmp
    set clipboard=unnamed
" ===== Keyboard shortcuts
    " Move up/down editor lines
    nnoremap j gj
    nnoremap k gk
    nnoremap <C-z>:%s/,\ */,\ /g<CR>:%s/#\ */#\ /g<CR>:noh<CR>

    " for moving to a different split view
    noremap <C-J> <C-W><C-J>
    noremap <C-K> <C-W><C-K>
    noremap <C-L> <C-W><C-L>
    noremap <C-H> <C-W><C-H>

    " QUICK SAVE
    " ==========
    noremap  <C-s> :wa<CR>
    inoremap <C-s> <Esc>:wa<CR>
    noremap  <C-q> :mksession!<CR>:qa<CR>
    inoremap <C-q> <Esc>:mksession!<CR>:qa<CR>

    
    " Remap help key.
    inoremap <F1> <ESC>:set invfullscreen<CR>a
    nnoremap <F1> :set invfullscreen<CR>
    vnoremap <F1> :set invfullscreen<CR>
    
    "Disable arrow keys
    noremap <Up> <NOP>
    noremap <Down> <NOP>
    noremap <Right> <NOP>
    noremap <Left> <NOP>

    inoremap <Up> <NOP>
    inoremap <Down> <NOP>
    inoremap <Right> <NOP>
    inoremap <Left> <NOP>

" ===== Plugin configuration
    
    " Settings for python-mode "
    let g:pymode = 1
    let g:pymode_lint = 1
    let g:pymode_lint_on_fly = 0
    let g:pymode_motion = 1
    let g:pymode_python = 'python3'

    " Snippets config
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

    " toogle NERDtree via ctrl n
    map <C-n> :NERDTreeToggle<CR>
    
    " toggle gundo
    nnoremap <F4>:GundoToggle<CR>

    " LateX vonfig
    let g:tex_fold_enabled=1

    " Textmate holdou
    let g:livepreview_previewer = 'okular'
    nmap <F12> :LLPStartPreview<cr>

    let g:tex_flavor = 'latex'
   
    " language tool config
    let g:languagetool_jar='$HOME/opt/java/LanguageTool-3.5/languagetool-commandline.jar'
   
    nnoremap <leader>l :LanguageToolCheck<CR>
    nnoremap <leader>c :LanguageToolClear<CR>

    " For Ctrl + copy
    vnoremap <C-c> "*y
    nmap <F12> :LLPStartPreview<cr>

    " Fugitive configureation
    nnoremap <space>ga :Git add %:p<CR><CR>
    nnoremap <space>gs :Gstatus<CR>
    nnoremap <space>gc :Gcommit -v -q<CR>
    nnoremap <space>gt :Gcommit -v -q %:p<CR>
    nnoremap <space>gd :Gdiff<CR>
    nnoremap <space>ge :Gedit<CR>
    nnoremap <space>gr :Gread<CR>
    nnoremap <space>gw :Gwrite<CR><CR>
    nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
    nnoremap <space>gp :Ggrep<Space>
    nnoremap <space>gm :Gmove<Space>
    nnoremap <space>gb :Git branch<Space>
    nnoremap <space>go :Git checkout<Space>
    nnoremap <space>gps :Dispatch! git push<CR>
    nnoremap <space>gpl :Dispatch! git pull<CR>

" ===== Colorscheme configuration
    " Visualize tabs and newlines
    set listchars=tab:▸\ ,eol:¬
   
    set termguicolors

    colorscheme firewatch
    set background=dark

    let g:indent_guides_auto_colors = 2
    set ts=2 sw=2 et
    let g:indent_guides_start_level = 4
    let g:indent_guides_guide_size = 1

    let g:lightline = {
          \ 'colorscheme': 'wombat',
          \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
          \             [ 'fugitive', 'filename' ] ]
          \ },
          \ 'component_function': {
          \   'fugitive': 'LightlineFugitive',
          \   'readonly': 'LightlineReadonly',
          \   'modified': 'LightlineModified',
          \   'filename': 'LightlineFilename'
          \ },
          \ 'separator': { 'left': '|', 'right': '|' },
          \ 'subseparator': { 'left': '|', 'right': '|' }
          \ }

    function! LightlineModified()
      if &filetype == "help"
        return ""
      elseif &modified
        return "+"
      elseif &modifiable
        return ""
      else
        return ""
      endif
    endfunction

    function! LightlineReadonly()
      if &filetype == "help"
        return ""
      elseif &readonly
        return "r-"
      else
        return ""
      endif
    endfunction

    function! LightlineFugitive()
      return exists('*fugitive#head') ? fugitive#head() : ''
    endfunction

    function! LightlineFilename()
      return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
           \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
           \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
    endfunction
