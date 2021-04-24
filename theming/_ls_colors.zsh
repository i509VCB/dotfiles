# Configuration for `ls` colors 

# Always display in color mode
alias ls='ls --color'

# Read docs file for magic value -> color

# Specify all colors in an array.
# Concatantated as needed.
LS_COLORS_ARRAY=(
    # Directory: Bold (1) Orange (33)
    "di=1;33"
    # Gradle buildscripts:
    # ====================
    # Kotlin DSL: Underline (4) Purple (35)
    "*.gradle.kts=4;35"
    # Groovy DSL: Underline (4) Green (32)
    "*.gradle=4;32"
    # Source Files
    # ====================
    # - JVM -
    # Java: Underline (4) Cyan (36)
    "*.java=4;36"
    # Kotlin: Underline (4) Light Purple (95)
    "*.kt=4;95"
    # - Rust -
    # Rust: Underline (4) Light Red (91)
    "*.rs=4;91"
)

function create_colors() {
    COLOR_STR=

    for ((i = 0; i <= ${#LS_COLORS_ARRAY}; i++)) {
        if (($i != 0)) {
            COLOR_STR+=":" # Next entry; prepend file type entry with `:`
        }

        COLOR_STR+=$LS_COLORS_ARRAY[i]
    }

    # Poor man's string return value
    echo $COLOR_STR
}

export LS_COLORS=$(create_colors)
