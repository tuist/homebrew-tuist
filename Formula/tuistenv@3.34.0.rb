class TuistenvAT3340 < Formula
    desc "Managing Tuist versions"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/4.83.0.tar.gz"
    sha256 "c2a24a91910f656dd10261f46e8a251ec6a22c8f40e5e2176fedfd23dbf0c118"
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
  
