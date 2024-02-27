
. /opt/homebrew/opt/asdf/libexec/asdf.sh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export CLOUDSDK_PYTHON="/usr/bin/python2"
export GCLOUD_ROOT="/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"

# The next line updates PATH for the Google Cloud SDK.
if [ -f  /path.zsh.inc ]; then
  source /path.zsh.inc
fi

# The next line enables shell command completion for gcloud.
if [ -f  /completion.zsh.inc ]; then
  source /completion.zsh.inc
fi

source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

export CLOUDSDK_PYTHON=/opt/homebrew/bin/python3.9
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
eval "$(direnv hook zsh)"
export PATH=$PATH:$GOBIN
export GCP_ACCOUNT="ryo.koezuka@zuuonline.com"
export GCP_SERVICE_ACCOUNT=""

export PATH="/Users/ryo.koezuka/go/bin:$PATH"

export EDITOR="code --wait"

export GOPRIVATE="github.com/zuu-development"

alias k='kubectl'
alias g='git'

export AWS_PROFILE=PowerUserAccess-089619156306

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
