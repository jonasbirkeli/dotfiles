# dotfile compatability of pyenv
export PYENV_ROOT="$HOME/dotfiles/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"


# Pyenv virtualenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"    # only if using pyenv-virtualenv
fi

alias skyhigh="ssh ubuntu@10.212.172.119 -i ~/.ssh/id_rsa_ntnu.pem"
