"" theme
syntax enable
colorscheme monokai
set hls

"" tab for python [link](http://vimcasts.org/episodes/tabs-and-spaces/).
filetype plugin indent on
" set tabstop=4
" set shiftwidth=4 softtabstop=4
" set expandtab
""

"" netrw
" set nocompatible
" filetype plugin on
" Set scripts to be executable from the shell

"" Auto-exe-privilege.
"" auto add exe privilege to file where the first line defines the interpreter of this file is under `/bin/` folder.
au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod +x <afile> | endif | endif

"" [set Vundle](https://github.com/VundleVim/Vundle.vim/README.md)
set nocompatible
filetype off

" vundle#begin('~/some/path/here') for plugins installing.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"" Add plugins area. 
Plugin 'VundleVim/Vundle.vim'

"" jedi python auto-completion
Plugin 'davidhalter/jedi-vim'


call vundle#end()            
filetype plugin indent on    

"" jedi python vim setting
"let g:jedi#completions_command = #"<C-M>"
"let g:jedi#auto_initialization = 0
""let g:pymode_rope = 0

