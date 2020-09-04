" ~/.config/nvim/init.vim

" PLUG INS
"
" For plug-in instructions, visit: 'vim.org/scripts/script.php?script_id=4828'
" On Arch-based distros, install the AUR package 'vim-plug'
" Don't forget to call :PlugInstall after adding new plug-ins to your config!

  call plug#begin('~/.vim/plugged')

" Dracula Theme
  Plug 'dracula/vim', { 'as': 'dracula' }

" C Sharp support
  Plug 'OmniSharp/omnisharp-vim'

" Conquer of Completion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  call plug#end()

" Termguicolors
  set termguicolors

" Colorscheme
  colorscheme dracula

" Don't try to be vi compatible
  set nocompatible

" Helps force plugins to load correctly when it is turned back on below
  filetype off

" Turn on syntax highlighting
  syntax on

" For plugins to load correctly
  filetype plugin indent on

" let mapleader = ","

" Security
  set modelines=0

" Show line numbers
  set number

" Show file stats
  set ruler

" Encoding
  set encoding=utf-8

" Whitespace
  set wrap
  set textwidth=79
  set formatoptions=tcqrn1
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab
  set noshiftround

" Cursor motion
  set scrolloff=3
  set backspace=indent,eol,start
  set matchpairs+=<:> " use % to jump between pairs
  runtime! macros/matchit.vim

" Move up/down editor lines
  nnoremap j gj
  nnoremap k gk

" Allow hidden buffers
  set hidden

" Rendering
  set ttyfast

" Status bar
  set laststatus=2

" Last line
  set showmode
  set showcmd

" Searching
  nnoremap / /\v
  vnoremap / /\v
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase
  set showmatch
  map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
  inoremap <F1> <ESC>:set invfullscreen<CR>a
  nnoremap <F1> :set invfullscreen<CR>
  vnoremap <F1> :set invfullscreen<CR>

" Formatting
  map <leader>q gqip

" Visualize tabs and newlines
  set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
  map <leader>l :set list!<CR> " Toggle tabs and EOL
