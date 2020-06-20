mkcdir() {
    mkdir -p $1 && cd $1;
}

vrun() {
    if [[ -d "venv/" ]]; then
        if [[ -f "venv/bin/activate" ]]; then
            . venv/bin/activate
        else
            echo "${PWD}/venv is not a proper virtual environment. Aborting" && exit 1;
        fi
    else
        echo "No venv/ subdirectory in ${PWD}. Aborting" && exit 1;
    fi
}
