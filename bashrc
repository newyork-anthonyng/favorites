# Colors for directory
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

# Display git branch name in terminal
# https://gist.github.com/justintv/168835
GIT_BRANCH="git branch 2>/dev/null | grep '^*' | colrm 1 2"
# Use a random color
# https://www.commandlinefu.com/commands/view/12548/generate-a-random-text-color-in-bash
COLOR="\e[0;3$(( $RANDOM * 6 / 32767 + 1 ))m"
export PS1="\\W:$COLOR\$($GIT_BRANCH)\e[m\$ "
