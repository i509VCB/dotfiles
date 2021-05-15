# Theming for neofetch
# Sure I could use a config, but I can't seem to figure out how to deal with unwrapping the accent color variable

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
	# -------------------
	# Disable GTK theme display
	alias neofetch='neofetch \
		--colors \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_WHITE_TEXT \
		$I5_WHITE_TEXT \
		--ascii_colors \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		$I5_ACCENT_COLOR \
		--gtk3 off \
		--gtk2 off \
		--refresh_rate on \
	'
}
