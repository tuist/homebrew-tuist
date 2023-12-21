class TuistAT3362 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/3.36.2/tuist.zip"
  sha256 "3dc5686c4c101adf4851a036a3490bcfd4e90b378d5ed026c6b95599d55be7ab"
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
