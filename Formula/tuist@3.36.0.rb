class TuistAT3360 < Formula
    desc "Create, maintain, and interact with Xcode projects at scale"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/4.20.0.tar.gz"
    sha256 "4e7e63251656b3c1d7f1f0aadafdf3b300b65b4e37033a1ebab767556c0d266c"
    license "MIT"
    head "https://github.com/tuist/tuist.git", branch: "main"
  
    depends_on macos: :monterey
  
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
  