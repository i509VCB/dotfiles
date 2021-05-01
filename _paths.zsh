if (where ruby >> /dev/null -eq 0) {
	typeset GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
	typeset PATH="$PATH:$GEM_HOME/bin"
}
