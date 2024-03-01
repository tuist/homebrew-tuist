source "https://rubygems.org"

group :development do
  gem "rubocop", "~> 1.52"
  gem "semantic", "~> 1.6"
  gem "sorbet-static", "~> 0.5.10924"

  # Unfortunately, Sorbet only supports Darwin and Linux-based systems.
  # Additionally, it doesn't support Linux on ARM64, which may be used in a
  # Docker VM on Mac, for example.
  #
  # https://github.com/sorbet/sorbet/issues/4011
  # https://github.com/sorbet/sorbet/issues/4119
  install_if -> { RUBY_PLATFORM =~ /darwin/ || RUBY_PLATFORM =~ /x86_64/ } do
    gem "sorbet", "~> 0.5.10924"
    gem "tapioca", "~> 0.12.0"
  end
end
