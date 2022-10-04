#!/usr/bin/env bash
# https://opensource.com/article/18/3/creating-bash-completion-script

function _aws_console_profiles() {
  COMPREPLY=($(compgen -W "$(aws-vault list --profiles | xargs)" "${COMP_WORDS[1]}"))
}

complete -F _aws_vault_profiles aws-console
