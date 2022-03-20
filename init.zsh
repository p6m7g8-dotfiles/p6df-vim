
######################################################################
#<
#
# Function: p6df::modules::vim::deps()
#
#>
######################################################################
p6df::modules::vim::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
  )
}

######################################################################
#<
#
# Function: p6df::modules::vim::external::brew()
#
#>
######################################################################
p6df::modules::vim::external::brew() {

  brew install vim
}

######################################################################
#<
#
# Function: p6df::modules::vim::home::symlink()
#
#>
######################################################################
p6df::modules::vim::home::symlink() {

  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-vim/share/vimrc" ".vimrc"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-vim/share/vim" ".vim"
}
