function UsePEP8()
  setlocal tabstop=4
  setlocal shiftwidth=4
  setlocal formatoptions=t,c
  highlight ExtraWhiteSpace ctermbg=red guibg=red
  match ExtraWhiteSpace /\s\+$/
endfunction

let t_Co=256
set t_Co=256
syntax on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set tw=79
let g:syntastic_phpcs_disable=1
set formatoptions=l
set lbr

autocmd Filetype python call UsePEP8()
autocmd Filetype make setlocal noexpandtab

call pathogen#infect()
call pathogen#helptags()
filetype plugin on
filetype plugin indent on
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
colorscheme molokai

"js syntax highlighting for JSON files
autocmd Filetype json set syntax=javascript
