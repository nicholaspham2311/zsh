#! /usr/bin/env zsh

export FZF_DEFAULT_COMMAND='fd --type f --follow --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=fg:-1,bg:-1,hl:#dcd2ce
--color=fg+:-1,bg+:#dcd2ce,hl+:-1
--color=info:-1,prompt:-1,pointer:-1
--color=marker:-1,spinner:-1,header:-1'

alias ej="emoji-fzf preview --prepend | fzfDown | awk '{ print \$1 }' | wl-copy"

fzfDown() { fzf --height 50% --min-height 20 --bind ctrl-/:toggle-preview "$@" --reverse }

function f() {
    local file
    file=$(fd . -t f --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown --preview 'bat --style=numbers --color=always --line-range :500 {}')
    if [ ! -z "$file" ]
    then
        nvim "$file"
    fi
}

function F() {
    local file
    file=$(fd . $HOME -t f --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown --preview 'bat --style=numbers --color=always --line-range :500 {}')
    if [ ! -z "$file" ]
    then
        nvim "$file"
    fi
}

function fh() {
    local file
    file=$(fd . -t f --hidden --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown --preview 'bat --style=numbers --color=always --line-range :500 {}')
    if [ ! -z "$file" ]
    then
        nvim "$file"
    fi
}

function Fh() {
    local file
    file=$(fd . $HOME -t f --hidden --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown --preview 'bat --style=numbers --color=always --line-range :500 {}')
    if [ ! -z "$file" ]
    then
        nvim "$file"
    fi
}

function c () {
    local dir
    dir=$(fd -t d . --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown) &&
    cd "$dir"
    ls
}

function C () {
    local dir
    dir=$(fd -t d . $HOME --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown) &&
    cd "$dir"
    ls
}

function ch () {
    local dir
    dir=$(fd -t d --hidden --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown) &&
    cd "$dir"
    ls
}

function Ch () {
    local dir
    dir=$(fd -t d . $HOME --hidden --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown) &&
    cd "$dir"
    ls
}

function o() {
    local object
    object=$(fd . --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown --preview 'bat --style=numbers --color=always --line-range :500 {}')
    if [ ! -z "$object" ]
    then
        xdg-open "$object"
    fi
}

function O() {
    local object
    object=$(fd . $HOME --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown --preview 'bat --style=numbers --color=always --line-range :500 {}')
    if [ ! -z "$object" ]
    then
        xdg-open "$object"
    fi
}

function oh() {
    local object
    object=$(fd . --hidden --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown --preview 'bat --style=numbers --color=always --line-range :500 {}')
    if [ ! -z "$object" ]
    then
        xdg-open "$object"
    fi
}

function Oh() {
    local object
    object=$(fd . $HOME --hidden --exclude .git --exclude undodir --exclude gems --exclude node_modules --exclude go --exclude app | fzfDown --preview 'bat --style=numbers --color=always --line-range :500 {}')
    if [ ! -z "$object" ]
    then
        xdg-open "$object"
    fi
}

fman() {
    man -k . | fzf -q "$1" --prompt='man> '  --preview $'echo {} | tr -d \'()\' | awk \'{printf "%s ", $2} {print $1}\' | xargs -r man | col -bx | bat -l man -p --color always' | tr -d '()' | awk '{printf "%s ", $2} {print $1}' | xargs -r man
}

# @todo [zsh] af if not have session create new like fzf session switch tmux plugin
# @body @thuanpham2311
# why `af`? cuz like the tmux command fzf session switch hold ctrl + a + f
af() {
  local session
  session=$(tmux list-sessions -F "#{session_name}" | fzfDown) &&
  tmux switch-client -t "$session"
}

source ~/dotfiles/zsh/functions/fzf-tab/fzf-tab.plugin.zsh
source ~/dotfiles/zsh/functions/fzf-zsh-completions/fzf-zsh-completions.plugin.zsh
