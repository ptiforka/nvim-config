" All these settings needed for vim-ruby plugin
" https://github.com/vim-ruby/vim-ruby/wiki/VimRubySupport
"
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set scrolloff=4       " Keep at least 4 lines below cursor

"set clipboard=unnamed " Always copy to system clipboard
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'isRuslan/vim-es6'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'wincent/command-t'
Plug 'thoughtbot/vim-rspec'

Plug 'janko-m/vim-test'
Plug 'mhartington/oceanic-next'


if has('nvim')
    let test#strategy = "neovim"
    tmap <C-k> <C-\><C-n>
endif

Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'

Plug 'tommcdo/vim-exchange'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" fzf search
"
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Tagbar for analyse a file and provide an overview of it’s structure
Plug 'majutsushi/tagbar'

" enable highlightion of speling errors
set spell!
" Set region to British English
" set spelllang=en_gb

" This allows you to select some text using Vim's visual mode and then hit *
" and # to search for it elsewhere in the file.
Plug 'nelstrom/vim-visual-star-search'

" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'

" This plugin provides automatic folding for RSpec files (*_spec.rb)
Plug 'vim-utils/vim-ruby-fold'

" vim as mergetool

Plug 'samoshkin/vim-mergetool'

let g:mergetool_layout = 'LmR'
let g:mergetool_prefer_revision = 'local'


function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nnoremap <silent> <leader> sr :call <SID>StripTrailingWhitespaces()<CR>
autocmd BufWritePre *.erb,*.rb,*.py,*.js :call <SID>StripTrailingWhitespaces()

" Replace across files
" Use :Gsearch to get a buffer window of your search results
" then you can make the replacements inside the buffer window using traditional tools (%s/foo/bar/)
" Invoke :Greplace to make your changes across all files. It will ask you interatively y/n/a - you can hit 'a' to do all.
" Save changes to all files with :wall (write all)
Plug 'skwp/greplace.vim'
Plug 'w0rp/ale'

" Vim snippets
" Track the engine.
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Insert or delete brackets, parens, quotes in pair.
" Plug 'jiangmiao/auto-pairs'

" surround.vim: quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
" repeat.vim: enable repeating supported plugin maps with '.'

"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1


" match-up is a drop-in replacement for the vim plugin matchit.vim.
Plug 'andymass/vim-matchup'


" A custom text object for selecting ruby blocks.
Plug 'nelstrom/vim-textobj-rubyblock'
" Vim plugin: Create your own text objects
Plug 'kana/vim-textobj-user'
" Syntax highlighting and indenting for JSX
Plug 'mxw/vim-jsx'
" Syntax for JavaScript libraries
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mattn/emmet-vim'
" A Vim alignment plugin
Plug 'junegunn/vim-easy-align'
" A vim script to provide CamelCase motion through words (fork of inkarkat's camelcasemotion script)
Plug 'bkad/camelcasemotion'
" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
" allows you to toggle bool (true/false) and other words with a shortcut
Plug 'vim-scripts/Toggle'
" Toggles between hybrid and absolute line numbers automatically
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" True Sublime Text style multiple selections for Vim
"Plug 'terryma/vim-multiple-cursors'


" Run your favorite search tool from Vim, with an enhanced results list.
Plug 'mileszs/ack.vim'

call plug#end()

" Color sonchemes
set termguicolors

syntax enable
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
let g:airline_theme='oceanicnext'
colorscheme OceanicNext


"Go development plugin for Vim
Plug 'fatih/vim-go'
" Far.vim makes it easier to find and replace text through multiple files. It's inspired by fancy IDEs, like IntelliJ and Eclipse, that provide cozy tools for such tasks.
Plug 'brooth/far.vim'

" This plugin causes all trailing whitespace characters (see Supported Whitespace Characters below) to be highlighted.
Plug 'ntpeters/vim-better-whitespace'

" Want utf8 at all times
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

set ruler                      " Always show current position
set cmdheight=1                " Height of the command bar
set laststatus=2               " Always show the status line

set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" Lovely linenumbers
set nu

":set relativenumber
":set norelativenumber  " turn relative line numbers off
":set relativenumber!   " toggle relative line numbers
:set number relativenumber

" Searching
set hlsearch

" For backspace
set backspace=indent,eol,start

" NERDTree options
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1 " Does not show Press ? for help

" CtrlP new shortcut
" map ff :CtrlP<.><cr>
" Command T plugin
"map ff :CommandT<CR>
nmap <C-p> :CommandT<CR>

" Exclude files and directories using Vim's wildignore and CtrlP's own g:ctrlp_custom_ignore. If a custom listing command is being used, exclusions are ignored:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip    " MacOSX/Linux
set wildignore+=*/node_modules/*     " Don't search inside Node.js modules
set wildignore+=*/public/packs     " Don't search inside Node.js modules
set wildignore+=*/public/packs-test     " Don't search inside Node.js modules
  "let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
  "let g:ctrlp_custom_ignore = {
  "  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules\|vendor|tmp)$',
  "  \ 'file': '\v\.(exe|so|dll)$',
  "  \ 'link': 'some_bad_symbolic_links',
  "  \ }
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
" vim-rspec
let g:rspec_command = "bundle exec rspec {spec}"

" Don't automatically continue comments after newline
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon

" Map Ctrl-s to write the file
nmap <C-s> :w<cr>

" exits insert mode and saves the buffer
inoremap <C-s> <esc>:w<cr>

" Use the space key as our leader.
let mapleader = "\<Space>"

nmap <leader>vr :sp $MYVIMRC<cr>

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" Rspec
let $BROWSER='chrome'
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>p

nmap <S-Enter> O<Esc>

" Fix files with prettier, and then ESLint.
let g:ale_fix_on_save = 1
let b:ale_fixers = ['rubocop', 'reek', 'scss_lint', 'prettier', 'eslint']
let g:airline#extensions#ale#enabled = 1
let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1

" vim-test
" Run npm run test for jest test files because jest does not work properly in
" react-create-app
"let test#javascript#jest#executable = 'npm run test'
let test#javascript#jest#executable = 'yarn test'

"if !empty(glob("docker-compose.yml"))
"  let test#ruby#rspec#executable = 'docker exec -it spring spring rspec'
"end

" EasyAlign plugin settings
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" UltiSnips directories
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" Activate repeat plugin
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" Insert a space in normal mode
"nnoremap <space> i<space><esc>
nnoremap ss i<space><esc>

" Delete surrounding whitespace
nnoremap <leader>dd F<space>xf<space>x

" Focus on current file in tree
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" Open an overview of current file by using Tagbar
nnoremap <silent> <Leader>b :TagbarOpen -j<CR>

" better-whitespace plugin settings
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitelines_at_eof=1
let g:strip_whitespace_confirm=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE (thanks Gary Bernhardt)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <Leader>n :call RenameFile()<cr>

" (Hopefully) removes the delay when hitting esc in insert mode
" set noesckeys
set ttimeout
set ttimeoutlen=1

" System Copy - add `cp` operator to copy text to system clipboard via text
" object or motion

" Plug 'christoomey/vim-system-copy'
Plug '~/code/vim/system-copy'

" Surround - Mappings for adding, removing, and changing surrounding characters

Plug 'tpope/vim-surround'

" Rfactory - Rapid navigation to FactoryGirl factories ala Rails.vim

Plug 'christoomey/vim-rfactory'

nnoremap <leader>gf :call <sid>SmartSplit()<cr>

function! s:SmartSplit()
  let split_cmd = (winwidth(0) > 106) ? 'RVfactory' : 'RSfactory'
  execute split_cmd
endfunction

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>


let g:coc_global_extensions = ['coc-solargraph']
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd FileType json syntax match Comment +\/\/.\+$+
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" if hidden is not set, TextEdit might fail.
