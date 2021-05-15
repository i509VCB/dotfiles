# dotfile script for machine with hostname `bikeshed`
# This machine is my primary desktop.

source ~/dotfiles/_instant_prompt.zsh

# Machine specifics
typeset -g I5_ACCENT_COLOR=129 # Purple
typeset -g I5_WHITE_TEXT=15 # White

# Common configuration - make sure to copy over to escalator
source ~/dotfiles/_aliases.zsh
source ~/dotfiles/theming/theming.zsh
source ~/dotfiles/_paths.zsh
