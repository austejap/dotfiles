let mapleader = ','

"=== File Navigation ===
"Flip between files with ,.
noremap <leader>. :b#<CR>
"Follow and return from ctagged files
nnoremap ] <C-]>
nnoremap [ <C-t>

"=== Editor navigation ===
"Make H be home, L be end
noremap H ^
noremap L $
nnoremap j gj
nnoremap k gk
"Navigate vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>b :Gblame<CR>

"=== Evil keys ===
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> :bp<CR>
noremap <Right> :bn<CR>

"=== Quick Edit ===
"Insert blank lines without insert mode
nmap t o<ESC>k
nmap T O<ESC>j
"Make Q repeat the last recorded marcro
nmap Q @@
"Align blocks of text and keep them selected
vmap < <gv
vmap > >gv

"=== Mode switching ===
"Simplify getting to :Ex mode
nnoremap ; :
"Good for when CAPS-LOCK can't be mapped to escape.
inoremap jk <esc>
vnoremap jk <esc>

"Clear the search highlights
nnoremap <leader><space> :nohlsearch<CR>
"Make // in visual mode seach for the currently selected words
vnoremap // y/<C-R>"<CR>

nmap <BS> {
nmap <CR> }

vmap <BS> {
vmap <CR> }

"=== .vimrc ===
"Leader + v opens vimrc
nnoremap <leader>v :e ~/.vimrc<CR>
"Opens this file
nnoremap <Leader>m :e ~/.vim/mapping-config.vim<CR>

"Map any !shell commands to clear the console first
:map :! :!clear;

"Run mocha test
nnoremap ,1 :w<CR>yi':!clear;npm run testlog -- -g "<C-r>0"<CR>
nnoremap ,2 :w<CR>yi":!clear;npm run testlog -- -g "<C-r>0"<CR>

nnoremap ,f :Tags<CR>
nnoremap <C-o> :BTags<CR>
nnoremap <C-f> :AgBuffer! 

"=== Plugin shortcuts ===
"Make Emmet available through h + h
imap hh <C-y>

"Make a vertical split with vv
nnoremap <silent> vv :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"Make a horizontal split with VV
nnoremap <silent> VV :sp <CR>:exec("tag ".expand("<cword>"))<CR>

nnoremap ? :BLines<CR>

"Leader + Leader opens nerd tree.
nnoremap <leader><leader> :NERDTreeToggle<CR>

"=== Javascript/Coffeescript ===
"Make cl. insert a console log statement
inoremap cl. console.log();<ESC>jkhha

"=== List of keys that are available for mapping to:
"U - don't usually want to do a photoshop-undo
"Space - make it something good
"Up and down (left and right too)
