# shellcheck shell=bash
######################################################################
p6df::modules::vim::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
  )
}

######################################################################
p6df::modules::vim::aliases::init() {
  local _module="$1"
  local dir="$1"

  p6_alias "vim" "vim -i $dir/share/.viminfo"

  p6_return_void
}

######################################################################
p6df::modules::vim::home::symlinks() {

  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-vim/share/vimrc" "$HOME/.vimrc"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-vim/share/vim" "$HOME/.vim"

  p6_return_void
}

######################################################################
p6df::modules::vim::external::brews() {

  p6df::core::homebrew::cli::brew::install vim

  p6_return_void
}

######################################################################
p6df::modules::vim::profile::mod() {

  p6_return_words 'vim' '$VIMINIT'
}

######################################################################
#<
#
# Function: p6df::modules::vim::deps()
#
#>
######################################################################
#<
#
# Function: p6df::modules::vim::external::brews()
#
#>
######################################################################
#<
#
# Function: p6df::modules::vim::aliases::init(dir)
#
#  Args:
#	dir -
#
#>
######################################################################
#<
#
# Function: p6df::modules::vim::home::symlinks()
#
#  Environment:	 HOME P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
#<
#
# Function: words vim $VIMINIT = p6df::modules::vim::profile::mod()
#
#  Returns:
#	words - vim $VIMINIT
#
#  Environment:	 VIMINIT
#>
