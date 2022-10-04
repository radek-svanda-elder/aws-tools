# `aws-bash`

Opens new AWS session in bash shell. Logs you in when your session expires automaticaly.

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

Add to your `.bashrc`

```
. _aws-console-completion.sh
```

### Prompt prefix

Adds name of the current AWS account in front of your prompt. 
Color is based on account name.
When you session expires the prompt function logs you back in.

Add to your `.bashrc`

```
. _aws-console-prompt.sh
```
