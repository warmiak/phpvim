" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Editor 
Plug 'cormacrelf/vim-colors-github'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'

Plug 'preservim/nerdtree'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Hacking
Plug 'tpope/vim-commentary'
Plug 'sumpygump/php-documentor-vim'
Plug 'alvan/vim-php-manual'
Plug 'mattn/emmet-vim'

" Code Analyse
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'vim-vdebug/vdebug'
Plug 'stephpy/vim-php-cs-fixer'

" Initialize plugin system
call plug#end()
