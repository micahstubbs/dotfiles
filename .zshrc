# Path to your oh-my-zsh installation.
export ZSH=/Users/m/.oh-my-zsh

#
#
#
export GOPATH=$HOME/workspace/go-workspace
export SPARK_HOME=/Users/m/workspace/spark/spark-2.0.0-bin-hadoop2.7
export H2O_HOME=/Users/m/workspace/h2o-3
export NEO4J_HOME=/Users/m/Documents/Neo4j
export MAVEN_OPTS='-XX:MaxPermSize=1G -Xms2G -Xmx2G'
export ANDROID_HOME=$HOME/Library/Android/sdk
export LUNA_REPO_PATH=/Users/m/workspace/luna/luna
export LUNA_HOME=$LUNA_REPO_PATH/stdlib

# add things to my $PATH
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="/Users/m/.local/bin:$PATH"
export PATH="$LUNA_REPO_PATH/dist/bin/public/luna:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

export PATH="$PATH:/Library/TeX/texbin"

# added by Anaconda3 4.3.1 installer
export PATH="/Users/m/anaconda3/bin:$PATH"
#

# add npm-global hidden directory to the PATH
export PATH="/Users/m/.npm-global/bin:$PATH"
#
export PATH=~/.npm-global/bin:$PATH
export PATH=/Users/m/.local/bin:$PATH
#

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
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git jira)
plugins=(git)

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
alias gpn='git push --no-verify'
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
alias dkc="docker-compose"
alias lad="la -d */"
alias gs="git status"

# some blockbuilder ecosystem aliases
alias bb="/Users/m/workspace/blockbuilder"
alias bbs="/Users/m/workspace/blockbuilder-search"
alias bbsi="/Users/m/workspace/blockbuilder-search-index"
alias bbgs="/Users/m/workspace/blockbuilder-graph-search" 
alias bbgsui="/Users/m/workspace/blockbuilder-graph-search-ui" 

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
# td() {
#   timidity "$1"
# }

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
  # npm run lint
  yarn run lint -- --fix
}

lintlocal() {
  # npm run lint
  node_modules/.bin/eslint js/admin --rulesdir eslint-rules --fix
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

# nvm is useful but slows down new iterm tab creation (session creation)
# use only if the slowdown is worth it
export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/m/Downloads/apps/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/m/Downloads/apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/m/Downloads/apps/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/m/Downloads/apps/google-cloud-sdk/completion.zsh.inc'; fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
# [[ -f /Users/m/workspace/serverless-screenshot/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/m/workspace/serverless-screenshot/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
# [[ -f /Users/m/workspace/serverless-screenshot/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/m/workspace/serverless-screenshot/node_modules/tabtab/.completions/sls.zsh
