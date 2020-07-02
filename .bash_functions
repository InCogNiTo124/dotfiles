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
            echo "${PWD}/venv is not a proper virtual environment. Aborting" && exit 1;
        fi
    else
        echo "No venv/ subdirectory in ${PWD}. Aborting" && exit 1;
    fi
}

# make a venv and populate it with wheel and neovim plugin packages
mkv() {
    python3 -m venv venv && echo "Created ${PWD}/venv";
    vrun && echo -n "Installing packages... ";
    pip -q install wheel pynvim && echo "Done!";
}
