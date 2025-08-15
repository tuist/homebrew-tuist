class TuistenvAT3280 < Formula
    desc "Managing Tuist versions"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/4.61.2.tar.gz"
    sha256 "ec439362a35994e6127bf986ba8c6bdd2a2a05496cae67ebce06a5045de397d1"
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
  
