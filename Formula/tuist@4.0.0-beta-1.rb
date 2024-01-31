class TuistAT400-beta-1 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/4.0.0-beta-1/tuist.zip"
  sha256 "d8c288d542c2f2f7a1dc9b3c57322c24802c897562b1ad4417be9ed155144a23"
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
