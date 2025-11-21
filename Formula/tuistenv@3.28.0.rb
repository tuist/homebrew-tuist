class TuistenvAT3280 < Formula
    desc "Managing Tuist versions"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/4.106.2.tar.gz"
    sha256 "13a4f1d8e079b229f5f78c9fd82a07e19e3f2b36420d095530a5fa1f25e6926a"
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
  
