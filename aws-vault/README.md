# aws-vault

Recommended tool for managing AWS secrets

See https://github.com/99designs/aws-vault

## SSO

[You can use `aws-vault` with SSO](https://github.com/99designs/aws-vault/blob/master/USAGE.md#aws-single-sign-on-aws-sso)

In `.aws/config`

```
[profile profilename]
sso_start_url=https://dws-tech.awsapps.com/start
sso_region=eu-west-2
sso_account_id={account id}
sso_role_name={rola name}
region=eu-west-2
```
