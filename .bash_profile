# For rbenv
eval "$(rbenv init -)"

# Highlight the current git branch
function parse_git_branch () {
			 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u$NO_COLOUR:\W$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

# Terminal shortcuts
alias st='status'

export PATH="$HOME/Qt5.5.0/5.5/clang_64/bin:$PATH"

# load shopify-app-cli, but only if present and the shell is interactive
if [[ -f "/Users/leemcalilly/.shopify-app-cli/shopify.sh" ]]; then source "/Users/leemcalilly/.shopify-app-cli/shopify.sh"; fi
