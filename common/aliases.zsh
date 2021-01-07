# Aliases

# Setup thefuck if present
if (where thefuck >> /dev/null -eq 0) {
    eval $(thefuck --alias)
}
