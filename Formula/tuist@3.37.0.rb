class TuistAT3370 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/3.37.0/tuist.zip"
  sha256 "86606d13ec1b6c2d74797dee1e9c7b9fb14c42eb23b38c007f02797c6401f9d3"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  depends_on macos: :monterey

  preserve_rpath

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
