class TuistenvAT3340 < Formula
    desc "Managing Tuist versions"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/4.111.1.tar.gz"
    sha256 "5ce5a2189d285279a8aa77cc438938249fa96f321c6ae7ad9a5fe27126b9e6f6"
    license "MIT"
    head "https://github.com/tuist/tuist.git", branch: "main"
  
    # https://github.com/tuist/tuist/blob/3.34.0/.xcode-version#L1
    depends_on xcode: ["14.3", :build]
  
    # https://github.com/tuist/tuist/blob/3.34.0/Package.swift#L14
    depends_on macos: :monterey
  
    def install
      # https://github.com/tuist/tuist/blob/3.34.0/.github/workflows/tuist.yml#L83
      system "swift", "build",
        "--configuration", "release",
        "--product", "tuistenv",
        "--disable-sandbox"
  
      bin.install ".build/release/tuistenv"
    end
  end
  
