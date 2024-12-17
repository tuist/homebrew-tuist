class TuistenvAT3334 < Formula
    desc "Managing Tuist versions"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/4.38.0.tar.gz"
    sha256 "0fa04466f5fe8c5551ef9bb5421263484c3bd5f30e85816213d044a3404b0520"
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
  
