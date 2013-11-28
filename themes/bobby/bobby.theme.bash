#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${bold_red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX="${purple}( "
SCM_THEME_PROMPT_SUFFIX="${purple})"

GIT_THEME_PROMPT_DIRTY=" ${bold_red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX="${purple}("
GIT_THEME_PROMPT_SUFFIX="${purple})"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

# enable color in the terminal bash shell
export CLICOLOR=1

# enables color for iTerm
export TERM=xterm-color

export LSCOLORS="cxfxcxdxbxegedabagacgf"

function prompt_command() {
	PS1="\n${blue}\u ${green}\w $(scm_prompt_info)\n${bold_red}->${reset_color} "
}

PROMPT_COMMAND=prompt_command;