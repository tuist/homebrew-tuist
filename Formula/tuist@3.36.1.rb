class TuistAT3361 < Formula
    desc "Create, maintain, and interact with Xcode projects at scale"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/releases/download/3.36.1/tuist.zip"
    sha256 "828875b9c389ee567fd187972a43242f27f1b08a096704afdd1d9ff3cf40edbc"
    license "MIT"
    head "https://github.com/tuist/tuist.git", branch: "main"
  
    depends_on macos: :monterey

  preserve_rpath
  
    def install
      bin.install "tuist"
      lib.install "ProjectDescription.framework"
      lib.install "ProjectDescription.framework.dSYM"
      lib.install "ProjectAutomation.xcframework"
      lib.install "ProjectAutomation.xcframework.dSYM"
      share.install "Templates"
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}/tuist version")
    end
  end
  