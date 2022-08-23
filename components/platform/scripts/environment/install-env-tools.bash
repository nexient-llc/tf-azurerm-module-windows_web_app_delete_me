#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o noglob


hook_direnv(){
        cat << 'EOT' >> ~/.bashrc
eval "$(direnv hook bash)"
EOT
        # Reload environment
        source ~/.bashrc
}


# Install direnv if not installed already
if ! command -v direnv --version &> /dev/null
then
    curl -sfL https://direnv.net/install.sh | bash
fi

# hook direnv if not already hooked
if ! grep -Fxq 'eval "$(direnv hook bash)"' ~/.bashrc
then
    hook_direnv
fi

# install dumpenv if python exists
if ! command -v python3 --version &> /dev/null
then
    echo "Please install python3"
else
    if ! pip list | grep -F "dump-env"
    then
        pip install dump-env
    fi
fi
