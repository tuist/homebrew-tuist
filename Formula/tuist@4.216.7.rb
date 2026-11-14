class TuistAT42167 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/4.216.7/tuist.zip"
  sha256 "e1363ea2b43513824c6e24d03ef7bd75fb1c05fa4d72a0cae393c2e3e9e42b8d"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  depends_on macos: :monterey

  preserve_rpath

  def install
    bin.install "tuist"
    lib.install "ProjectDescription.framework"
    lib.install "ProjectDescription.framework.dSYM"
    share.install "Templates"
    bin.install "tuist-cas-proxy"
    lib.install "libtuist_cas_plugin.dylib"
  end

  test do
    assert_match version.to_s, shell_output("${bin}/tuist version")
  end
end
