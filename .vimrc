set nocompatible "throw off compatiblilty with plain vi (good for us)
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins

set exrc " Enable directory-local .vimrc files
set secure " but only enable dir-local .vimrc file if the file is owned by you

set background=dark "dunno if this does anything in ubuntu...
syntax on "turn on syntax highlighting
set number "turn on line numbers
set mouse=a "enables mouse usage in any mode

scriptencoding utf-8 "so it will encode everything in utf-8

set t_Co=256

" Keep undo history across sessions, by storing in file.
" Only works all the time.
silent !mkdir -p ~/.vim/backups > /dev/null 2>&1
silent !mkdir -p ~/.vim/backups/swaps > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile "create a persistent undo file

set backupdir=~/.vim/backups "sets the backups away from the working folder
set backup "enables backup

set directory=~/.vim/backups/swaps
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

set showmode "displays current mode

color delek "sets the colorscheme
set cursorline "highlight current line
" colors highlighted line
hi cursorline term=bold cterm=bold gui=none guibg=Grey9
"hi CursorLine term=none cterm=none ctermbg=236 guibg=Grey40 "this is another option
set ruler " show the ruler
set showcmd " show actually typed commands in the command line
set autoread "watch for other file changes while editing
set backspace=indent,eol,start "make backspace work like everywhere else
set linebreak "break the too long lines at words, not at characters

set incsearch	"find as you type search
set hlsearch	"highlight search terms
set ignorecase	"case insensitive search
set smartcase	"when uppercase is present the search will be case-sensitive
set gdefault 	"this makes the default search/replace global parameter default (you don't have to write it anymore)
set showmatch	"highlight matching bracket

"improves auto-completion. 'longest' won't replace your word with the first
"match and with 'menuone' the menu will pop up if only one match found
set completeopt=longest,menuone,preview

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
" eg.: j and k will now behave like gj and gk
set nostartofline

set textwidth=128                " max text width is 128(it matters when formatting with eg.: =)
set formatoptions=tcrql         " t - autowrap to textwidth
" c - autowrap comments to textwidth
" r - autoinsert comment leader with <Enter>
" q - allow formatting of comments with :gq
" l - don't format already long lines

set smarttab " um, automagically smart tab. see :help smarttab
set tabstop=4 	"sets tab size to 4
set shiftwidth=4 "sets the shifting / indentation size to 4
set scrolloff=5	" keep at least 5 lines around the cursor

set list                        " show invisible characters
set listchars=tab:>·,trail:·    " but only show tabs and trailing whitespace
set wildmenu                    " turn on wild menu :e <Tab>
set wildmode=list:longest       " set wildmenu to list choice

set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels
set nofoldenable "dont fold by default

"------ Indents and tabs ------"
"
set autoindent                  " set the cursor at same indent as line above
set cindent                 " try to be smart about indenting (C-style)
set expandtab                   " expand <Tab>s with spaces; death to tabs!
set shiftwidth=4                " spaces for each step of (auto)indent
set softtabstop=4               " set virtual tab stop 
set tabstop=4                   " for proper display of files with tabs
set shiftround                  " always round indents to multiple of shiftwidth
set copyindent                  " use existing indents for new indents
set preserveindent              " save as much indent structure as possible

"------ Hotkeys ---------"
"
" Remap <control-space> to word completion
noremap! <Nul> <C-n>

"D and C deletes from the cursor to the end of line,but Y works the same as yy.
"This makes Y similar to D and C commands.
map Y y$ 

"If you search for something the matches are highlighted but 
"they can only turned off by :noh or searching for something like /vbw45zthtg.
"With this hotkey if you press ENTER, the highlights turns off.
nnoremap <CR> :noh<CR><CR>

"writing : to enable the command line needs <shift>, and thats way too slow.
"Now we are able to do this with space instead
nnoremap <Space> :

"If you forget to sudo before modifying a file, you don't have to exit and redo it anymore! Just write w!!
cmap w!! w !sudo tee % >/dev/null

" Change every occurence of the word under the cursor with backslash-s
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//<Left>

