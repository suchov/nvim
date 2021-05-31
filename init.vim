"  Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

call plug#end()

" set to show line numbers
set number
colorscheme morning
