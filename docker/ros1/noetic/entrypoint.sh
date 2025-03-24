#!/bin/bash
# Entrypoint to the TRG cibtauber

set -e

# Initialize Conda for this shell session
source /opt/conda/etc/profile.d/conda.sh
conda activate trg-env

# Trust the mounted repo path to avoid Git "dubious ownership" error
git config --global --add safe.directory /home/TRG-planner


# Append Git prompt and PS1 config to .bashrc if not already present
BASHRC="/root/.bashrc"  # Change to /home/youruser/.bashrc if needed

if ! grep -q "git-prompt.sh" "$BASHRC"; then
cat << 'EOF' >> "$BASHRC"

# Custom Git-aware prompt
if [ -f "/usr/share/git/git-prompt.sh" ]; then
    source "/usr/share/git/git-prompt.sh"
elif [ -f "/etc/bash_completion.d/git-prompt" ]; then
    source "/etc/bash_completion.d/git-prompt"
fi

# ANSI colors
red="\[\033[0;31m\]"
green="\[\033[0;32m\]"
yellow="\[\033[0;33m\]"
blue="\[\033[0;34m\]"
reset="\[\033[0m\]"
bright_black="\[\033[1;30m\]"
bright_red="\[\033[1;31m\]"
bright_green="\[\033[1;32m\]"
bright_yellow="\[\033[1;33m\]"
bright_blue="\[\033[1;34m\]"
bright_magenta="\[\033[1;35m\]"
bright_cyan="\[\033[1;36m\]"
bright_white="\[\033[1;37m\]"

# Prompt format with conda and git branch
PS1="🐳 (${bright_magenta}$PROJECT_NAME)\n"
PS1+="${bright_green}\u${reset}"                   # user
PS1+=":${bright_blue}\w${reset}"                   # path
PS1+='$( __git_ps1 " ['"${bright_cyan}"'%s'"${reset}"']" )'  # branch
PS1+=" \$ "

export PS1
EOF
fi

echo "TRG container is ready!"

# Start an interactive shell inside the env
exec bash
