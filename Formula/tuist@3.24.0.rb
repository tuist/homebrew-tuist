class TuistAT3240 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/archive/refs/tags/4.67.2.tar.gz"
  sha256 "1943e4b8bcbaf6305639ebf41f0b5f615bc76bedd93b81cddcd310dd07bc3599"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  # https://github.com/tuist/tuist/blob/3.24.0/.xcode-version#L1
  depends_on xcode: ["14.3", :build]

  # https://github.com/tuist/tuist/blob/3.24.0/Package.swift#L14
  depends_on macos: :monterey

  def install
    # https://github.com/tuist/tuist/blob/3.24.0/.github/workflows/tuist.yml#L81
    system "swift", "build",
      "--configuration", "release",
      "--product", "tuist",
      "--disable-sandbox"

    # https://github.com/tuist/tuist/blob/3.24.0/.github/workflows/tuist.yml#L85
    system "swift", "build",
      "--configuration", "release",
      "--product", "ProjectDescription",
      "--disable-sandbox"

    # https://github.com/tuist/tuist/blob/3.24.0/Sources/TuistEnvKit/Installer/BuildCopier.swift#L13
    bin.install ".build/release/tuist"
    bin.install "Templates"
    bin.install "projects/tuist/vendor"
    bin.install ".build/release/ProjectDescription.swiftmodule"
    bin.install ".build/release/ProjectDescription.swiftdoc"
    bin.install ".build/release/libProjectDescription.dylib"
  end
end
