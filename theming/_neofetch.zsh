# Theming for neofetch

if (where neofetch >> /dev/null -eq 0) {
	# Color options
	# -------------------
	# Title - Accent
	# @ - Accent
	# underline - Accent
	# subtitle - Accent
	# colon - White
	# info - White
	# -------------------
	# Ascii Colors
	# -------------------
	# Entire distro icon - Accent
	alias neofetch='neofetch \
		--colors \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		7 \
		7 \
		--ascii_colors \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
	'
	#  x x x x x x
}
