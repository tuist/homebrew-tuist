.DEFAULT_GOAL := help

.PHONY: help
help: #     Show help information.
	@grep -E "^[a-z-]+: #" $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ": # "}; {printf "%s: %s\n", $$1, $$2}'

.PHONY: dev
dev: #      Install development dependencies and initialize them.
	@bundle install
	@bundle exec tapioca init

.PHONY: lint
lint: #     Lint the code.
	@bundle exec rubocop

.PHONY: aliases
aliases: #  Generate aliases.
	@ruby makefile.rb aliases
