set scrolloff=8 "start scrolling when you are lines from a margin
set number "show line numbers
set numberwidth=1 "Line numbers width
    
set smartindent
set tabstop=4 "set tab character to 4 characters
set expandtab
set shiftwidth=4 "indent width for autoindent

"Show status line.
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

"Function to show current working directory
function! CurDir()
	let curdir = substitute(getcwd(), '/Users/simon/', "~/", "g")
	return curdir
endfunction

"Function to show whether you are in paste mode or not
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	else
		return ''
	endif
endfunction

"invert paste mode
"use this instead of pastetoggle to redraw statusline
nnoremap <c-p> :set invpaste <CR>

nnoremap j gj
nnoremap k gk
nnoremap <up> g<up>
nnoremap <down> g<down>

"Shows cmd in right bottom corner
set showcmd

set t_Co=256 "Terminal colors
colorscheme desert256 "desert256 colorscheme: requires desert256 colorscheme
syntax on "enable syntax highligthing

"Nerdtree shortcut to open it: requires nerdtree plugin
map <c-n> :NERDTreeToggle<CR>

set showmatch "Show matching brackets
