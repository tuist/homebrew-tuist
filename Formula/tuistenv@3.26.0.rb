class TuistenvAT3260 < Formula
  desc "Managing Tuist versions"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/archive/refs/tags/4.51.0.tar.gz"
  sha256 "e91b904671ff5974f96241e7362758b263e48d0a38e6944617571a0972a1c2ae"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  # https://github.com/tuist/tuist/blob/3.26.0/.xcode-version#L1
  depends_on xcode: ["14.3.1", :build]

  # https://github.com/tuist/tuist/blob/3.26.0/Package.swift#L14
  depends_on macos: :monterey

  def install
    # https://github.com/tuist/tuist/blob/3.26.0/.github/workflows/tuist.yml#L83
    system "swift", "build",
      "--configuration", "release",
      "--product", "tuistenv",
      "--disable-sandbox"

    bin.install ".build/release/tuistenv"
  end
end
