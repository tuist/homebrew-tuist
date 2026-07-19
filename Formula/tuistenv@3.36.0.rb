class TuistenvAT3340 < Formula
    desc "Managing Tuist versions"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/4.141.0.tar.gz"
    sha256 "dd6e31d8743d9dd68927c2d8919779270daf891994cf8da84e619fad7ae7a592"
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
  
