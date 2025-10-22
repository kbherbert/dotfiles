if has('termguicolors')
  set termguicolors
endif

"Gruvbox color scheme installation instructions:
"https://github.com/morhetz/gruvbox/wiki/Installation
"git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox
let g:airline_theme='gruvbox'

"vim-airline installation instructions:
"https://github.com/vim-airline/vim-airline?tab=readme-ov-file#installation
"git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline

set background=dark
set noshowmode
set number

autocmd vimenter * ++nested colorscheme gruvbox

packloadall

syntax on
