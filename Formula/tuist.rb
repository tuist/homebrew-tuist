class Tuist < Formula
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"
  url "https://github.com/tuist/tuist/releases/download/3.17.0/tuist.zip"
  sha256 "43c551f9c9fd729b989218f9e2ebc0bebd44af1f888119d398aac829d0f7231c"
  license "MIT"
  head "https://github.com/tuist/tuist/", branch: "main"

  depends_on macos: :monterey

  def install
    bin.install Dir["*"]
  end

  test do
    Open3.popen3("#{bin}/tuist", "version") do |_, stdout, _|
      assert_match "3.17.0", stdout.read
    end
  end
end
