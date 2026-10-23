### First time setup
Configure User details *locally*
```shell
git config --local user.name 2oji
git config --local user.email 169069745+2oji@users.noreply.github.com

git config --local commit.gpgsign true
git config --local tag.gpgSign true
```
### Set GPG keys
If keys are valid, otherwise create a new GPG key
```shell
gpg --list-secret-keys --keyid-format=long
git config --local user.signingkey <3AA5C3437XXXXXBD2>
```

>[!TIP]
> **For Verified Signatures**
>```shell
> export GPG_TTY=$(tty)`**
>```
