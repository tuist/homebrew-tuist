class TuistAT3364 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/3.36.4/tuist.zip"
  sha256 "ea3d7d65e530ae61ef6fedfbe7ff716e112bb80c4443bae0e6c614966d1c57fa"
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
