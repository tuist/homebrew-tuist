class TuistenvAT3250 < Formula
  desc "Managing Tuist versions"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/archive/refs/tags/4.65.5.tar.gz"
  sha256 "8b8bc11f07a795d57726e78272b48fab85464971071ae2cea0b4c2a26a2f6d8b"
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
