class TuistAT3334 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/archive/refs/tags/4.90.0.tar.gz"
  sha256 "8cfcc59a69e1300b7012c97acc6d431dcbf294e137d4063552ec6555dbd52ed9"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  # https://github.com/tuist/tuist/blob/3.33.4/.xcode-version#L1
  depends_on xcode: ["15.0.0", :build]

  # https://github.com/tuist/tuist/blob/3.33.4/Package.swift#L14
  depends_on macos: :monterey

  def install
    # https://github.com/tuist/tuist/blob/3.33.4/.github/workflows/tuist.yml#L81
    system "swift", "build",
      "--configuration", "release",
      "--product", "tuist",
      "--disable-sandbox"

    # https://github.com/tuist/tuist/blob/3.33.4/.github/workflows/tuist.yml#L85
    system "swift", "build",
      "--configuration", "release",
      "--product", "ProjectDescription",
      "--disable-sandbox"

    # https://github.com/tuist/tuist/blob/3.33.4/Sources/TuistEnvKit/Installer/BuildCopier.swift#L13
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
