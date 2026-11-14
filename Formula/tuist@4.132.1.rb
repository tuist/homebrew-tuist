class TuistAT41321 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/archive/refs/tags/4.213.0.tar.gz"
  sha256 "b8f05af7a29d4966ea46d1c8f6d8689b6f060e4b3e1dd25b8f489ef4fc860da4"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  depends_on macos: :monterey

  preserve_rpath

  def install
    bin.install "tuist"
    lib.install "ProjectDescription.framework"
    lib.install "ProjectDescription.framework.dSYM"
    share.install "Templates"
  end

  test do
    assert_match version.to_s, shell_output("${bin}/tuist version")
  end
end
