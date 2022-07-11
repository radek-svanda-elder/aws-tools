# `aws-bash`

Opens new AWS session in bash shell.

## Dependencies

* bash
* [aws-vault](../aws-vault)

## Usage

```
aws-vault add sandbox
aws-bash sandbox
```

## Bash integration

### Command completion

```
PROFILES="$(aws-vault list --profiles | xargs)"
complete -W "$PROFILES" aws-bash
```

### Prompt prefix

Adds yellow-ish name of the current AWS profile in front of bash prompt

```bash
__toolbox_prompt () {
  if [ -n "$AWS_VAULT" ]; then
    PS1="$(printf "\[\033[1;33;1;43m\]<aws:%s>\[\033[0m\]%s" $AWS_VAULT) $PS1"
  fi
}
```
