# `aws-console`

Opens AWS Console session in Firefox browser, using dedicated container.

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

## Background

Based on `launcher.sh` script from https://github.com/honsiorovskyi/open-url-in-container
