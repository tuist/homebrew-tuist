class TuistAT4430 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/4.43.0/tuist.zip"
  sha256 "696da7c820a8de2c587a8f4b4f71d253785e9258b4dc152445bead975ac98132"
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
