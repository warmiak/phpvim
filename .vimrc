so ~/.vim/addons.vim


syntax on
filetype plugin on
set encoding=UTF-8
set number
set hidden
set cursorline
set laststatus=2
set noswapfile
set nowrap
set nobackup
set nowritebackup
set hlsearch
set incsearch
set autoread
" set t_Co=256
" set term=screen-256color
set history=1000
set undolevels=1000
set noerrorbells
set pastetoggle=<F2>
set completeopt=noinsert,menuone,noselect
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  " Disable Auto Comment
let g:indentLine_char = '|'
nmap <leader><space> :nohlsearch <cr>
set nocompatible
set backspace=indent,eol,start


set background=light
colorscheme PaperColor
let g:airline_theme='papercolor'


:hi TabLineFill ctermfg=Gray ctermbg=Gray
:hi TabLine ctermfg=White ctermbg=DarkGray
:hi TabLineSel ctermfg=White ctermbg=DarkBlue


" Indent Settings
set shiftwidth=4
set softtabstop=4
set tabstop=4
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype typoscript setlocal ts=2 sw=2 sts=0 expandtab


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" PHP DocBlocks
let g:pdv_cfg_Package = 'Finanztrends'
let g:pdv_cfg_Author = 'Peter Wolkiewicz <peter.wolkiewicz@finanztrends.de>'
" let g:pdv_cfg_ClassTags = ["package","author","version"]
let g:pdv_cfg_ClassTags = ["author"]

au BufRead,BufNewFile *.php inoremap <buffer> <leader>c :call PhpDoc()<CR>
au BufRead,BufNewFile *.php nnoremap <buffer> <leader>c :call PhpDoc()<CR>
au BufRead,BufNewFile *.php vnoremap <buffer> <leader>c :call PhpDocRange()<CR>


" Emmet Settimgs
let g:user_emmet_mode='a'
autocmd FileType html,css,php,fluid EmmetInstall
let g:user_emmet_leader_key='<C-e>'


" Tagbar Settings
nmap <C-m> :TagbarToggle<CR>


" PHP-CS-Fixer Settings
let g:php_cs_fixer_rules = "@PSR2"


"Ale Settings
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_enter = 0
let g:ale_sign_column_always = 1
let g:ale_lint_on_save = 1
let g:ale_sign_error = '⚑'
let g:ale_sign_warning = '⚐'
let g:ale_set_quickfix = 1
let g:ale_open_list = 1

" VDebug Settings
" let g:vdebug_options.path_maps = {"/home/user/scripts": "/home/jon/php"}
" let g:vdebug_options["path_maps"] = {
"     \       "/mySuperProject": "/home/mySuperUser/workspace/mySuperProject"
"     \}


set mouse=n
let g:NERDTreeMouseMode=3 
set ttymouse=xterm2


" NerdTree Settings
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" CTRLP Settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_prompt_mappings = {
			\ 'AcceptSelection("e")': ['<2-LeftMouse>'],
			\ 'AcceptSelection("t")': ['<cr>'],
			\ }
			

" Fuzzy Finder Settings
nnoremap <leader>a :Rg<space>
nnoremap <leader>A :exec "Rg ".expand("<cword>")<cr>
autocmd VimEnter * command! -nargs=* Rg
			\ call fzf#vim#grep(
			\   'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
			\   <bang>0 ? fzf#vim#with_preview('up:60%')
			\           : fzf#vim#with_preview('right:50%:hidden', '?'),
			\   <bang>0)
			


