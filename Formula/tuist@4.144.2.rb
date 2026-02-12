class TuistAT41442 < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/4.144.2/tuist.zip"
  sha256 "cdaa6a3719882a864fb9c7e313c92b2b7af6aff8878093d9ad42fc054d486f2b"
  license "MIT"
  head "https://github.com/tuist/tuist.git", branch: "main"

  depends_on macos: :monterey

  preserve_rpath

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
