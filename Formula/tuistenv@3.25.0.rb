class TuistenvAT3250 < Formula
  desc "Managing Tuist versions"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/archive/refs/tags/3.25.0.tar.gz"
  sha256 "aaf70f68dc81d9a5bd56ea63b635507d87d131d25733691f85315aa0c7c13242"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  # https://github.com/tuist/tuist/blob/3.25.0/.xcode-version#L1
  depends_on xcode: ["14.3.1", :build]

  # https://github.com/tuist/tuist/blob/3.25.0/Package.swift#L14
  depends_on macos: :monterey

  def install
    # https://github.com/tuist/tuist/blob/3.25.0/.github/workflows/tuist.yml#L83
    system "swift", "build",
      "--configuration", "release",
      "--product", "tuistenv",
      "--disable-sandbox"

    bin.install ".build/release/tuistenv"
  end
end
