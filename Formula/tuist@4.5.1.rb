class TuistAT451 < Formula
    desc "Create, maintain, and interact with Xcode projects at scale"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/releases/download/4.5.1/tuist.zip"
    sha256 "ec8880ee09af8d21486e0b70ab2d880cbec04210482c47474dcd06150fb8d48d"
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
  