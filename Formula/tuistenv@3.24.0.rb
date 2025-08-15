class TuistenvAT3240 < Formula
  desc "Managing Tuist versions"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/archive/refs/tags/4.61.1.tar.gz"
  sha256 "9935d4ff62c2b9fda097b0c1b2c5c0c06366130e2d77a0fce5663e4019731af1"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  # https://github.com/tuist/tuist/blob/3.24.0/.xcode-version#L1
  depends_on xcode: ["14.3", :build]

  # https://github.com/tuist/tuist/blob/3.24.0/Package.swift#L14
  depends_on macos: :monterey

  def install
    # https://github.com/tuist/tuist/blob/3.24.0/.github/workflows/tuist.yml#L83
    system "swift", "build",
      "--configuration", "release",
      "--product", "tuistenv",
      "--disable-sandbox"

    bin.install ".build/release/tuistenv"
  end
end
