# make a directory and enter it
mkcdir() {
    mkdir -p $1 && cd $1;
}

# Activate a python virtual environment stored in
# 'venv' sub directory (all my venvs are named that)
vrun() {
    if [[ -d "venv/" ]]; then
        if [[ -f "venv/bin/activate" ]]; then
            . venv/bin/activate && echo "Activated virtual environment ${PWD}/venv";
        else
            echo "${PWD}/venv is not a proper virtual environment. Aborting" && return 1;
        fi
    else
        echo "No venv/ subdirectory in ${PWD}. Aborting" && return 1;
    fi
}

# make a venv and populate it with wheel and neovim plugin packages
mkv() {
    python3 -m venv venv && echo "Created ${PWD}/venv";
    vrun && echo -n "Installing packages... ";
    $(which python3) -m pip -q install --upgrade pip setuptools wheel pynvim && echo "Done!";
}

# extract
ex () {
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2)   tar xjf "$1"   ;;
      *.tar.gz)    tar xzf "$1"   ;;
      *.bz2)       bunzip2 "$1"   ;;
      *.rar)       unrar x "$1"   ;;
      *.gz)        gunzip "$1"    ;;
      *.tar)       tar xf "$1"    ;;
      *.tbz2)      tar xjf "$1"   ;;
      *.tgz)       tar xzf "$1"   ;;
      *.zip)       unzip "$1"     ;;
      *.Z)         uncompress "$1";;
      *.7z)        7z x "$1"      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
