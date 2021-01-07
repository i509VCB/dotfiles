# Configuration for `ls` colors 

# Display ls in color mode always
alias ls='ls --color'

# ====================
# Color codes for `ls`
# ====================
#
# 0   = default colour
# 1   = bold
# 4   = underlined
# 5   = flashing text
# 7   = reverse field
# 31  = red
# 32  = green
# 33  = orange
# 34  = blue
# 35  = purple
# 36  = cyan
# 37  = grey
# 40  = black background
# 41  = red background
# 42  = green background
# 43  = orange background
# 44  = blue background
# 45  = purple background
# 46  = cyan background
# 47  = grey background
# 90  = dark grey
# 91  = light red
# 92  = light green
# 93  = yellow
# 94  = light blue
# 95  = light purple
# 96  = turquoise
# 100 = dark grey background
# 101 = light red background
# 102 = light green background
# 103 = yellow background
# 104 = light blue background
# 105 = light purple background
# 106 = turquoise background
#
# ====================

# Specify all colors in an array. We will concat these as needed
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

    for ((i = 0; i <= ${#LS_COLORS_ARR}; i++)) {
        if (($i != 0)) {
            COLOR_STR+=":" # Next entry; prepend file type entry with `:`
        }

        COLOR_STR+=$LS_COLORS_ARR[i]
    }

    # Poor man's string return value
    echo $COLOR_STR
}

LS_COLORS=$(create_colors)

export LS_COLORS

