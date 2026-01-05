class TuistAT3360 < Formula
    desc "Create, maintain, and interact with Xcode projects at scale"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/releases/download/3.36.0/tuist.zip"
    sha256 "3eaa5d0e472d6176f8b652897ce32a192ba6acf88507b257b7153b694ffb77b5"
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
  