# Homebrew [Tuist](https://github.com/tuist/tuist) Formula

This repository contains a formula for developers who prefer Homebrew to manage Tuist installation.

```sh
$ brew tap tuist/tuist
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
