# Homebrew [Tuist](https://github.com/tuist/tuist) Formula

At the start, the maintainers of Tuist [wanted to implement](https://github.com/Homebrew/homebrew-core/pull/30816) support for Homebrew. But they soon [changed their minds](https://github.com/tuist/tuist/issues/123#issuecomment-428535188) and [removed the mention of installation](https://github.com/tuist/tuist/pull/1307#issue-612478456) using Homebrew from the documentation. This repository is dedicated to those [who still want](https://github.com/tuist/tuist/discussions/5033) to use Tuist under Homebrew.

> **Note**
> Tuist team didn't just drop support for Homebrew; they have their own distribution system.

```sh
$ brew tap vanyauhalin/tuist
$ brew install tuist
```

To change the current version of Tuist use the `link` subcommand with the `--overwrite` flag.

```sh
$ brew install tuist@3.18 tuist@3.19
$ brew link --overwrite tuist@3.19
```

Feel free to remind me in [issues](https://github.com/vanyauhalin/homebrew-tuist/issues) to update the formula if I forget.

## Details

The formula lacks tests because when running any command, Tuist tries to create a directory for configuration files. However, the runner does not have sufficient permissions to create the directory, which causes the test to fail with an error. I'm unsure how to isolate the run.
