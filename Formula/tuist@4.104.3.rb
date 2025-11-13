class TuistAT41043 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/4.104.3/tuist.zip"
  sha256 "6925d8602109e21044fc57a5dccec1ee2ddbc805f8fba072a34760317fc92e51"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  depends_on macos: :monterey

  def install
    bin.install "tuist"
    lib.install "ProjectDescription.framework"
    lib.install "ProjectDescription.framework.dSYM"
    share.install "Templates"
  end

  test do
    assert_match version.to_s, shell_output("${bin}/tuist version")
  end
end
