# Get value for machine variable
source ~/dotfiles/common/machine.zsh

if ($MACHINE -eq 0) {
    echo "You need to set MACHINE variable in \"entrypoint.zsh\""
}

source ~/dotfiles/common/common.zsh

if ($MACHINE = "bikeshed") {
    source ~/dotfiles/bikeshed/bikeshed.zsh
    exit
}

if ($MACHINE = "escalator") {
    source ~/dotfiles/escalator/escalator.zsh
    exit
}

echo "Invalid MACHINE value $MACHINE"
