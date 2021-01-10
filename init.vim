"-----------------------------CONFIGS------------------------------------------
syntax enable

"Identação"
filetype plugin indent on
"set autoindent     "indentação automatica
set smartindent    "indentação geral
set cindent        "indentação para C
set tabstop=4      "tab de 4 espaços
set shiftwidth=4   "tamanho do tab na indentação
set backspace=indent,eol,start

"Geral"
set number         "numero de linha
set hidden         "melhor uso de buffer na msm janela
set cc=80          "coluna de 80 chars
set title          "muda o titulo do terminal
set nowrap         "mostrar tudo em uma linha
set backup         "gera arquivo de backup
set showcmd        "mostra comandos sendo digitados na barra inferior
set history=1000   "historico de comandos
set noswapfile     "parar de ficar me enchendo o saco com isso
set mouse=a        "utilizar o mouse
set ttimeoutlen=50 "diminuir o tempo para voltar para normal mode


"Undo"
if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir "pasta que armazena undos
set undofile "permite que o historico de undos seja salvo em um arquivo
set undolevels=1000 "tamanho do historico de undos

"Pesquisas"
set incsearch      "highlight na pesquisa enquanto é realizada
set hlsearch       "highlight apos a pesquisa ser feita

"--------------------------------PLUGINS---------------------------------------
call plug#begin('$HOME/.config/nvim/plugged')

Plug 'morhetz/gruvbox'                  "gruvbox
Plug 'dracula/vim', { 'as': 'dracula' } "DRACULA
Plug 'sheerun/vim-polyglot'             "mais syntaxes
Plug 'vim-syntastic/syntastic'          "compilador no próprio vim
Plug 'vim-airline/vim-airline'          "tab inferior com status
Plug 'vim-airline/vim-airline-themes'   "temas
Plug 'preservim/nerdtree'               "arvore para arquivos
Plug 'preservim/nerdcommenter'          "Facilita comentarios  (leader)+cc/cu

call plug#end()

"---------------------------------THEME----------------------------------------
set termguicolors
set background=dark
let g:gruvbox_termcolors = '256'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_color_column ='bg1'
let g:gruvbox_invert_selection = '1'
"let g:airline_theme = 'gruvbox'
let g:airline_theme='dracula'
set noshowmode "desabilita informacoes inferiores
let g:dracula_italic='0'

"colorscheme gruvbox
colorscheme dracula

"--------------------------------MAPPING---------------------------------------
let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>n :NERDTreeToggle<CR>    

"Setas nao funcionam mais
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"-----------------------------------Syntastic----------------------------------
"Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_remove_include_errors = 1

let g:python_highlight_space_errors = 0
set nobackup
set nowritebackup
