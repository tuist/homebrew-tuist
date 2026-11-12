class TuistAT42163 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/4.216.3/tuist.zip"
  sha256 "d403096adfc6e2e2c14062a3fc45e5e3d247df82e721aa5ef0c5117670d269f5"
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
