export LDFLAGS="-L/opt/homebrew/opt/mysql-client@5.7/lib"  
export CPPFLAGS="-I/opt/homebrew/opt/mysql-client@5.7/include"  
  
export PATH="$PATH:/opt/homebrew/opt/mysql-client@5.7/bin"  
export PATH="$PATH:/Users/supermarine/Library/Python/3.8/bin"  
export PATH="$PATH:/opt/homebrew/bin"  
export PATH="$PATH:$HOME/.rbenv/bin"  
export PATH="$PATH:$HOME/.local/bin"  
export PATH="$PATH:/usr/local/sbin"  
export PATH="$PATH:/usr/local/bin"  
export PATH="$PATH:/usr/sbin"  
export PATH="$PATH:/usr/bin"  
export PATH="$PATH:/sbin"  
export PATH="$PATH:/bin"  
  
eval "$(rbenv init -)"  
  
. /opt/homebrew/opt/asdf/libexec/asdf.sh  
  
alias g='git'  
alias pip='pip3' 
alias k='kubectl'

mcd() {
	if [[ $# -eq 0 ]]; then
		echo "mcd: missing an argument"
		return 1
	fi
	mkdir -p "$1"
	cd "$1"
} 
