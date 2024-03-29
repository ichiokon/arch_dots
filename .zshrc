export GLFW_IM_MODULE=ibus

export TERM=xterm-256color
# ///// my alias //////
alias winzip='unzip -O CP932'
alias vim='nvim'
alias gi='lazygit'
alias fopen='xdg-open'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias rm='trash-put'
alias dcopy='pwd | pbcopy'
alias lgit='lazygit'
alias trj='trans {ja=en}'
alias tre='trans {en=ja}'
alias pwgen_all='pwgen -ncy 15 1'
alias cdm='cd $NOWDIR'
# /////////////////////

# ///// Histroy //////
HISTFILE=~/.zsh_history
HISTSIZE=999999
SAVEHIST=999999
# ////////////////////


# ////// fzf ////////////////
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
export FZF_DEFAULT_OPTS='--height 70% --reverse --border'

fbr() {
  local branches branch
  branches=$(git --no-pager branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

alias catfzf="fzf --preview 'head -100 {}' | xargs cat T |pbcopy"
# ///////////////////////////

# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/work/bin:/usr/local/bin:$PATH
export PATH=$HOME/work/app/rofi-translate:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract autojump web-search python fzf zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ///// ranger setup/////
#

ranger() { [ -n "$RANGER_LEVEL" ] && exit || LESS="$LESS -+F -+X" command ranger "$@"; }
[ -n "$RANGER_LEVEL" ] && PS1="(RANGER) $PS1"

# ///////////////////////
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off


# ///// git /////
# fbr ブランチ切り替え
# fbr - checkout git branch

fbr() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# /////neofetch/////////////
clear
pfetch|lolcat
#neofetch --w3m ~/Pictures/god3.jpeg
#source /home/kd/work/temp/.test.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:/home/kd/.spicetify
export NOW=`date "+%Y%m%d"`
export NOWDIR=~/work_now/${NOW}

if [ -e $NOWDIR ]
  then
    echo "😋😋😋 DonwloadDir is $NOWDIR" | lolcat
else
    mkdir $NOWDIR
    rm -rf ~/Downloads
    ln -s $NOWDIR ~/Downloads
fi

if [ ! -e ~/Downloads ]
  then
    ln -s $NOWDIR ~/Downloads
fi

/home/kd/dots/.config/img/rotation.sh 1>/dev/null
xmodmap ~/.Xmodmap 2>/dev/null

# rgrep "*.txt" "hoge"
function rgrep() {
    grep -ainr --include=$1 $2
}

# ogrep "*.c" "hoge" →　gF
function ogrep() {
    grep -ainr --include=$1 $2 | vim -R -
}
