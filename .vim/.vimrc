" before
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" >>> PLUGINS START

Plugin 'vim-ruby/vim-ruby'

" Add textobject support for different kinds of ruby blocks
Plugin 'kana/vim-textobj-user'
Plugin 'rhysd/vim-textobj-ruby'

" <<< PLUGINS END
" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on    " Enable filetype-specific plugins and indentation
syntax on                    " Enable syntax highlighting

" after
so ~/.vim/.vimrc.after
so ~/.vim/.vimrc.leadermap
