# If it's not interactive, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# --- Bash prompt
source $HOME/.files/bash/prompt;

# --- Better history
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000

# --- Terminal Settings
# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
  shopt -s "$option" 2>/dev/null
done


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

export TERM=xterm-256color
set show-all-if-ambiguous on

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\W||\T\a\]$PS1"
    ;;
*)
    ;;
esac


# --- Path Exports
export PATH="$PATH:$HOME/.files/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/usr/local/go/bin"

# --- General Exports
export EDITOR="vim"
export GPG_TTY=$(tty)
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export MANROFFOPT='-c'
export LESS_TERMCAP_mb=$(
  tput bold
  tput setaf 2
)
export LESS_TERMCAP_md=$(
  tput bold
  tput setaf 6
)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(
  tput bold
  tput setaf 3
  tput setab 4
)
export LESS_TERMCAP_se=$(
  tput rmso
  tput sgr0
)
export LESS_TERMCAP_us=$(
  tput smul
  tput bold
  tput setaf 7
)
export LESS_TERMCAP_ue=$(
  tput rmul
  tput sgr0
)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"

# --- Work Settings
export MONOREPO_DIR="$HOME/mimir"

# --- bat Settings
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# --- FZF Settings
export FZF_DEFAULT_COMMAND="fd --type f --color=always"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--ansi --reverse --multi --filepath-word
  --color=dark
  --color=bg+:#4f5987,bg:#1d1f30,spinner:#39ffba,hl:#858db7
  --color=fg:#eff0f6,header:#eff0f6,info:#858db7,pointer:#ff476e
  --color=marker:#ff476e,fg+:#a5abca,prompt:#ff476e,hl+:#39ffba
  --color=gutter:#2a2d46
'

# --- ASDF settings

# Use direnv with asdf to install and maintain versions
# export PATH="$HOME/.asdf/bin:$PATH"
# eval "$(asdf exec direnv hook bash)"

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

# --- Fuck
eval $(thefuck --alias)

# --- Env settings

if [ -f "$HOME/.local_env" ]; then 
  source "$HOME/.local_env"
fi

# --- Aliases
source $HOME/.files/aliases

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ "$machine" == "Mac" ]; then
  . "$HOME/.files/bash/macrc"
fi

# # if [ "$machine" == "Linux" ]; then

# # fi

# --- Completion

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh
