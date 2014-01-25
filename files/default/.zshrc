# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rake git rails3 ruby gem bundler brew)

source $ZSH/oh-my-zsh.sh

## Load completions for Ruby, Git, etc.
autoload compinit
compinit
alias ls='ls -G'
alias gl='git pull'
alias gp='git push'
alias gi='git init'
alias ga='git add'
alias gc='git commit'
alias gs='git status'
alias r='rails'
alias bi='bundle install'
alias r='rake'
alias be='bundle exec'
alias rr='rake assets:precompile'
alias b='bundle'
alias rbd='rake db:migrate'
alias rrb='rake db:rollback'
#alias sbt='env JAVA_OPTS="-Xmx256m" sbt'
alias ta='tmux attach'
#
# Your previous /Users/lorenzo/.bash_profile file was backed up as /Users/lorenzo/.bash_profile.macports-saved_2012-01-17_at_20:26:45
##

# MacPorts Installer addition on 2012-01-17_at_20:26:45: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/bin/:/opt/local/bin:/opt/local/sbin:~/bin:/usr/local/bin:/usr/local/sbin:$PATH:$HOME/Qt/5.1.1/clang_64/bin:$HOME/anaconda/bin
# Customize to your needs...
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

RPROMPT='%{$fg[white]%} $(~/.rvm/bin/rvm-prompt)$(~/bin/git-cwd-info)%{$reset_color%} (!%{%B%F{cyan}%}%!%{%f%k%b%})'

PATH=$PATH:/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/mysql/bin/:~/bin:/opt/sbt/bin
[[ -s "~/.rvm/scripts/rvm" ]] && . "~/.rvm/scripts/rvm"  # This loads RVM
export EDITOR=vim
NODE_PATH=/usr/local/lib/jsctags:/usr/local/bin/
PATH=/usr/local/bin/:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


