# Path to your oh-my-zsh installation.
export ZSH=/Users/m/.oh-my-zsh

#
#
#
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

export PATH="$PATH:/Library/TeX/texbin"

# added by Anaconda3 4.3.1 installer
export PATH="/Users/m/anaconda3/bin:$PATH"
#
#
#

export GOPATH=$HOME/workspace/go-workspace
export SPARK_HOME=/Users/m/workspace/spark/spark-2.0.0-bin-hadoop2.7
export MEETUP_API_KEY='38a4e6d755144067253062354754e'
export H2O_HOME=/Users/m/workspace/h2o-3
export PROJECT_VODA_HOME=/Users/m/workspace/project-voda

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="xxf-m"
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git jira)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gpsu='git push --set-upstream origin $(current_branch)'
alias gw='./gradlew'

# Use sublimetext for editing config files
alias zshconfig="subl ~/.zshrc"
# alias envconfig="subl ~/Projects/config/env.sh"

# set Java version
alias setJdk6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias setJdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias setJdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

# Add env.sh
# . ~/workspace/config/env.sh

# export WORKON_HOME=~/Envs
# mkdir -p $WORKON_HOME
# source /usr/local/bin/virtualenvwrapper.sh

alias neon="~/workspace/neon/bin/neon"
alias nocors="open -a Google\ Chrome\ Canary --args --disable-web-security --user-data-dir"

# open a file in sublime text
sb() {
	subl "$1"
}

# create a file and open it in sublime text
ts() {
	touch "$1"
	subl "$1"
}

# count rows of a csv file
cr() {
  awk '{n+=1} END {print n}' "$1"
}

# play a midi file specified in the first arg with timidity
td() {
  timidity "$1"
}

# alias for npm run build
b() {
  npm run build
}

# alias for npm run build-js
bjs() {
  npm run build-js
}

# alias for npm run lint
lint() {
  npm run lint
}

# checkout a pull request locally as a branch
# args
# $1 remote 
# $2 pr# 
# $3 new branch name
pr() {
  git fetch "$1" pull/"$2"/head:"$3"
  git checkout "$3"
}

# add magic
alias enchant='git add'
alias pray='git commit -m'
alias bless='git init'
alias gaze='git status'
alias divine='git diff'
alias grimoire='git log'
alias necronomicon='git log'
alias obliterate='git reset'
alias sacrifice='git reset --hard'
alias banish='git rm'
alias exorcise='git rm --cached'
alias curse='git checkout'
alias mix='git merge'
alias conjure='git pull'
alias cast='git push'
alias smite='git push --force'
alias runes='git show'
alias teleport='git mv'
alias obtain='git fetch'
alias rise='npm run dev'
alias spells='ls -lAFh'


