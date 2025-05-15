class TuistenvAT3334 < Formula
    desc "Managing Tuist versions"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/4.50.1.tar.gz"
    sha256 "b179db4969a90dc940ee7f3b2d996fbb35b09f3cabde8f889e1ecfc82eec4c5b"
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
  
