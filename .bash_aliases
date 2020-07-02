# Human readable filesizes
alias du='du -h'
alias ll='ls -lah --color=auto'

# 'cd ,,' is too cumbersome
alias ..='cd ..'
alias ...='cd ../..'

# I like my numerical operations in IEEE754
alias bc='bc -l'

# time saver
alias update='sudo apt-get update && sudo apt-get -y upgrade'

# 'clear' is not enough!
alias cls='printf "\033c"'

# Verbosity
alias cp='cp -v'
alias mv='mv -v'
alias ln='ln -v'

# Pretty 'git log' ^^
alias gl='git log --all --graph --decorate --oneline'
