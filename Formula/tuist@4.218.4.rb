class TuistAT42184 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/4.218.4/tuist.zip"
  sha256 "b34fd5135a7b5b6af04d6667148fcf0fd9bfaf60fea2cb8a15bc8fe84cda9812"
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
