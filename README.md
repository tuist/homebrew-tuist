# Homebrew [Tuist](https://github.com/tuist/tuist/) formula

At the start, the maintainers of Tuist [wanted to implement](https://github.com/Homebrew/homebrew-core/pull/30816) support for Homebrew. But they soon [changed their minds](https://github.com/tuist/tuist/issues/123#issuecomment-428535188) and [removed the mention of installation](https://github.com/tuist/tuist/pull/1307#issue-612478456) using Homebrew from the documentation. This repository is dedicated to those who still want to use Tuist under Homebrew.

> Note: The Tuist team didn't just drop support for Homebrew; they have their own distribution system. Unfortunately, using the formula may result in losing [some of the functionality](https://docs.tuist.io/guides/version-management).

```sh
$ brew tap vanyauhalin/tuist
$ brew install tuist
```

Feel free to remind me in [issues](https://github.com/vanyauhalin/homebrew-tuist/issues) to update the formula if I forget.

When testing the formula, `Open3.popen3` is used instead of `shell_output`. This is because when executing `version` command, Tuist tries to create a directory for configuration files. However, the runner does not have sufficient rights to create the directory, which causes the test to fail with an error.
