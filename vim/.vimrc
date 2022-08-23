if has('termguicolors')
  set termguicolors
endif

let g:airline_theme='gruvbox'

set background=dark
set noshowmode
set number

autocmd vimenter * ++nested colorscheme gruvbox

packloadall

syntax on
