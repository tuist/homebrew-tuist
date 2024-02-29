class TuistAT44 < Formula
    desc "Create, maintain, and interact with Xcode projects at scale"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/releases/download/4.4.0/tuist.zip"
    sha256 "7f8365e86b9a8e47a6fbd10de6cc6f83d1ea1285cff80ad76505e21532ad3430"
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
  