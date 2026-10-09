class TuistAT42071 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/4.207.1/tuist.zip"
  sha256 "3439fa86bc747d642ea5ca4751fe9422f0c658d242a51dbc5656947d4fe71e63"
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
