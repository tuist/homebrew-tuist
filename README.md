# Homebrew [Tuist](https://github.com/tuist/tuist) Formula

At the start, the maintainers of Tuist [wanted to implement](https://github.com/Homebrew/homebrew-core/pull/30816) support for Homebrew. But they soon [changed their minds](https://github.com/tuist/tuist/issues/123#issuecomment-428535188) and [removed the mention of installation](https://github.com/tuist/tuist/pull/1307#issue-612478456) using Homebrew from the documentation. This repository is dedicated to those [who still want](https://github.com/tuist/tuist/discussions/5033) to use Tuist under Homebrew.

Feel free to remind me in [issues](https://github.com/vanyauhalin/homebrew-tuist/issues) to update the formula if I forget.

## Installation

> **Warning** 
> Building Tuist, TuistEnv from sources on [M1](https://www.wikiwand.com/en/Apple_M1) may take up to 8-10 minutes.

### Using [TuistEnv](https://docs.tuist.io/guides/version-management) as Version Manager

```sh
$ brew tap vanyauhalin/tuist
$ brew install tuistenv
```

After installation, allow `tuistenv` to initialize the environment.

```sh
$ tuistenv
```

### Using Homebrew as Version Manager

```sh
$ brew tap vanyauhalin/tuist
$ brew install tuist
```

To change the current version of Tuist use the `link` subcommand with the `--overwrite` flag.

```sh
$ brew install tuist@3.18 tuist@3.19
$ brew link --overwrite tuist@3.19
```

## Details

The formula lacks tests because when running any command, Tuist tries to create a directory for configuration files. However, the runner does not have sufficient permissions to create the directory, which causes the test to fail with an error. I'm unsure how to isolate the run.

## License

The formula is distributed under the [MIT License](./LICENSE).
