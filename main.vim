set number                                      "Lets activate line numbers" set incsearch"
let mapleader = ','                             "Default  leader is /, changed to ,"
set linespace=41
set autowriteall
set tabstop=2


"--------Project navigation--------"
"nerdtree"
"viniger"
"controlp"


"--------------Visuals-------------"

set background=dark         
colorscheme atom-dark-256
set backspace=indent,eol,start          

"hi LineNr guibg=red
"set foldcolumn=2
"hi foldcolor guibg=bg


"--------------Load-other-.vims--------------"

so ~/.vim/plugins.vim


"--------------Auti-completions--------------"

set complete=.,w,b,u


"--------------Search--------------"
set hlsearch


"--------------Split--------------"

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"--------------Mappings--------------"

nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal"

nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle"

nmap <Leader>n :NERDTreeToggle<cr>


"--------------Automatic-command--------------"

"Automatically source vimrc file when chnaged."
augroup autosourcing
  autocmd!
  autocmd BufWritePost ~/.vim/*.vim source ~/.vimrc
augroup END
