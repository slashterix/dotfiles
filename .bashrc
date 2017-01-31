# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Make vim the default editor.
export EDITOR='vim';

# Always enable colored `grep` output.
export GREP_OPTIONS='--color=auto';

## Git Prompt ##
# Copy /usr/share/git-core/contrib/completion/git-prompt.sh to /etc/profile.d
# to enable. Read that file for setting VARs used below.

# Show colors for branch name and indicators
export GIT_PS1_SHOWCOLORHINTS=1
# Show unstaged (*) and staged (+)
export GIT_PS1_SHOWDIRTYSTATE=1
# Show if something is stashed ($)
export GIT_PS1_SHOWSTASHSTATE=1
# Show if there are untracked files (%)
export GIT_PS1_SHOWUNTRACKEDFILES=1

# User@Host:pwd $
# User@host:pwd (branch) $
export PROMPT_COMMAND='__git_ps1 "\[\033[31;1m\]\u\[\033[0m\]@\[\033[34;1m\]\h\[\033[0m\]:\[\033[33m\]\w\[\033[0m\]" " \$ "'
