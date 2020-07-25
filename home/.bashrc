# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# prompt

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1='\[\e[0;36m\]\u@\h \w\[\e[m\]\[\e[0;32m\]$(parse_git_branch) $\[\e[m\] '

# scripts and sources

for f in ~/.scripts/*; do source $f; done

# Settings and environment

export PATH=~/.gem/ruby/:$PATH
set -o vi

source /opt/bats/share/git/contrib/completion/git-completion.bash

# Setup environment
loadenv bzx
use_clang_ib

# Aliases

alias eenv='echo $ECN_ENVIRONMENT'

alias dbs_total='~/source/db/code/bootstrap_parallel.py -d std'
alias dbs='~/source/db/code/bootstrap.py -dfq'

function line
{
    local COLUMNS="$COLUMNS"
    printf '\n'
    while ((COLUMNS-- > 0)); do
        printf '\u2500'
    done
    printf '\n\n'
}
alias list='line'

alias grept='ecn_unit_test --list | grep'
alias runt='ecn_unit_test -t'

alias gsm='~/ecn/source/system_tests/scripts/gsm_processes.py'

