# ls colors
source ~/dotfiles/theming/_ls_colors.zsh

if (( ${+I5_ACCENT_COLOR} || ${+I5_WHITE_TEXT})); then
	# We expect p10k to be installed here.
	source ~/powerlevel10k/powerlevel10k.zsh-theme 
	[[ ! -f ~/dotfiles/theming/_p10k.zsh ]] || source ~/dotfiles/theming/_p10k.zsh

	# Neofetch
	source ~/dotfiles/theming/_neofetch.zsh
else
	echo "I5_ACCENT_COLOR or I5_WHITE_TEXT was not set. Not loading p10k or neofetch configs"
fi
