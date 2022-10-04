# `aws-console`

Opens AWS Console session in Firefox browser, using dedicated container.
A color and an icon is assigned to the container based on its name.

## Dependencies

* bash
* [aws-vault](../aws-vault)
* [Firefox](https://www.mozilla.org/en-US/firefox/new/)
* [Open URL in container firefox addon](https://addons.mozilla.org/en-US/firefox/addon/open-url-in-container/)

## Usage

```
aws-vault add sandbox
aws-console sandbox
```

If used with [aws-bash](../aws-bash) you can omit the account name

```
aws-console
```

opens the same account you have active in bash in your browser.

## Shell integration

### Command completion

Add to your `.bashrc`

```
. _aws-console-completion.sh
```

By pressing `aws-console <tab>` you should get list of possible aws accounts

## Background

Based on `launcher.sh` script from https://github.com/honsiorovskyi/open-url-in-container
