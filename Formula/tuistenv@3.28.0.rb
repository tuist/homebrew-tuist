class TuistenvAT3280 < Formula
    desc "Managing Tuist versions"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/4.79.7.tar.gz"
    sha256 "68f673972e4b0a5119de16ade9076ba9810833791047f4404e7b92d32ea5a6b8"
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
  
