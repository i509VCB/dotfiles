# Aliases

# Setup thefuck if present
if (where thefuck >> /dev/null -eq 0) {
    eval $(thefuck --alias)
}

# Yaourt
if (where yaourt >> /dev/null -eq 0) {
    alias yay='yaourt'
}
