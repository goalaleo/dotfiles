" before
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" >>> PLUGINS START

Plugin 'tpope/vim-sensible'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" Add textobject support for different kinds of ruby blocks
Plugin 'kana/vim-textobj-user'
Plugin 'rhysd/vim-textobj-ruby'

" Upgraded status line
Plugin 'vim-airline/vim-airline'

" Atom dark one theme for vim
Plugin 'rakr/vim-one'

Plugin 'airblade/vim-gitgutter'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'
" <<< PLUGINS END
" All of your Plugins must be added before the following line
call vundle#end()

so ~/.vim/.vimrc.color
so ~/.vim/.vimrc.ctrlp

" after
so ~/.vim/.vimrc.after
so ~/.vim/.vimrc.leadermap
