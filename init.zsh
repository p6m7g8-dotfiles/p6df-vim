# shellcheck shell=bash
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
# Function: p6df::modules::vim::aliases::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::vim::aliases::init() {
  local _module="$1"
  local dir="$1"

  p6_alias "vim" "vim -i $dir/share/.viminfo"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::vim::home::symlinks()
#
#  Environment:	 HOME P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::vim::home::symlinks() {

  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-vim/share/vimrc" "$HOME/.vimrc"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-vim/share/vim" "$HOME/.vim"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::vim::external::brews()
#
#>
######################################################################
p6df::modules::vim::external::brews() {

  p6df::core::homebrew::cli::brew::install vim

  p6_return_void
}

######################################################################
#<
#
# Function: words vim = p6df::modules::vim::profile::mod()
#
#  Returns:
#	words - vim
#
#  Environment:	 VIMINIT
#>
######################################################################
p6df::modules::vim::profile::mod() {

  p6_return_words 'vim' '$VIMINIT'
}

