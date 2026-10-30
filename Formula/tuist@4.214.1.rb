class TuistAT42141 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/4.214.1/tuist.zip"
  sha256 "c9fb90582126d30380e9348da2c84d9c4ab08d59cded454f6bd8ef60bd93c759"
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
