# Greet
fastfetch

# P10K
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Flags
export LANG=en_US.UTF-8
export ARCHFLAGS='-arch arm64'

# Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=()
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 1
zstyle ':omz:update' verbosity default
ENABLE_CORRECTION=true
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
setopt NO_NOMATCH
unsetopt correct
unsetopt correct_all

# Terminal
touch ~/.hushlogin

# Path
export PATH="/opt/homebrew/bin:${PATH}"
export PATH="/Users/berkay/.cargo/bin:${PATH}"
export PATH="/opt/homebrew/opt/postgresql@18/bin:$PATH"
export PATH="/Users/berkay/.local/bin:$PATH"
# export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Compiler flags
# export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"

# Homebrew
export HOMEBREW_NO_ENV_HINTS=1

# Projects
export PROJECTS="${HOME}/projects"
export TOKENOVERFLOW_HOME="${PROJECTS}/tokenoverflow"
source $TOKENOVERFLOW_HOME/scripts/src/includes.sh

# Projects: Sumscribe
# source "${PROJECTS}/sumscribe/src/sh/sumscribe/includes.sh"

# AWS
export AWS_REGION="us-east-1"
export AWS_DEFAULT_REGION="us-east-1"
export AWS_DEFAULT_PROFILE="default"

# Aliases
source $HOME/.aliases

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Claude
export DISABLE_AUTOUPDATER=false
export FORCE_AUTOUPDATE_PLUGINS=true
export MAX_THINKING_TOKENS=63999

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> forge initialize >>>
# !! Contents within this block are managed by 'forge zsh setup' !!
# !! Do not edit manually - changes will be overwritten !!

# Add required zsh plugins if not already present
if [[ ! " ${plugins[@]} " =~ " zsh-autosuggestions " ]]; then
    plugins+=(zsh-autosuggestions)
fi
if [[ ! " ${plugins[@]} " =~ " zsh-syntax-highlighting " ]]; then
    plugins+=(zsh-syntax-highlighting)
fi

# Load forge shell plugin (commands, completions, keybindings) if not already loaded
if [[ -z "$_FORGE_PLUGIN_LOADED" ]]; then
    eval "$(forge zsh plugin)"
fi

# Load forge shell theme (prompt with AI context) if not already loaded
if [[ -z "$_FORGE_THEME_LOADED" ]]; then
    eval "$(forge zsh theme)"
fi
# <<< forge initialize <<<
