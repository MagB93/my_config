
" helps force plugins to load correctly when it is turned back on below
filetype off

" ======= PLUGINS =====
call plug#begin()
Plug 'tpope/vim-surround' " surround selections with things like quotes, parens, brakcets, etc.
Plug 'tpope/vim-commentary'

Plug 'pangloss/vim-javascript'

  " NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-fugitive' " Git utilities
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-gitgutter' " show the differences
Plug 'https://github.com/jceb/vim-orgmode.git'
Plug 'jalcine/cmake.vim'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'mhinz/vim-startify'  " Nice startup screen
Plug 'tpope/vim-obsession'
Plug 'https://github.com/nathanaelkane/vim-indent-guides.git'
Plug 'equalsraf/neovim-gui-shim'
Plug 'chrisbra/csv.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'w0rp/ale'
Plug 'rudrab/vimf90'
Plug 'rhysd/vim-grammarous'
Plug 'Shougo/echodoc'
Plug 'myusuf3/numbers.vim'
Plug 'wellle/targets.vim'

" Deoplete engines
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'tweekmonster/deoplete-clang2'
Plug 'poppyschmo/deoplete-latex'
Plug 'zchee/deoplete-jedi'

Plug 'Shougo/denite.nvim'
Plug 'luochen1990/rainbow'
Plug 'JuliaLang/julia-vim'
Plug 'autozimu/LanguageClient-neovim'
Plug 'roxma/nvim-completion-manager'

Plug 'https://github.com/blueyed/vim-diminactive.git'
Plug 'lervag/vimtex'
Plug 'glts/vim-texlog'
Plug 'jiangmiao/auto-pairs'
Plug 'wesQ3/vim-windowswap'
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'KabbAmine/zeavim.vim'
Plug 'https://github.com/mbbill/undotree.git'
Plug 'KabbAmine/vim-polyglot'
Plug 'vim-scripts/fortran.vim'
Plug 'jiangxincode/mpi.vim'
Plug 'honza/vim-snippets' " Snippets are separated from the engine. Add this if you want them:
Plug 'SirVer/ultisnips' " Track the engine.
Plug 'synzox/ultisnips-fortran'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'https://github.com/vim-scripts/LanguageTool.git'
Plug 'kassio/neoterm' " better terminal
Plug 'aklt/plantuml-syntax'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'potatoesmaster/i3-vim-syntax'
Plug 'junegunn/vim-easy-align'

" Tags
Plug 'szw/vim-tags'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/craigemery/vim-autotag.git'

" Colorschemes
Plug 'flazz/vim-colorschemes' " Basic colorschemes
Plug 'tomasr/molokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'fmoralesc/molokayo'  " Better molokai, requires molokai though
Plug 'https://github.com/hhsnopek/vim-firewatch.git'
Plug 'morhetz/gruvbox'

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
    set conceallevel=2

    " Highlight the curserline and column
    set cursorline
    set cursorcolumn

    " code folding
    set foldmethod=indent
    set foldlevel=4

    " Enable folding with the space bar
    nnoremap <space> za

    " Searching
    set hlsearch
    set incsearch
    set ignorecase
    set smartcase
    set showmatch
    map <leader><space> :let @/=''<cr> " clear search

    " Set the backup directory
    set clipboard=unnamed

    " ===== Keyboard shortcuts
    " Move up/down editor lines
    nnoremap j gj
    nnoremap k gk

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

    " Start the rainbow_parentheses improved stuff
    let g:rainbow_active = 1

    " Use deoplete.
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#enable_smart_case = 1

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

    nnoremap <leader>l :LanguageToolCheck<CR>
    nnoremap <leader>c :LanguageToolClear<CR>

    " Tagbar config
    nmap <F8> :TagbarToggle<CR>

    " Undo tree
    nnoremap <F4> :UndotreeToggle<CR>

    " For Ctrl + copy
    vnoremap <C-c> "*y

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

    " Fortran openmp highlighting
    let fortran_more_precise=1 "better syntax"
    let fortran_fold=1
    let fortran_fold_multilinecomments=1
    let fortran_fold_conditionals=1

    let s:extfname = expand("%:e")
    if s:extfname ==? "f90"
       let fortran_free_source=1
       unlet! fortran_fixed_source
    else
       let fortran_fixed_source=1
       unlet! fortran_free_source
    endif

    " OMP directives
    syn region fortranDirective start=/!$omp.\{-}/ end=/[^\&]$/
    syn match fortranDirective "\v!\$\s"

    " Julia config
    let g:default_julia_version = "0.6"

    " Modify the default lisp type to the julia type for neoterm
    au VimEnter,BufRead,BufNewFile *.jl set filetype=julia

    " language server
    let g:LanguageClient_autoStart = 1
    let g:LanguageClient_serverCommands = {
    \   'julia': ['julia', '--startup-file=no', '--history-file=no', '-e', '
    \       using LanguageServer;
    \       server = LanguageServer.LanguageServerInstance(STDIN, STDOUT, false);
    \       server.runlinter = true;
    \       run(server);
    \   '],
    \ }

    nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
    nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
    nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

    " NEOTERM ------    
    " mapping for leaving terminal input mode
    tnoremap <Esc> <C-\><C-n> 
    let g:neoterm_position = 'vertical'
    let g:neoterm_automap_keys = ',tt'

    nnoremap <silent> <f10> :TREPLSendFile<cr>
    nnoremap <silent> <f9> :TREPLSendLine<cr>
    vnoremap <silent> <f9> :TREPLSendSelection<cr>

    " Useful maps
    " hide/close terminal
    nnoremap <silent> ,th :call neoterm#close()<cr>
    " clear terminal
    nnoremap <silent> ,tl :call neoterm#clear()<cr>
    " kills the current job (send a <c-c>)
    nnoremap <silent> ,tc :call neoterm#kill()<cr>


    " Git commands
    command! -nargs=+ Tg :T git <args>

    " Neomake after each saving
    " autocmd! BufWritePost * Neomake
    let g:ale_set_quickfix = 1
    let g:ale_keep_list_window_open = 1
    let g:ale_open_list = 1
    let g:ale_sign_column_always = 1 " keep the gutter open
    let g:ale_sign_error = '>>'
    let g:ale_sign_warning = '--'
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'


    "==== FZF config 
    " This is the default extra key bindings
    let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

    " Default fzf layout
    " - down / up / left / right
    let g:fzf_layout = { 'down': '~40%' }
    nnoremap <c-enter> :FZF

    " In Neovim, you can set up fzf window using a Vim command
    let g:fzf_layout = { 'window': 'enew' }
    let g:fzf_layout = { 'window': '-tabnew' }

    " Customize fzf colors to match your color scheme
    let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

    " Enable per-command history.
    " CTRL-N and CTRL-P will be automatically bound to next-history and
    " previous-history instead of down and up. If you don't like the change,
    " explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
    let g:fzf_history_dir = '~/.local/share/fzf-history'


    " [Buffers] Jump to the existing window if possible
    let g:fzf_buffers_jump = 1

    " [[B]Commits] Customize the options used by 'git log':
    let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

    " [Tags] Command to generate tags file
    let g:fzf_tags_command = 'ctags -R'

    " [Commands] --expect expression for directly executing the command
    let g:fzf_commands_expect = 'alt-enter,ctrl-x'

    " Mapping selecting mappings
    nmap <leader><tab> <plug>(fzf-maps-n)
    xmap <leader><tab> <plug>(fzf-maps-x)
    omap <leader><tab> <plug>(fzf-maps-o)

    " Insert mode completion
    imap <c-x><c-k> <plug>(fzf-complete-word)
    imap <c-x><c-f> <plug>(fzf-complete-path)
    imap <c-x><c-j> <plug>(fzf-complete-file-ag)
    imap <c-x><c-l> <plug>(fzf-complete-line)

    " Advanced customization using autoload functions
    inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

    function! s:fzf_statusline()
      " Override statusline as you like
      highlight fzf1 ctermfg=161 ctermbg=251
      highlight fzf2 ctermfg=23 ctermbg=251
      highlight fzf3 ctermfg=237 ctermbg=251
      setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
    endfunction

    autocmd! User FzfStatusLine call <SID>fzf_statusline()

" ===== Colorscheme configuration
    " Visualize tabs and newlines
    set listchars=tab:▸\ ,eol:¬

    set termguicolors

    colorscheme PaperColor "seoul256
    set background=dark
    " let g:seoul256_background = 236

    map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
    let g:indent_guides_auto_colors = 2
    set ts=4 sw=4 et
    let g:indent_guides_start_level = 2
    let g:indent_guides_guide_size = 2
    let g:indent_guides_enable_on_vim_startup = 1

    " Airline config
    let g:airline_powerline_fonts = 1
    let g:airline_theme = 'papercolor'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tagbar#enabled = 1
    let g:airline#extensions#csv = 1
    let g:airline#extensions#ale#enabled = 1

    " Adds the window number to the front
    function! WindowNumber(...)
        let builder = a:1
        let context = a:2
        call builder.add_section('airline_b', ' %{tabpagewinnr(tabpagenr())} ')
        return 0
    endfunction

    call airline#add_statusline_func('WindowNumber')
    call airline#add_inactive_statusline_func('WindowNumber')
