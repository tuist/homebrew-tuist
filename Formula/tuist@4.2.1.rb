class TuistAT421 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/4.2.1/tuist.zip"
  sha256 "b9567d233a13dc0877296a47490f620016c853264343d6abf20c0d44ae54d8aa"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  depends_on macos: :monterey

  def install
    bin.install "tuist"
    lib.install "ProjectDescription.framework"
    lib.install "ProjectDescription.framework.dSYM"
    lib.install "ProjectAutomation.xcframework"
    lib.install "ProjectAutomation.xcframework.dSYM"
    share.install "Templates"
  end

  test do
    assert_match version.to_s, shell_output("${bin}/tuist version")
  end
end
