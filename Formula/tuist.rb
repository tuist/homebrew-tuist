class Tuist < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io"
  url "https://github.com/tuist/tuist/releases/download/3.18.0/tuist.zip"
  sha256 "afec90f79ff620821d56c3bcc361c25b7fb9bb876cceb77c0c38acc4921ff959"
  license "MIT"
  head "https://github.com/tuist/tuist", branch: "main"

  depends_on macos: :monterey

  def install
    bin.install Dir["*"]
  end
end
