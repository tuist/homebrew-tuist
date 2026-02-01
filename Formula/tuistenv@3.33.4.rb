class TuistenvAT3334 < Formula
    desc "Managing Tuist versions"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/4.134.0.tar.gz"
    sha256 "96ccdd5a8f6b63d8ac15bfe7b11715675a7d0d57827baa55aa594979b3f984ba"
    license "MIT"
    head "https://github.com/tuist/tuist.git", branch: "main"
  
    # https://github.com/tuist/tuist/blob/3.33.4/.xcode-version#L1
    depends_on xcode: ["15.0.0", :build]
  
    # https://github.com/tuist/tuist/blob/3.33.4/Package.swift#L14
    depends_on macos: :monterey
  
    def install
      # https://github.com/tuist/tuist/blob/3.33.4/.github/workflows/tuist.yml#L83
      system "swift", "build",
        "--configuration", "release",
        "--product", "tuistenv",
        "--disable-sandbox"
  
      bin.install ".build/release/tuistenv"
    end
  end
  
