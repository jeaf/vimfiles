" Language setup
set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
" language en                 " sets the language of the messages / ui (vim)

" Load packages. Colors don't need this, the colorscheme command will look
" under opt (see help colo)
"packadd! vim-awesome-colorschemes

" Allow using a specifc set of settings per directory
" (disabled because of security risks)
" set exrc

" Disable buffers menu (seems to impact performance on network drives)
let g:no_buffers_menu = 1

" Configure GUI
set guioptions=begrLt
set guifont=Consolas:h11:cANSI,Courier_New:h10:cANSI

" Configure TagBar
let g:tagbar_case_insensitive = 1
let g:tagbar_ctags_bin = '~\app\ctags58\ctags.exe'
let g:tagbar_left = 1
let g:tagbar_singleclick = 1
let g:tagbar_sort = 0

" To disable netrw, uncomment the following line (netrw seems to add slowness
" on network drives in certain situations)
" let g:loaded_netrwPlugin = 1

" Configure airline
let g:airline#extensions#disable_rtp_load = 1
let g:airline_extensions = ['tabline']
let g:airline_section_b = '%n'
let g:airline_section_y = '[%{(&fenc==""?&enc:&fenc)}, %{&ff}]'
let g:airline_section_z = '%l/%L [col:%c] %P'
let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#alt_sep = 0
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''
" let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extensions#tabline#buffer_nr_format = '[%s] '
" nmap ,1 <Plug>AirlineSelectTab1
" nmap ,2 <Plug>AirlineSelectTab2
" nmap ,3 <Plug>AirlineSelectTab3
" nmap ,4 <Plug>AirlineSelectTab4
" nmap ,5 <Plug>AirlineSelectTab5
" nmap ,6 <Plug>AirlineSelectTab6
" nmap ,7 <Plug>AirlineSelectTab7
" nmap ,8 <Plug>AirlineSelectTab8
" nmap ,9 <Plug>AirlineSelectTab9

" Configure ctrlp
" let g:ctrlp_map = '<space>'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_switch_buffer = 0 " This disables switching to a window with a buffer instead of
                              " showing the buffer in the current window
map ,r :CtrlPMRUFiles<CR>

" Set colorscheme
if has('gui_running')
    colorscheme afterglow
else
    colorscheme afterglow
endif

" Render vim incompatible with Vi, but adds functionality
set nocompatible

" Set window size (disabled because it is annoying with the command-line vim)
" set columns=120
" set lines=40

" swap the colon and the semi-colon
" (normal to command mode <-> repeat search for t and f commands)
"noremap <A-;> ;
"noremap <A-,> ,
nnoremap <Right> ;
nnoremap <Left> ,
map ; :
"map q; q:

" Map the search command for French keyboard
map é /

" Set the hidden option, so even modified files can be hidden
set hidden

" Show line numbers
set number
set relativenumber

" Only show the tab line if there are two or more tabs
set showtabline=1

" Setup easier navigation for :cn
map <A-Left> :cp<CR>
map <A-Right> :cn<CR>

" Setup complete to avoid long searches on i_CTRL-N
set complete=.,w,b

" Setup external grep
" set grepprg=grep\ -n

" Mappings used for tab navigation
" :map <C-S-tab> :tabprevious<cr>
" :map <C-tab> :tabnext<cr>
" :map <C-w> :tabclose<cr>
" :map <C-t> :tabnew<cr>

" Setup the status line
" set statusline=%M[%n]\ %<%F%h%r\ %=%l,%c%V\ (%P\ of\ %L\ lines)
" set statusline=%M[%n]\ %t%<%h%r\ %y\ %f\ %=%l,%c%V\ (%P\ of\ %L\ lines)\ 0x%-4B\ [%{(&fenc==\"\"?&enc:&fenc)}]\ [%{&ff}]
set statusline=%M[%n]\ %t\ %(%H%R%W\ %)                      " tail of the filename
set statusline+=[%{fnamemodify(bufname(\"%\")\,\":p:h\")}]\  " path to the file
set statusline+=%<[%{(&fenc==\"\"?&enc:&fenc)},              " file encoding
set statusline+=%{&ff}]\                                     " file format
set statusline+=%q                                           " quickfix list or location list or empty
set statusline+=%y                                           " filetype
set statusline+=%=                                           " left/right separator
set statusline+=%l/%L                                        " cursor line/total lines
set statusline+=\ [col:%c]                                   " cursor column
set statusline+=\ %P                                         " percent through file

" Setup the gui tab label
" function GuiTabLabel()
"   let label = ''
"   let bufnrlist = tabpagebuflist(v:lnum)
"
"   " Add '+' if one of the buffers in the tab page is modified
"   for bufnr in bufnrlist
"     if getbufvar(bufnr, "&modified")
"       let label = '+'
"       break
"     endif
"   endfor
"
"   " Append the number of windows in the tab page if more than one
"   let wincount = tabpagewinnr(v:lnum, '$')
"   if wincount > 1
"     let label .= '(' . wincount . ')'
"   endif
"   if label != ''
"     let label .= ' '
"   endif
"
"   " Return the label
"   return label
" endfunction
" set guitablabel=%{GuiTabLabel()}%t

" Setup how backspace behaves
set backspace=indent,eol,start

" Space, tabs, indent options
set expandtab
set smarttab
set shiftwidth=4
set tabstop=8
set autoindent
" set smartindent
" set cindent

" Text width options
set colorcolumn=120

" The ~ command (to change case) works like an operator
set tildeop

" Turn on auto syntax highlighting
syntax on

" Set search options
set ignorecase " Will ignore case in searches...
set smartcase  " ...unless capital letters are used in the search pattern
set hlsearch   " Highlight matches with the last search pattern
set incsearch  " Search will be incremental

" Always show a status line at the bottom of the screen, even if there is a single window
set laststatus=2

" Show current line and col
set ruler

" Show the current incomplete command, e.g. 2c will be displayed until the command is completed
set showcmd

" Always leave an offset of 5 lines at top and bottom, when possible
" set scrolloff=5

" set showbreak=____ " What will appear on a line break
set cpoptions+=n

" Use CTRL-S for saving, also in Insert mode
noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<C-O>:update<CR>

" Map ii to Esc
" map! ii <Esc>

" Set backup and swap options
set nobackup
set noswapfile

" Set up the viminfo option (session persistence)
set viminfo='1000 " Save marks for 1000 files
set viminfo+=f1   " Save global marks
set viminfo+=<500 " Save max 500 lines for each of the registers
set viminfo+=:500 " Save max 500 lines for command line history
set viminfo+=@500 " Save max 500 lines for input line history
set viminfo+=/500 " Save max 500 lines of search history
" set viminfo+=%    " Save buffer list (we don't do it anymore because after
                    " a while, the buffer list contains too many things and
                    " is more difficult to work with.

" Set up the session options
set sessionoptions+=resize

" Set up the view options
" set viewoptions=folds,cursor
" augroup vimrc
"     autocmd BufWritePost *
"     \   if expand('%') != '' && &buftype !~ 'nofile'
"     \|      mkview
"     \|  endif
"     autocmd BufRead *
"     \   if expand('%') != '' && &buftype !~ 'nofile'
"     \|      silent loadview
"     \|  endif
" augroup END

" Show matches for () [] etc
set showmatch

" Allow editing of columns where no chars exist
" set virtualedit=all

" Set up folding
" set foldcolumn=4      " Displays the folds in a 4 wide column on the left
" set foldmethod=indent " Uses indentation to automatically create folds
" set foldnestmax=3     " Maximum fold levels
" set foldlevel=3       " Initially open folds

" Those are self-explanatory
set history=50

" Clipboard options
set clipboard=unnamed " Always copy/paste to/from system clipboard

" Enable completion (tab) enhanced menu
set wildmenu

"
" XML editing
"

" Comment out a XML block (see http://stackoverflow.com/questions/933975/commenting-out-xml-in-vim)
vmap ,c <esc>a--><esc>'<i<!--<esc>'>$

" Uncomment out a XML block
vmap ,u <esc>l3x<esc>'<4x<esc>'>$

"
" Buffer/windows mappings
"

" Easier switching to a buffer
:nnoremap <space> :buffers<CR>:buffer<Space>
:nnoremap <enter> <C-^>

" Faster prev, next, first, last for buffers
map <S-Tab> :bprevious<cr>
map <Tab> :bnext<cr>
" map <A-h> :bprevious<cr>
" map <A-l> :bnext<cr>
" map <A-h> :MBEbp<cr>
" map <A-l> :MBEbn<cr>
" map <A-k> :bfirst<cr>
" map <A-j> :blast<cr>

" Buffer closing
map ,w :Bdelete<cr>

" Set nifty split-windows navigation trick
" see vimtip 173
" set winminheight=0
" map <C-J> <C-W>j<C-W>_
" map <C-K> <C-W>k<C-W>_
" A bit better I think...
" See http://www.reddit.com/r/vim/comments/kz84u/what_are_some_simple_yet_mindblowing_tweaks_to/
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Remap arrow keys
" Text bubbling (modified to use the arrow key directly instead of CTRL-up,
" etc.)
" see http://vimcasts.org/episodes/bubbling-text/
nmap <C-Up> ddkP
nmap <C-Down> ddp
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
nmap gV `[v`]
" Line indent
" see http://codingfearlessly.com/2012/08/21/vim-putting-arrows-to-use/
nmap <C-Left> <<
nmap <C-Right> >>
vmap <C-Left> <gv
vmap <C-Right> >gv

" Map ALT-D to set the current directory to the directory of the current
" buffer. Also ,- to open netrw (dir explorer) for containing folder
nnoremap ,d :cd %:p:h<CR>:pwd<CR>
nmap - :e %:p:h<CR>

" Fix netrw bug that causes weird buffers to appear, and breaks bn bp
set nohidden
augroup netrw_buf_hidden_fix
    autocmd!
    " Set all non-netrw buffers to bufhidden=hide
    autocmd BufWinEnter *
                \  if &ft != 'netrw'
                \|     set bufhidden=hide
                \| endif
augroup end

" Set nifty shortcut to open containing folder (see VimTip 311)
if has("gui_running")
  if has("win32")
    " Open the folder containing the currently open file. Double <CR> at end
    " is so you don't have to hit return after command. Double quotes are
    " not necessary in the 'explorer.exe %:p:h' section.
    map <silent> <C-F5> :if expand("%:p:h") != ""<CR>:!start explorer.exe %:p:h<CR>:endif<CR><CR>
  endif
endif

" Setup some mappings for implementing indentation text objects
" Taken from: http://vim.wikia.com/wiki/Indent_text_object
" Changes to allow blank lines in blocks, and
" Top level blocks (zero indent) separated by two or more blank lines.
" Usage: source <thisfile> in pythonmode and
" Press: vai, vii to select outer/inner python blocks by indetation.
" Press: vii, yii, dii, cii to select/yank/delete/change an indented block.
onoremap <silent>ai :<C-u>call IndTxtObj(0)<CR>
onoremap <silent>ii :<C-u>call IndTxtObj(1)<CR>
vnoremap <silent>ai <Esc>:call IndTxtObj(0)<CR><Esc>gv
vnoremap <silent>ii <Esc>:call IndTxtObj(1)<CR><Esc>gv
function! IndTxtObj(inner)
  let curcol = col(".")
  let curline = line(".")
  let lastline = line("$")
  let i = indent(line("."))
  if getline(".") !~ "^\\s*$"
    let p = line(".") - 1
    let pp = line(".") - 2
    let nextblank = getline(p) =~ "^\\s*$"
    let nextnextblank = getline(pp) =~ "^\\s*$"
    while p > 0 && ((i == 0 && (!nextblank || (pp > 0 && !nextnextblank))) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
      -
      let p = line(".") - 1
      let pp = line(".") - 2
      let nextblank = getline(p) =~ "^\\s*$"
      let nextnextblank = getline(pp) =~ "^\\s*$"
    endwhile
    normal! 0V
    call cursor(curline, curcol)
    let p = line(".") + 1
    let pp = line(".") + 2
    let nextblank = getline(p) =~ "^\\s*$"
    let nextnextblank = getline(pp) =~ "^\\s*$"
    while p <= lastline && ((i == 0 && (!nextblank || pp < lastline && !nextnextblank)) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
      +
      let p = line(".") + 1
      let pp = line(".") + 2
      let nextblank = getline(p) =~ "^\\s*$"
      let nextnextblank = getline(pp) =~ "^\\s*$"
    endwhile
    normal! $
  endif
endfunction

" Setup wrapping
set nowrap

" Code completion
" autocmd FileType python set omnifunc=pythoncomplete#Complete
filetype plugin on

" Configure tags
map ,t :tag

" Configure taglist
" let Tlist_Ctags_Cmd='%HOME_ROOT%\program\tool\ctags.exe'

" Configure marks
let g:showmarks_enable=0
noremap <A-p> ['
noremap <A-n> ]'

" Switch between cpp and h
map ,o :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" Configure pydoc
let g:pydoc_cmd="C:/Python27/Lib/pydoc.py"

" Configure MRU
" let MRU_Exclude_Files='Temp\\bzr_log'
" let MRU_Window_Height=15
" let MRU_Max_Menu_Entries=40
" let MRU_Max_Submenu_Entries=50
" map ,r :MRU<CR>

" Set vim to full screen
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" Configure sparkup plugin
" let g:sparkupExecuteMapping = '<a-e>'
" let g:sparkupNextMapping    = '<a-n>'

" Configure EasyMotion plugin
map ,m \\

set secure
