set number
set relativenumber

syntax on
filetype plugin indent on
set termguicolors
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

set autoindent

inoremap <C-s> *
noremap <A-j> :m +1<CR>
noremap <A-k> :m -2<CR>

function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;()]*')
  let s:uri = shellescape(s:uri, 1)
  echom s:uri
  if s:uri != ""
    silent exec "!lynx '".s:uri."'"
    :redraw!
  else
    echo "No URI found in line."
  endif
endfunction
nnoremap <space> :call HandleURL()<cr>

cnoreabbrev ex Explore
