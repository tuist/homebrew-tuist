class TuistenvAT3280 < Formula
    desc "Managing Tuist versions"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/3.28.0.tar.gz"
    sha256 "e480d563c983b6f2aef89cf6635f7212cc24a0be4fd72302a7e8fcb437513bd1"
    license "MIT"
    head "https://github.com/tuist/tuist.git", branch: "main"
  
    # https://github.com/tuist/tuist/blob/3.28.0/.xcode-version#L1
    depends_on xcode: ["14.3.1", :build]
  
    # https://github.com/tuist/tuist/blob/3.28.0/Package.swift#L14
    depends_on macos: :monterey
  
    def install
      # https://github.com/tuist/tuist/blob/3.28.0/.github/workflows/tuist.yml#L83
      system "swift", "build",
        "--configuration", "release",
        "--product", "tuistenv",
        "--disable-sandbox"
  
      bin.install ".build/release/tuistenv"
    end
  end
  
