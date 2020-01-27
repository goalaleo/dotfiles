## Usage
Run `rake` from the root directory to start creating symlinks.
If a link already exists in the home directory, the task will ask
for confirmation before replacing the existing file.
```
▶ rake
Looking for link lists...
Found:
["/Users/username/src/dotfiles/vim/linklist"]
Creating symlinks...
linking /Users/username/.vimrc
replace /Users/username/.vimrc? y
/Users/username/.vimrc -> /Users/username/src/dotfiles/vim/vimrc
linking /Users/username/.vimrc.after
replace /Users/username/.vimrc.after? y
/Users/username/.vimrc.after -> /Users/username/src/dotfiles/vim/vimrc.after
```
## `linklist`s
Only files listed in a `linklist` file will be linked. `linklist`s refer to files
within the same directory, and they're searched for recursively from the `dotfiles`
root directory
