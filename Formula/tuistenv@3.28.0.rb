class TuistenvAT3280 < Formula
    desc "Managing Tuist versions"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/3.42.3.tar.gz"
    sha256 "1a667eea4af48665b3b9a41d2dc918c2f9d4465e58ebdb6638cfb127a051895a"
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
  
