source ~/.config/zsh/zshrc

#source ~/.config/omz/omz.zsh
# 
eval "$(starship init zsh)" 
# zip -q -r  

#
##yzai
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

##quick zip
function zip(){
	/usr/bin/zip -q -r ${1}.zip ${1}

}


##dairy note
function generate_and_open_daily_note() {
    today=$(date +%Y-%m-%d)
    file_path="$HOME/Desktop/note.$today.md"
    if [ -f "$file_path" ]; then
        nvim "$file_path"
    else
        touch "$file_path"
        nvim "$file_path"
    fi
}

alias dnote=generate_and_open_daily_note

#lazygit
function qgit(){
  git add .
  git commit -m $(date "+%Y/%m/%d,%H:%M")
	  wait
		  git push
}		



function template(){
  cp -rf $HOME/.config/nvim/template/${1}/. ./
}

function trash_clear(){
  rm -rf $HOME/.local/share/Trash/files/*
  rm -rf $HOME/.local/share/Trash/files/.*
  rm -rf $HOME/.local/share/Trash/info/*
  rm -rf $HOME/.local/share/Trash/info/.*
}

function backup(){
  mv "$1" "$1".backup
}

tn(){
  tmux new -n "$1" -s "$1"
}

_killall_processes(){
  local processes
  processes=($(ps -e -o comm= | sort -u))
  compadd "$@" -- $processes
}

# terminal_auto_proxy
function proxy_on() {
	export https_proxy="127.0.0.1:7897"
	echo -e "terminal proxy is enabled"
}

function proxy_off(){
	unset http_proxy https_proxy
	echo -e "terminal proxy is disabled"
}

# wine 
function w_pure(){
	nohup wine $HOME/App/PureRef-2.0.3_x64/PureRef.exe & 
}

function wechat(){
	nohup $HOME/App/WeChat-1.0.0.241-x86_64.AppImage &
}


					
#custom alias
alias gaa="git add" 
alias gst="git status"
alias c=clear
alias nvi="nvim"
alias notes="nvim $HOME/Desktop/note.md"
alias lg='lazygit'
alias sudo='sudo -E'
alias mpv='mpv --geometry=12800x700'
alias dnote=generate_and_open_daily_note
alias pureref="cd $HOME/App/ && nohup ./PureRef-2.0.2_x64.Appimage"
