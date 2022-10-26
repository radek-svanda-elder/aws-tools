__aws_bash_prompt () {
  if [ -n "$AWS_VAULT" ]; then
    if [ "$AWS_SESSION_EXPIRATION" \< "$(date -u -Iseconds)" ]; then
      tmpvault=$AWS_VAULT
      tmpenv="$(AWS_VAULT="" aws-session $tmpvault)"
      export `echo $tmpenv`
    fi

    # terminal colors:
    # 0 	black
    # 1 	red
    # 2 	green
    # 3 	yellow
    # 4 	blue
    # 5 	magenta
    # 6 	cyan
    # 7 	white    

    OFFSET=$(( $(cksum -a crc <<< $AWS_VAULT | awk '{print $1}') % 5 ))
    FG=$(( $OFFSET + 32 ))
    BG=$(( $OFFSET + 42 ))
    PS1="$(printf "\[\033[1;%s;1;%sm\]<aws:%s>\[\033[0m\]%s" $FG $BG $AWS_VAULT) $PS1"
  fi
}

if [[ ! $PROMPT_COMMAND == *"__aws_bash_prompt"* ]]; then
  PROMPT_COMMAND="${PROMPT_COMMAND};__aws_bash_prompt"
fi
