# Homebrew [Tuist](https://github.com/tuist/tuist) Formula

This repository contains a formula for developers who prefer Homebrew to manage Tuist installation.

```sh
$ brew tap tuist/tuist
$ brew install tuist
```

To change the current version of Tuist use the `link` subcommand with the `--overwrite` flag.

```sh
$ brew install tuist@3.18 tuist@4.6.0
$ brew link --overwrite tuist@4.6.0
```

## License

The formula is distributed under the [MIT License](./LICENSE).
