class TuistenvAT3240 < Formula
  desc "Managing Tuist versions"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/archive/refs/tags/4.30.0.tar.gz"
  sha256 "3f134efa4f9f25b6ff51d7319a6ba62608723e7d2d4194fcdcc67cc7d70a46ee"
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
