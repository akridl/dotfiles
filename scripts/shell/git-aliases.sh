
###############
# Git aliases #
###############

#
# This script is included in the ~/.zshrc
#

# git add
alias ga="git add"
alias gaa="ga -A"

# git branch
alias gb="git branch"

# git cherry-pick
alias gcp="git cherry-pick"

# git clone
alias gcl="git clone"

# git commit
alias gc="git commit"
alias gca="gc --amend"
alias gcm="gc -m"

# git diff
alias gd="git diff"
alias gds="gd --staged"

# git fetch
alias gf="git fetch --all"

# git init
alias gi="git init"

# git log
alias gl="git log"

# git merge
alias gm="git merge --ff-only"
alias gmom="gm origin/main"
alias gmum="gm upstream/main"
alias gmoms="gm origin/master"
alias gmums="gm upstream/master"

# git push
alias gp="git push"
alias gpf="gp --force-with-lease"

# git rebase
alias greb="git rebase"

# git remote
alias grem="git remote"
alias gremao="git remote add origin"
alias gremou="git remote rename origin upstream"

# git remove
alias grm="git rm"

# git restore
alias gr="git restore"
alias grs="gr --staged"

# git stash
alias gst="git stash"
alias gstl="gst list"

# git status
alias gs="git status"
alias gss="gs -s"

# git switch
alias gsw="git switch"

# git tag
alias gt="git tag"

# aliases to git aliases
alias gh="git hist"

