class TuistAT460 < Formula
    desc "Create, maintain, and interact with Xcode projects at scale"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/releases/download/4.6.0/tuist.zip"
    sha256 "ee63f1fe8d150797dd6e9f6a50bc79db0665e54bff878bb589e9733dcc31948e"
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
  
