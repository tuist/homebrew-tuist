class TuistAT3340 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/archive/refs/tags/3.34.0.tar.gz"
  sha256 "c9d0cd9fe8ae1eee1bb43ffa59e74549fc76c311cfe55f34aeaf11635087b008"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  # https://github.com/tuist/tuist/blob/3.34.0/.xcode-version#L1
  depends_on xcode: ["14.3", :build]

  # https://github.com/tuist/tuist/blob/3.34.0/Package.swift#L14
  depends_on macos: :monterey

  def install
    # https://github.com/tuist/tuist/blob/3.34.0/.github/workflows/tuist.yml#L81
    system "swift", "build",
      "--configuration", "release",
      "--product", "tuist",
      "--disable-sandbox"

    # https://github.com/tuist/tuist/blob/3.34.0/.github/workflows/tuist.yml#L85
    system "swift", "build",
      "--configuration", "release",
      "--product", "ProjectDescription",
      "--disable-sandbox"

    # https://github.com/tuist/tuist/blob/3.34.0/Sources/TuistEnvKit/Installer/BuildCopier.swift#L13
    bin.install ".build/release/tuist"
    bin.install "Templates"
    bin.install "projects/tuist/vendor"
    bin.install ".build/release/ProjectDescription.swiftmodule"
    bin.install ".build/release/ProjectDescription.swiftdoc"
    bin.install ".build/release/libProjectDescription.dylib"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuist version")
  end
end
